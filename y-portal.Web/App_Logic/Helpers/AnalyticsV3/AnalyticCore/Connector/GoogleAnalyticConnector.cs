using Google.Apis.Analytics.v3;
using Google.Apis.Analytics.v3.Data;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;



namespace GAnalytic
{

    public static class GoogleAnalyticConnector
    {
        public static AnalyticsService Service { get; set; }

        private static void GoogleAnalyticConnectorInit(GAnalyticParam setting)
        {
            if (Service == null)
            {             
                string applicationName = setting.ProfileName;
                var configDirectory = AppDomain.CurrentDomain.RelativeSearchPath ?? AppDomain.CurrentDomain.BaseDirectory;
                string keyPath = configDirectory + @"\App_Logic\Helpers\AnalyticsV3\AnalyticCore\ApiCertificate\" + setting.CertificateName;
                string accountEmailAddress = setting.EmailAddress;
           
                var certificate = new X509Certificate2(keyPath, "notasecret", X509KeyStorageFlags.Exportable);
                var credentials = new ServiceAccountCredential(
                   new ServiceAccountCredential.Initializer(accountEmailAddress)
                   {
                       Scopes = new[] { AnalyticsService.Scope.AnalyticsReadonly }
                   }.FromCertificate(certificate));

                Service = new AnalyticsService(new BaseClientService.Initializer
                {
                    HttpClientInitializer = credentials,
                    ApplicationName = applicationName
                });

            }
        }

        public static async Task<AnalyticDataPoint> GetAnalyticsData(GAnalyticParam setting, string[] dimensions, string[] metrics, string[] sort, string[] filter, string maxresults, DateTime startDate, DateTime? endDate, int? startIndex)
        {
            try
            {
                GoogleAnalyticConnectorInit(setting);
                string profileId = setting.ProfileId;
                AnalyticDataPoint data = new AnalyticDataPoint();
                if (!profileId.Contains("ga:"))
                    profileId = string.Format("ga:{0}", profileId);

                GaData response = null;
                do
                {

                    int startIndexNum = startIndex ?? 1;
                    if (response != null && !string.IsNullOrEmpty(response.NextLink))
                    {
                        Uri uri = new Uri(response.NextLink);
                        var paramerters = uri.Query.Split('&');
                        string s = paramerters.First(i => i.Contains("start-index")).Split('=')[1];
                        startIndexNum = int.Parse(s);
                    }

                    var request = BuildAnalyticRequest(profileId, dimensions, metrics, sort, filter, maxresults, startDate, endDate, startIndexNum);
                    response = await request.ExecuteAsync();
                    data.ColumnHeaders = response.ColumnHeaders;

                    data.Rows.AddRange(response.Rows);

                }
                while (!string.IsNullOrEmpty(response.NextLink));

                return data;

            }
            catch (Exception ex) 
            {
                throw ex;
            }
        }

        public static async Task<RealtimeAnalyticDataPoint> GetRealtimeAnalyticsData(GAnalyticParam setting, string[] dimensions, string[] metrics, string[] sort, string[] filter, int? startIndex)
        {
            try
            {
                GoogleAnalyticConnectorInit(setting);
                string profileId = setting.ProfileId;
                RealtimeAnalyticDataPoint data = new RealtimeAnalyticDataPoint();
                if (!profileId.Contains("ga:"))
                    profileId = string.Format("ga:{0}", profileId);

                RealtimeData response = null;
                var request = BuildAnalyticRealtimeRequest(profileId, dimensions, metrics, sort, filter);
                response = await request.ExecuteAsync();
              
                data.ColumnHeaders = response.ColumnHeaders;
                data.Rows.AddRange(response.Rows);

                return data;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private static DataResource.GaResource.GetRequest BuildAnalyticRequest(string profileId, string[] dimensions, string[] metrics, string[] sort, string[] filter, string maxresults, DateTime startDate, DateTime? endDate, int startIndex)
        {
            DataResource.GaResource.GetRequest request = Service.Data.Ga.Get(profileId, startDate.ToString("yyyy-MM-dd"), endDate == null ? DateTime.Now.Date.ToString("yyyy-MM-dd") : Convert.ToDateTime(endDate).ToString("yyyy-MM-dd"), string.Join(",", metrics));
            request.StartIndex = startIndex;
            if (dimensions.Length > 0) request.Dimensions = string.Join(",", dimensions);
            if (sort.Length > 0) request.Sort = string.Join(",", sort);
            if (filter.Length > 0) request.Filters = string.Join(",", filter);
            if (maxresults != string.Empty) request.MaxResults = Convert.ToInt32(maxresults);
            return request;
        }

        private static DataResource.RealtimeResource.GetRequest BuildAnalyticRealtimeRequest(string profileId, string[] dimensions, string[] metrics, string[] sort, string[] filter)
        {
            DataResource.RealtimeResource.GetRequest request = Service.Data.Realtime.Get(profileId, string.Join(",", metrics));
            if (dimensions.Length > 0) request.Dimensions = string.Join(",", dimensions);
            
            return request;
        }

        public class AnalyticDataPoint
        {
            public AnalyticDataPoint()
            {
                Rows = new List<IList<string>>();
            }

            public IList<GaData.ColumnHeadersData> ColumnHeaders { get; set; }
            public List<IList<string>> Rows { get; set; }
        }

        public class RealtimeAnalyticDataPoint
        {
            public RealtimeAnalyticDataPoint()
            {
                Rows = new List<IList<string>>();
            }

            public IList<RealtimeData.ColumnHeadersData> ColumnHeaders { get; set; }
            public List<IList<string>> Rows { get; set; }
        }
    }
}

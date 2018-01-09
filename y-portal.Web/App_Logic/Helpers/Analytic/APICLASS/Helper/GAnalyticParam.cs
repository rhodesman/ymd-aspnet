namespace GAnalytic
{
    public class GAnalyticParam
    {
        public GAnalyticParam(string emailAddress, string password, string siteName, string profileId, string device)
        {
            EmailAddress = emailAddress;
            Password = password;
            SiteName = siteName;
            ProfileId = profileId;
            Token = Authentication.GetSessionTokenClientLogin(emailAddress, password);
            Device = device;
        }

        public string EmailAddress { get; set; }
        public string Password { get; set; }
        public string SiteName { get; set; }
        public string ProfileId { get; set; }
        public string Token { get; set; }
        public string Device { get; set; }
    }
}
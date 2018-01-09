using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GAnalytic
{
    public class GAnalyticParam
    {
        public GAnalyticParam(string emailAddress, string certificateName, string profileName, string profileId, string device)
        {
            EmailAddress = emailAddress;
            CertificateName = certificateName;
            ProfileName = profileName;
            ProfileId = profileId;
            Device = device;
        }

        public string EmailAddress { get; set; }
        public string CertificateName { get; set; }
        public string ProfileName { get; set; }
        public string ProfileId { get; set; }
        public string Device { get; set; }
    }
}

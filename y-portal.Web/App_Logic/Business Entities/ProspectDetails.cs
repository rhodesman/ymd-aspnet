using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YPortal.Web.App_Logic.Business_Entities
{
    public class ProspectDetails
    {
        public int ProspectId { get; set; }
        public DateTime? SubmittedOn { get; set; }
        public string FirstNameInput { get; set; }
        public string LastNameInput { get; set; }
        public string EmailInput { get; set; }
        public string PhoneInput { get; set; } 
        public string PhoneTypeInput { get; set; } 
        public string YLocationInput { get; set; }
        public string DateSubmitted { get; set; }

    }
}
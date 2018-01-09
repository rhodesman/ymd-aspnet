using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace YPortal.Helpers
{
    public class InputValidationHelper
    {
        


        public static bool InputTextRegularExpressionValidation(string inputText)
        {
            // "%&()*+,-./_:=? this are organized in pattern based on ASCII precedence, otherwise error will thrown during runtime
            string pattern = "^[A-Za-z0-9 \"\\%&()*+,-./_:=?μ]*$";

            if (System.Text.RegularExpressions.Regex.IsMatch(inputText.Trim(), pattern))
                return true;

            return false;
        }

        
        public static bool InputTextNullOrEmptyValidation(string inputText)
        {
            if(!String.IsNullOrEmpty(inputText.Trim()))
                return true;

            return false;
        }

        public static bool InputTextEmailFormatValidation(string inputText)
        {
            string pattern = @"\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*";
            
            if (System.Text.RegularExpressions.Regex.IsMatch(inputText.Trim(), pattern))
                return true;
            
            return false;
        }


        public static bool IsInputTextNumberValidation(string inputText)
        {
            string pattern = @"^\d+(\.\d{1,2})?$";

           if (System.Text.RegularExpressions.Regex.IsMatch(inputText.Trim(), pattern))
               return true;

           return false;
        }


       

       
    
    
    }//end class
}

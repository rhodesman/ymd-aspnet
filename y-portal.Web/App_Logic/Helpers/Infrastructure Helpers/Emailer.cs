/****************** Copyright Notice *****************
 
This code is licensed under Microsoft Public License (Ms-PL). 
You are free to use, modify and distribute any portion of this code. 
The only requirement to do that, you need to keep the developer name, as provided below to recognize and encourage original work:

=======================================================
   
Architecture Designed and Implemented By:
Mohammad Ashraful Alam
Microsoft Most Valuable Professional, ASP.NET 2007 – 2011
Twitter: http://twitter.com/AshrafulAlam | Blog: http://blog.ashraful.net | Portfolio: http://www.ashraful.net
   
*******************************************************/

namespace YPortal.Helpers
{
    using System;
    using System.IO;
    using System.Net.Mail;
    using System.Text;
    /// <summary>
    /// Utility class for sending email
    /// Design and Architecture: Mohammad Ashraful Alam [http://www.ashraful.net]
    /// </summary>
    public sealed class Emailer
    {
        private Emailer()
        {
        }


        public static void SendEmailFromContactUs(string to, string from, string cc, string bcc, string fromName, string subject, string body)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage message = new MailMessage();

            try
            {
                MailAddress fromAddress = new MailAddress(from, fromName);

                //webbmason
                smtpClient.Host = SiteSettings.SMTPClientHost;
                smtpClient.UseDefaultCredentials = true;

                message.From = fromAddress;

                if (!string.IsNullOrEmpty(to))
                {
                    string[] emails = to.Split(',');
                    foreach (string email in emails)
                    {
                        message.To.Add(email);
                    }
                }

                if (!string.IsNullOrEmpty(cc))
                {
                    string[] ccEmails = cc.Split(',');
                    foreach (string email in ccEmails)
                    {
                        message.CC.Add(email);
                    }
                }

                if (!string.IsNullOrEmpty(bcc))
                {
                    string[] bccEmails = bcc.Split(',');
                    foreach (string email in bccEmails)
                    {
                        message.Bcc.Add(email);
                    }
                }

                message.Subject = subject;
                message.IsBodyHtml = true;
                message.Body = body;
                smtpClient.Send(message);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

    }
}
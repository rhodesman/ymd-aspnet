using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

namespace YPortal.Helpers
{
    public class HelperUtility
    {
        public static void CheckAndDleteFile(string filePath, string fileName)
        {
            string[] fileEntries = Directory.GetFiles(filePath);
            foreach (var fileEntry in fileEntries)
            {
                if (fileEntry == filePath + fileName)
                {
                    File.Delete(filePath + fileName);
                }
            }
        }

        public static Int32 CurrentQueryStringId
        {
            get
            {
                if (HttpContext.Current.Request.QueryString["id"] != null)
                {
                    return Convert.ToInt32(HttpContext.Current.Request.QueryString["id"] as string);
                }
                else
                {
                    return -1;
                }
            }
        }

        public static bool IsImageExists(string imageUrl)
        {
            FileInfo imageFile = new FileInfo(HttpContext.Current.Server.MapPath(imageUrl));
            if (!imageFile.Exists)
            {
                return false;
            }
            return true;
        }

        public static bool IsNumber(string input)
        {
            Regex rgx = new Regex(@"^\d{1,2}$", RegexOptions.IgnoreCase);

            MatchCollection matches = rgx.Matches(input);
            return matches.Count > 0 ? true : false;

        }

        public static String GetUrl(String url)
        {
            if (url == null)
            {
                return "javascript:void(0);";
            }
            else if (url.Contains("http"))
            {
                return url;
            }
            else
            {
                return SiteSettings.BaseUrl + url;
            }
        }

        public static string CleanString(string inputString)
        {
            return (string.IsNullOrEmpty(inputString) ? string.Empty : inputString.Trim()).Replace("&", "&amp;").Replace("'", "");
        }

        public static string CreateCleanTextForUrl(string name)
        {
            string value = Regex.Replace(name, @"[^a-zA-Z0-9_\s]+", "", RegexOptions.Compiled).ToLowerInvariant();
            value = Regex.Replace(value, @"[\s]+", "-", RegexOptions.Compiled).ToLowerInvariant();
            return value;
        }

        public static string GetMenuText(string currentMenuText)
        {
            currentMenuText = currentMenuText.Replace(" ", "").Replace("\n", "").Replace("<br/>", "").ToLower();
            string actualMenuText;       
            //FIXME this is horrible
            if (currentMenuText == "Pasadena".Replace(" ", "").ToLower())
            {
                actualMenuText = "Pasadena";
            }
            else if (currentMenuText == "Greater Annapolis <small>Anne Arundel County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Arnold <small>(Greater Annapolis)</small>";
            }
            else if (currentMenuText == "Druid Hill <small>Baltimore City</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Druid Hill";
            }
            else if (currentMenuText == "Orokawa <small>Baltimore County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Towson <small>(Orokawa)</small>";
            }
            else if (currentMenuText == "Parkville <small>Baltimore County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Parkville";
            }
            else if (currentMenuText == "Perry Hall <small>Baltimore County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Perry Hall";
            }
            else if (currentMenuText == "Y Swim Center in Dundalk <small>Baltimore County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Swim Center in Dundalk";
            }
            else if (currentMenuText == "Y Swim Center in Randallstown <small>Baltimore County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Swim Center in Randallstown";
            }
            else if (currentMenuText == "Hill <small>Carroll County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Westminster <small>(Hill)</small>";
            }
            else if (currentMenuText == "Ward <small>Harford County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Abingdon <small>(Ward)</small>";
            }
            else if (currentMenuText == "Dancel <small>Howard County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Ellicott City <small>(Dancel)</small>";
            }

            else if (currentMenuText == "Weinberg <small>Baltimore City</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Waverly <small>(Weinberg)</small>";
            }
            else if (currentMenuText == "Catonsville <small>Baltimore County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Catonsville";
            }
            else if (currentMenuText == "UMBC <small>Baltimore County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "UMBC";
            }
            else if (currentMenuText == "Towson <small>Baltimore County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Towson";
            }
            else if (currentMenuText == "Chipmunks <small>Carroll County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Finksburg <small>(Chipmunks)</small>";
            }
            else if (currentMenuText == "Riverside <small>Harford County</small>".Replace(" ", "").ToLower())
            {
                actualMenuText = "Riverside";
            }
            else
            {
                actualMenuText = currentMenuText;
            }

            return actualMenuText.Trim();
        }
    }
}
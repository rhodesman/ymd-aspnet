using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Reflection;
using System.Text;
using System.Web;

namespace YPortal.Web.App_Logic.Helpers.Basic_Helpers
{
    public class CsvUtility
    {
        private static string StringToCsvCell(string str)
        {
            bool mustQuote = (str.Contains(","));
            if (mustQuote)
            {
                var sb = new StringBuilder();
                sb.Append("\"");
                foreach (char nextChar in str)
                {
                    sb.Append(nextChar);
                    if (nextChar == '"')
                        sb.Append("\"");
                }
                sb.Append("\"");
                return sb.ToString();
            }
            str = !string.IsNullOrEmpty(str) ? "" + str + "" : str;
            return str;
        }

        /// <summary>
        /// Take object List as input and export to csv and save in a specific folder
        /// </summary>
        /// <typeparam name="T">Type of object</typeparam>
        /// <param name="listToExport">Object list to export</param>
        /// <param name="seperateChar">character to use as scv separator</param>
        public static void ExportListToCsvAndSaveInFolder<T>(List<T> listToExport, string seperateChar, string folderPath, string fileName)
        {
            Int32 suBOMIs = 0;
            var export = new StringBuilder();
            try
            {
                string seperator = "";
                var builder = new StringBuilder();
                PropertyInfo[] fieldInfo = listToExport[0].GetType().GetProperties();
                foreach (PropertyInfo col in fieldInfo)
                {
                    if (col.PropertyType != typeof(EntityKey) && col.PropertyType != typeof(EntityState))
                    {
                        if (col.Name != "ProspectId" && col.Name != "SubmittedOn")
                        {
                            var colName = "";

                            if (col.Name == "FirstNameInput")
                            {
                                colName = "First Name";
                            }
                            else if (col.Name == "LastNameInput")
                            {
                                colName = "Last Name";
                            }
                            else if (col.Name == "EmailInput")
                            {
                                colName = "Email Address";
                            }
                            else if (col.Name == "PhoneInput")
                            {
                                colName = "Phone Number";
                            }
                            else if (col.Name == "PhoneTypeInput")
                            {
                                colName = "Phone Type";
                            }
                            else if (col.Name == "YLocationInput")
                            {
                                colName = "Location";
                            }
                            else if (col.Name == "DateSubmitted")
                            {
                                colName = "Date Submitted";
                            }
                            else
                            {
                                colName = col.Name;
                            }

                            builder.Append(seperator).Append(colName);
                            seperator = seperateChar;
                        }
                    }
                }
                export.AppendLine(builder.ToString());

                foreach (T dataItem in listToExport)
                {
                    PropertyInfo[] allProperties = dataItem.GetType().GetProperties();
                    seperator = "";
                    var builderTmp = new StringBuilder();
                    foreach (PropertyInfo thisProperty in allProperties)
                    {
                        if (thisProperty.PropertyType != typeof(EntityKey) && thisProperty.PropertyType != typeof(EntityKey))
                        {
                            if (thisProperty.Name != "ProspectId" && thisProperty.Name != "SubmittedOn")
                            {
                                object value = thisProperty.GetValue(dataItem, null);
                                String propetyValue = (value == null ? String.Empty : value.ToString());
                                builderTmp.Append(seperator).Append(StringToCsvCell(propetyValue));
                                seperator = seperateChar;
                            }
                        }
                    }
                    ++suBOMIs;
                    export.AppendLine(builderTmp.ToString());
                }
            }
            catch (Exception exception)
            {
                throw exception;
            }

            string folderPathWithFileName = folderPath + @"\" + fileName;
            var streamWriter = new StreamWriter(folderPathWithFileName);
            streamWriter.WriteLine(export);
            streamWriter.Close();
        }
    }
}
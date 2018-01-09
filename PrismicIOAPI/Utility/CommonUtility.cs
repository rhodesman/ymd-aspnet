using System;
using System.Diagnostics;
using System.IO;
using System.Collections.Generic;
using System.Linq;

using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization;
using System.Xml.Serialization;
using System.Xml;
using System.ComponentModel;
using System.Reflection;
using System.Text;

using System.Xml;
using System.Xml.Xsl;
using System.Xml.XPath;


namespace PrismicIOAPI.Utility
{
    public  class CommonUtility
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="Path"></param>
        public static void BinarySerialize(object sender, string Path)
        {

            string _Directory = null;

            if (File.Exists(Path))
            {
                File.Delete(Path);
            }

            _Directory = Path.Substring(0, Path.LastIndexOf(@"\"));

            if (!Directory.Exists(_Directory))
            {
                Directory.CreateDirectory(_Directory);
            }

            using (FileStream WriteStream = new FileStream(Path, FileMode.Create))
            {
                BinaryFormatter formatter = new BinaryFormatter();
                formatter.Serialize(WriteStream, sender);
            }
        }




        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="Path"></param>


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="Path"></param>
        public static void XmlSerialize(object sender, string Path)
        {
            if (File.Exists(Path))
            {
                File.Delete(Path);
            }
            using (FileStream WriteStream = new FileStream(Path, FileMode.Create))
            {
                XmlSerializer formatter = new XmlSerializer(sender.GetType());

                formatter.Serialize(WriteStream, sender);
            }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <returns></returns>
        public static string XmlSerialize(object sender)
        {
            string ret = null;
            using (MemoryStream ms = new MemoryStream())
            {
                using (StreamReader sr = new StreamReader(ms, true))
                {

                    XmlSerializer formatter = new XmlSerializer(sender.GetType());
                    using (XmlTextWriter xmlTextWriter = new XmlTextWriter(ms, System.Text.Encoding.UTF8))
                    {
                        formatter.Serialize(xmlTextWriter, sender);
                        //ret =   UTF8ByteArrayToString(((MemoryStream)xmlTextWriter.BaseStream).ToArray());
                        ms.Position = 0;
                        ret = sr.ReadToEnd();
                    }
                }
            }
            return ret;
        }


        public static T XMLDeSerialize<T>(string XMldata)
        {
            T obj = default(T);

            try
            {
                XmlSerializer ser = new XmlSerializer(typeof(T));
                using (StringReader stringReader = new StringReader(XMldata))
                {
                    using (XmlTextReader xmlReader = new XmlTextReader(stringReader))
                    {
                        obj = (T)ser.Deserialize(xmlReader);
                    }
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }
            return obj;
        }



      


        private static String UTF8ByteArrayToString(Byte[] characters)
        {
            UTF8Encoding encoding = new UTF8Encoding();
            String constructedString = encoding.GetString(characters);
            return (constructedString);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Path"></param>
        /// <returns></returns>
        public static object BinaryDeSerialize(string Path)
        {
            object ret = null;

            if (!File.Exists(Path))
            {
                return null;
            }

            using (FileStream readStream = new FileStream(Path, FileMode.Open))
            {
                BinaryFormatter formatter = new BinaryFormatter();
                ret = formatter.Deserialize(readStream);
            }
            return ret;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Path"></param>
        /// <returns></returns>
        public static object XmlDeSerialize(string Path)
        {
            object ret = null;

            if (!File.Exists(Path))
            {
                return null;
            }

            using (FileStream readStream = new FileStream(Path, FileMode.Open))
            {

                BinaryFormatter formatter = new BinaryFormatter();
                ret = formatter.Deserialize(readStream);
            }
            return ret;
        }


        /// <summary>
        /// Returns Enum description Addribute value from enum
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string GetEnumDescription(Enum value)
        {
            FieldInfo fi = value.GetType().GetField(value.ToString());
            DescriptionAttribute[] attributes =
                  (DescriptionAttribute[])fi.GetCustomAttributes(
                  typeof(DescriptionAttribute), false);
            return (attributes.Length > 0) ? attributes[0].Description : value.ToString();
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static object GetPropertyAttibute(object target, Type Attribute, string PropertyName)
        {
            object ret = null;
            PropertyInfo prop = target.GetType().GetProperty(PropertyName);
            ret = prop.GetCustomAttributes(Attribute, true)[0];
            return ret;
        }


        /// <summary>
        /// Apply Document Transformation
        /// </summary>
        /// <param name="xmldata"></param>
        /// <param name="ArgumentList"></param>
        /// <param name="xsldocument"></param>
        /// <returns></returns>
        public static string XSLTansform(string xmldata, XsltArgumentList ArgumentList, string xsldocument)
        {
            string _ret = null;
            XPathDocument doc = new XPathDocument(new StringReader(xmldata));
            XslCompiledTransform xslt = GetCachedXSLT(xsldocument);

            using (MemoryStream ms = new MemoryStream())
            {
                xslt.Transform(doc, ArgumentList, ms);
                ms.Position = 0;
                using (StreamReader sr = new StreamReader(ms))
                {
                    _ret = sr.ReadToEnd();
                }
            }
            return _ret;
        }






        /// <summary>
        ///  Apply Document Transformation
        /// </summary>
        /// <param name="xmldata"></param>
        /// <param name="ArgumentList"></param>
        /// <param name="xsldocument"></param>
        /// <returns></returns>
        public static string XSLTansform(string xmldata, XsltArgumentList ArgumentList, XmlReader xsldocument)
        {
            string _ret = null;
            XPathDocument doc = new XPathDocument(new StringReader(xmldata));
            XslCompiledTransform xslt = new XslCompiledTransform();
            XsltSettings _XsltSettings = new XsltSettings(true, true);
            XmlUrlResolver resolver = new XmlUrlResolver();
            resolver.Credentials = System.Net.CredentialCache.DefaultCredentials;

            xslt.Load(xsldocument, _XsltSettings, resolver);
            using (MemoryStream ms = new MemoryStream())
            {
                xslt.Transform(doc, ArgumentList, ms);
                ms.Position = 0;
                using (StreamReader sr = new StreamReader(ms))
                {
                    _ret = sr.ReadToEnd();
                }
            }
            return _ret;
        }



        /// <summary>
        /// Get Cached XSL
        /// </summary>
        /// <param name="xsldocument"></param>
        /// <returns></returns>
        private static XslCompiledTransform GetCachedXSLT(string xsldocument)
        {
            XslCompiledTransform xslt = null;
            CacheController.GetCachedObject<XslCompiledTransform>(ref xslt, xsldocument);

            if (xslt == null)
            {
                xslt = new XslCompiledTransform();
                XsltSettings _XsltSettings = new XsltSettings(true, true);
                XmlUrlResolver resolver = new XmlUrlResolver();
                resolver.Credentials = System.Net.CredentialCache.DefaultCredentials;
                xslt.Load(xsldocument, _XsltSettings, resolver);
                CacheController.GetCachedObject<XslCompiledTransform>(ref xslt, xsldocument);
            }

            return xslt;

        }



    }
}

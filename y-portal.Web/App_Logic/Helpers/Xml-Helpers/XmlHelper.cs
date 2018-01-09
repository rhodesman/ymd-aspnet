using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.IO;


namespace YPortal.Helpers
{
    public class XmlHelper
    {
        #region Fields
           public const String PhoneTag = "phone";  

        #endregion

        public static String FindElementFromXmlString(String xmlData, String elementToFind)
        {
            try
            {
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.LoadXml(xmlData);

                if (xmlDoc.HasChildNodes)
                {
                    XmlNodeList xmlNodeList = xmlDoc.GetElementsByTagName(elementToFind);

                    if (xmlNodeList != null && xmlNodeList.Count > 0)
                    {
                        foreach (XmlNode node in xmlNodeList)
                        {
                            if (!String.IsNullOrEmpty(node.FirstChild.Value))
                                return node.FirstChild.Value;
                            else
                                return null;
                        }
                    }


                }//end if
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return null;
        }


        public static String FindElementFromXmlFile(String xmlFilePath, String elementToFind)
        {
            try
            {

                if (File.Exists(xmlFilePath))
                {
                    XmlDocument xmlDoc = new XmlDocument();
                    xmlDoc.LoadXml(xmlFilePath);

                    if (xmlDoc.HasChildNodes)
                    {
                        XmlNodeList xmlNodeList = xmlDoc.GetElementsByTagName(elementToFind);

                        if (xmlNodeList != null && xmlNodeList.Count > 0)
                        {
                            foreach (XmlNode node in xmlNodeList)
                            {
                                if (!String.IsNullOrEmpty(node.FirstChild.Value))
                                    return node.FirstChild.Value;
                                else
                                    return null;
                            }
                        }
                    }//end if
                }
                else
                {
                    throw new Exception(ImageMessage.XML_FILE_NOT_FOUND);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return null;
        }

        public static String[,] ImageDimensionObjectFromXml(String[] imageType,String imageDimensionFilePath)
        {
            try
            {

                String[,] xmlObject = new String[0,3];
               int rowCounter=0;
               
                if (File.Exists(imageDimensionFilePath))
                {
                    XmlDocument xmlDoc = new XmlDocument();
                    xmlDoc.Load(imageDimensionFilePath);

                    if (xmlDoc.HasChildNodes)
                    {

                      XmlNodeList nodeList =  xmlDoc.GetElementsByTagName("ImageTypeAndDimension");

                      if (nodeList != null && nodeList.Count > 0)
                      {
                          xmlObject = new String[nodeList.Count, 3];
                        
                          foreach (XmlNode node in nodeList)
                          {
                              XmlNodeList imageTypeAndDimensionList = node.ChildNodes;

                              if (imageTypeAndDimensionList != null && imageTypeAndDimensionList.Count == 3)
                              {
                                  string imgType = String.Empty;
                                  string width = String.Empty;
                                  string height = String.Empty;

                                  foreach(XmlNode imgNode in imageTypeAndDimensionList)
                                  {

                                      if (imgNode.Name != "TypeName" && imgNode.Name != "Width" && imgNode.Name != "Height")
                                      {
                                          throw new Exception(ImageMessage.XML_IMAGE_TAG_NAME_MODIFIED);
                                      }
                                      
                                      if (String.IsNullOrEmpty(imgNode.InnerText))
                                      {
                                          throw new Exception(ImageMessage.XML_IMAGE_TAG_WIDTH_HEIGHT_VALUE_REQUIRED);
                                      }

                                      if (imgNode.Name == "TypeName")
                                      {
                                          imgType = imgNode.InnerText;
                                      }
                                      else if (imgNode.Name == "Width")
                                      {
                                          width = imgNode.InnerText;
                                      }
                                      else if (imgNode.Name == "Height")
                                      {
                                           height = imgNode.InnerText;
                                      }
                                  }//end foreach

                                  if (imageType.FirstOrDefault(x => x == imgType) != null)
                                  {
                                      xmlObject[rowCounter,0] = imgType;
                                      xmlObject[rowCounter,1] = width;
                                      xmlObject[rowCounter,2] = height;

                                  }
                                  else
                                  {
                                      throw new Exception(ImageMessage.XML_IMAGE_TYPE_TAG_VALUE_ERROR);
                                  }
                              }
                              else
                              {
                                  throw new Exception(ImageMessage.XML_FILE_MODIFIED);
                              }
                              
                              rowCounter++;
                          }

                          return xmlObject; 
                        }
                         
                       else
                         {
                             throw new Exception(ImageMessage.XML_FILE_MODIFIED);
                           }
                     }
                      
                      else
                      {
                          throw new Exception(ImageMessage.XML_FILE_MODIFIED);
                      }
                }//end if
                else
                {
                    throw new Exception(ImageMessage.XML_FILE_NOT_FOUND);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return null;


        }
    
    }//end class
}
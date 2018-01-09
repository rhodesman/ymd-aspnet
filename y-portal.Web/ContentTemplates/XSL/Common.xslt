<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                exclude-result-prefixes="msxsl"
                xmlns:webbmason ="http://webbmason">
  <xsl:output method="xml" indent="yes"/>

  <msxsl:script implements-prefix="webbmason" language="CSharp">
    <![CDATA[
       public string ToShortDate (string arg1)
       {
         DateTime _temp = default(DateTime);
         string _ret = "";
         
         if(System.DateTime.TryParse(arg1, out _temp)){
         
            _ret  = _temp.ToShortDateString();
         }
          return _ret;
       }
       
       public string ToShortTime (string arg1)
       {
         DateTime _temp = default(DateTime);
         string _ret = "";
         
         if(System.DateTime.TryParse(arg1, out _temp)){         
            _ret  = _temp.ToShortTimeString();
         }
         
         return _ret;
       }
       
       public string CurrentDate()
       {
         return System.DateTime.Now.ToShortDateString();
       }
       
       public string[] SplitString(string data, string SplitChar){
          return data.Split(SplitChar.ToCharArray());
       }
       
              
       public bool Exist(string Id, object Data){
          bool _ret = false;
         string _temp = Data.ToString();
          if(_temp.IndexOf(Id)!= -1){
            _ret = true;
          }
         return _ret;       
       }
       
       
       
       
    ]]>
  </msxsl:script>

<!-- Root Variables-->
  <xsl:variable name="AllEntries">    
    <xsl:copy-of select="//*/Entry"/>
  </xsl:variable>

  <xsl:variable name="AllAssets">    
    <xsl:copy-of select="//*/Asset"/>
  </xsl:variable>
  <!-- Root Variables-->


  <!-- Begin Get Entries (Recursive)  -->
  <xsl:template name="FindEntryById">
    <xsl:param name="EntryID"/>    
    
    <xsl:if test="$EntryID">
      
          <xsl:variable name="TempEntry">
            <xsl:copy-of select="(msxsl:node-set($AllEntries)//Entry)[sys/id = $EntryID]/fields"/>
          </xsl:variable>      
      
          <xsl:variable name="TempAsset">
            <xsl:copy-of select="(msxsl:node-set($AllAssets)//Asset)[sys/id = $EntryID]/fields"/>
          </xsl:variable>


      
      
          <xsl:variable name="SysType">
            <xsl:value-of select="msxsl:node-set($TempEntry)//*/type"/>
          </xsl:variable>

          <xsl:variable name="SysLinkType">
            <xsl:value-of select="msxsl:node-set($TempEntry)//*/linkType"/>
          </xsl:variable>

          <xsl:variable name="Id">
            <xsl:value-of select="msxsl:node-set($TempEntry)//*/id"/>
          </xsl:variable>

                
      
          <xsl:choose>
            <xsl:when test="msxsl:node-set($TempEntry)/fields">
              <xsl:copy-of select="$TempEntry"/>
            </xsl:when>
             <xsl:when test="msxsl:node-set($TempAsset)/fields">
              <xsl:copy-of select="$TempAsset"/>
            </xsl:when>
          </xsl:choose>
    
      
      
      

          <xsl:if test="normalize-space($SysType) = 'Link'">        
              <xsl:choose>                
                
                <xsl:when test="normalize-space($SysLinkType) = 'Entry'">                  
                  <xsl:call-template name="FindEntryById">
                    <xsl:with-param name="EntryID" select="normalize-space($Id)"/>                    
                  </xsl:call-template>
                </xsl:when>

                <xsl:when test="normalize-space($SysLinkType) = 'Asset'">
                  <xsl:call-template name="FindAssetById">
                    <xsl:with-param name="AssetId" select="normalize-space($Id)"/>                   
                  </xsl:call-template> 
                </xsl:when>            
                
              </xsl:choose>   
      
      </xsl:if>
      
      
    </xsl:if>
  </xsl:template>
  <!-- End Get Entries (Recursive)  -->


  <!-- Begin Get Asset by ID-->
  <xsl:template name="FindAssetById">
    <xsl:param name="AssetId"/>

    <xsl:variable name="Entry">
      <xsl:call-template name="FindEntryById">
        <xsl:with-param name="EntryID" select="$AssetId"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:copy-of select="$Entry"/>
    
  </xsl:template>
  <!-- End Get Asset by ID-->
  
  
  <!-- Begin Image template-->
  <xsl:template name="Image">
    <!-- Image Scale Param default 1-->
    <xsl:param name="Scale" select="1"/>
    <xsl:param name="ImageInfo"/>
    
    
    <img>
      <xsl:attribute name="src">
        <xsl:value-of select="normalize-space(msxsl:node-set($ImageInfo)//*/url)"/>
      </xsl:attribute>
      <xsl:attribute name="height">        
        <xsl:value-of select="format-number(normalize-space(msxsl:node-set($ImageInfo)//*/height) div $Scale,'###')"/>
      </xsl:attribute>
      <xsl:attribute name="width">
        <xsl:value-of select="format-number(normalize-space(msxsl:node-set($ImageInfo)//*/width) div $Scale,'###')"/>
      </xsl:attribute>
      <xsl:attribute name="alt">
        <xsl:value-of select="normalize-space(msxsl:node-set($ImageInfo)//*/description)"/>
      </xsl:attribute>
      <xsl:attribute name="title">
        <xsl:value-of select="normalize-space(msxsl:node-set($ImageInfo)//*/description)"/>
      </xsl:attribute>
    </img>    
  </xsl:template>
  <!-- Begin Image template-->

  <!-- Begin Anchor template-->
  <xsl:template name="Anchor">
    <xsl:param name="AnchorInfo"/>

    <xsl:variable name="TTT">
      <xsl:value-of select="normalize-space(msxsl:node-set($AnchorInfo)/description)"/>
    </xsl:variable>
    
    <a>
      <xsl:attribute name="href">
        <xsl:value-of select="normalize-space(msxsl:node-set($AnchorInfo)//*/url)"/>
      </xsl:attribute>
      <xsl:value-of select="normalize-space(msxsl:node-set($AnchorInfo)/description)"/>
    </a>
    
    
  </xsl:template>
  <!-- End Anchor template-->
  
  
  
  
  
  <!-- Returns Fields Node Based on Object Name-->
  <xsl:template name="GetEntry">
    <xsl:param name="EntryName"/>

    <xsl:variable name="EntryID">
      <xsl:if test="$EntryName">
        <xsl:value-of select="$EntryName/sys/id"/>
      </xsl:if>
    </xsl:variable>

    <xsl:if test="$EntryID">

      
        
            <xsl:variable name="EntryFields">
              <xsl:copy-of select="(msxsl:node-set($AllEntries)//Entry)[sys/id = $EntryID]/fields"/>
            </xsl:variable>
     


            <xsl:for-each select="msxsl:node-set($EntryFields)">

              <xsl:variable name="SysType">
                <xsl:value-of select=".//*/type"/>
              </xsl:variable>

              <xsl:variable name="SysId">
                <xsl:value-of select=".//*/sys/id"/>
              </xsl:variable>

              
              <xsl:choose>
                    <xsl:when test="normalize-space($SysType) = 'Link'">
                            <xsl:call-template name="FindEntryById">
                              <xsl:with-param name="EntryID" select="$SysId"/>
                            </xsl:call-template>
                    </xsl:when>
              </xsl:choose>
            </xsl:for-each>
      
           <xsl:copy-of select="$EntryFields"/>
      

        </xsl:if>
  </xsl:template>

<!-- Get Image based on Node name form -->
   <xsl:template name="GetImageByNode">
   
    <xsl:param name="DataSource"/>
     <xsl:param name="cNode"/>

         <xsl:variable name="ImageIds">
           <xsl:copy-of select="msxsl:node-set($DataSource)//*[contains(name(),$cNode)]/sys/id"/>
         </xsl:variable>
     
     
          <xsl:variable name="AssetEntry">
               <xsl:for-each select="msxsl:node-set($ImageIds)/id">
                      <xsl:call-template name="FindAssetById">
                        <xsl:with-param name="AssetId" select="."/>
                      </xsl:call-template>
               </xsl:for-each>
          </xsl:variable>     
     
          <xsl:if test="count(msxsl:node-set($AssetEntry)/fields) &gt; 0">
            <xsl:call-template name="Image">
              <xsl:with-param name="ImageInfo" select="$AssetEntry"/>
            </xsl:call-template>
          </xsl:if>
  </xsl:template>
  
  


  <!-- Returns Fields Node Based on Object Names (List)-->
  <xsl:template name="GetEnties">
    <xsl:param name="EntryName"/> 

    <xsl:variable name="Entries">      
      <xsl:for-each select="$EntryName">
        <xsl:call-template name="FindEntryById">
          <xsl:with-param name="EntryID" select="normalize-space(./sys/id)"/>
        </xsl:call-template>
      </xsl:for-each>
    </xsl:variable>
    <xsl:copy-of select="$Entries"/>
    
  </xsl:template>
  
  
  
 
  <xsl:template name="split">
    <xsl:param name="pText"/>
    <xsl:variable name="separator">,</xsl:variable>
    <xsl:choose>
      <xsl:when test="string-length($pText) = 0"/>
      <xsl:when test="contains($pText, $separator)">
        <id>
          <xsl:value-of select="substring-before($pText, $separator)"/>
        </id>
        <xsl:call-template name="split">
          <xsl:with-param name="pText" select="substring-after($pText, $separator)"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <id>
          <xsl:value-of select="$pText"/>
        </id>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  
</xsl:stylesheet>

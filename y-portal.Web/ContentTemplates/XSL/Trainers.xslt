<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exslt="http://exslt.org/common"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:webbmason ="http://webbmason">

  <xsl:import href="Common.xslt"/>
  <xsl:output method="html" indent="yes"/>


  <xsl:variable name="PersonalTrainersPage">
    <xsl:call-template name="GetEntry">
      <xsl:with-param name="EntryName" select="//*/personalTraining"/>
    </xsl:call-template>
  </xsl:variable>

  <!-- List Of trainers-->
  <xsl:variable name="Trainers">
    <xsl:call-template name="GetEnties">
      <xsl:with-param name="EntryName" select="//*/trainers"/>
    </xsl:call-template>
  </xsl:variable>

  
  <!-- Begin Presentation-->
  
  <xsl:template match = "/" >
    <xsl:if test="count(msxsl:node-set($Trainers)/fields) &gt; 0">
      <div class="panel panel-default">
        
        <div id="PageTitle" class="panel-body">            
            <xsl:value-of select="msxsl:node-set($PersonalTrainersPage)/*/title"/><br/>        
        </div>
        
        <!-- Begin List of personal Trainers-->
        <xsl:for-each select="msxsl:node-set($Trainers)/fields">
          
          <div id="LocationStuff" class="panel-body">            
            
            <!-- Begin Get Asset-->
            <xsl:variable name="AssetEntry">
              <xsl:call-template name="FindEntryById">
                <xsl:with-param name="EntryID" select="normalize-space(./image/sys/id)"/>                
              </xsl:call-template>
            </xsl:variable>
            <!-- End Get Asset-->
            
            <xsl:if test="count(msxsl:node-set($AssetEntry)/fields) &gt; 0">
              <xsl:call-template name="Image">
                <xsl:with-param name="ImageInfo" select="$AssetEntry"/>
              </xsl:call-template><br/>
            </xsl:if>
            
              <xsl:value-of select="./name"/><br/>
              <xsl:value-of select="./email"/><br/>
              <xsl:value-of select="./biography"/><br/>
          </div>
        </xsl:for-each>
      <!-- Begin List of personal Trainers-->
      
      </div>

    </xsl:if>
    <!-- Location Stuff-->
    
    
  </xsl:template>    
  <!-- End Presentation-->

</xsl:stylesheet>
  

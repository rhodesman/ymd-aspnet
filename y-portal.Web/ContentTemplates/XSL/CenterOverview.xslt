<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exslt="http://exslt.org/common"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:webbmason ="http://webbmason">

  <xsl:import href="Common.xslt"/>  
  <xsl:output method="html" indent="yes"/>


  <!--Begin  Variables -->

  <xsl:variable name="OperationHours">
    <xsl:call-template name="GetEntry">
      <xsl:with-param name="EntryName" select="//*/operationHours"/>
    </xsl:call-template>
  </xsl:variable>


  <xsl:variable name="Address">
    <xsl:call-template name="GetEntry">
      <xsl:with-param name="EntryName" select="//*/address"/>
    </xsl:call-template>
  </xsl:variable>


  <xsl:variable name="TabButton">
    <xsl:call-template name="GetEntry">
      <xsl:with-param name="EntryName" select="//*/tabButton"/>
    </xsl:call-template>
  </xsl:variable>

  <xsl:variable name="TabMainImage">
    <xsl:call-template name="GetEnties">
      <xsl:with-param name="EntryName" select="//*/tabMainImage"/>
    </xsl:call-template>
  </xsl:variable>
  

  <xsl:variable name="LocationStuff">
    <xsl:call-template name="GetEnties">
      <xsl:with-param name="EntryName" select="//*/locationStuff"/>
    </xsl:call-template>
  </xsl:variable>
  
  <!--End Variables -->
  
  

  
  
   
  
  
  <!-- Main Template -->
  
 <!-- Begin Presentation--> 
  
  <xsl:template match = "/" >    
    

    <div class ="container">    
      
      <div class ="row">
        <!-- Address-->  
        <xsl:if test="count(msxsl:node-set($Address)/*/street) &gt; 0">
          <div id="Address" class="panel panel-body col-lg-2">
            <xsl:value-of select="msxsl:node-set($Address)/*/street"/><br/>        
            <xsl:value-of select="msxsl:node-set($Address)/*/city"/><br/>
            <xsl:value-of select="msxsl:node-set($Address)/*/zip"/><br/>
            <xsl:value-of select="msxsl:node-set($Address)/*/phone"/><br/>
          </div> 
        </xsl:if>
        <!-- Address-->
        <!-- Operation Hours-->
      <xsl:if test="count(msxsl:node-set($OperationHours)/*/title) &gt; 0">
        <div id="OperationHours" class="panel panel-body col-lg-3">

          <xsl:value-of select="msxsl:node-set($OperationHours)/*/title"/><br/>
          <xsl:value-of select="msxsl:node-set($OperationHours)/*/monFri"/><br/>
          <xsl:value-of select="msxsl:node-set($OperationHours)/*/sat"/><br/>
          <xsl:value-of select="msxsl:node-set($OperationHours)/*/sun"/><br/>
        </div>
      </xsl:if>
      <!-- Operation Hours-->

        <!-- Tab Button-->
        <xsl:if test="count(msxsl:node-set($TabButton)/*/text) &gt; 0">
          <div id="TabButton" class="btn btn-primary col-lg-3" style="white-space: normal;">
            <xsl:value-of select="msxsl:node-set($TabButton)/*/text"/><br/>
          </div>
        </xsl:if>
        <!-- Tab Button-->

        
        
        <!-- Tab Main Image -->
        
          <div id="TabMainImage" class="panel panel-body col-lg-3" style="white-space: normal;">
            <xsl:for-each select="msxsl:node-set($TabMainImage)/fields">

              

                <!-- Begin Get Asset-->
                <xsl:variable name="AssetEntry">
                
                  <xsl:call-template name="FindAssetById">
                    <xsl:with-param name="AssetId" select="./image/sys/id"/>
                  </xsl:call-template>
                  
                </xsl:variable>
                <!-- End Get Asset-->

                <xsl:if test="count(msxsl:node-set($AssetEntry)/fields) &gt; 0">
                  <xsl:call-template name="Image">
                    <xsl:with-param name="ImageInfo" select="$AssetEntry"/>
                  </xsl:call-template>
                  <br/>
                </xsl:if>

                
                <br/>
              
            </xsl:for-each>
            
            
            
            
          </div>
        
        <!-- Tab Main Image-->
        
        
        
    </div>
      
      
      
      


     <div class ="row">
    <!-- Location Stuff-->
    <xsl:if test="count(msxsl:node-set($LocationStuff)/fields) &gt; 0">
    <div class="panel panel-body">
        <xsl:for-each select="msxsl:node-set($LocationStuff)/fields">
          <div id="LocationStuff" class="panel-body col-lg-12">
            <xsl:value-of select="./title"/><br/>
            <xsl:value-of select="./name"/><br/>
            <xsl:value-of select="./email"/><br/>
          </div>  
        </xsl:for-each>
    </div>
      
    </xsl:if>
    <!-- Location Stuff-->
  </div>
    

    <!-- End Presentation-->

    </div>


  </xsl:template>
</xsl:stylesheet>


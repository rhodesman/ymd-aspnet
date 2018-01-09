<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exslt="http://exslt.org/common"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:webbmason ="http://webbmason">

  <xsl:import href="Common.xslt"/>  
  <xsl:output method="html" indent="yes"/>



  <xsl:template name="Address">    
    <xsl:param name="DataSource"/>
    
        <xsl:if test="$DataSource">
      
              <xsl:for-each select="$DataSource">
                    <tr>
                      <td>Street:</td><td><xsl:value-of select=".//*/street"/></td>
                    </tr>
                    <tr>
                      <td>City:</td><td><xsl:value-of select=".//*/city"/></td>
                    </tr>
                    <tr>
                      <td>Zip:</td><td><xsl:value-of select=".//*/zip"/></td>
                    </tr>

                <!-- Begin Enumerate images-->
                <xsl:for-each select=".//*/images">
                      <tr>            
                        <!-- <td>Image:</td><td><xsl:value-of select=".//*/id"/></td> -->
                        <td>Image:</td>
                        <td>
                          <xsl:call-template name="Images">                
                               <xsl:with-param name="AssetId" select=".//*/id"/>
                          </xsl:call-template>
                        </td>
                      </tr>          
                </xsl:for-each>
                <!-- End Enumerate images-->
        
              </xsl:for-each>
      
    </xsl:if> 
    
  </xsl:template>

<!-- This is a demo of linking asset, We can also check for asset type and attributes to determine proper rendering-->
  <xsl:template name="Images">
    <xsl:param name="AssetId"/>

    <xsl:for-each select="//*/Asset">
      <xsl:if test=".//*/id = $AssetId">
        <!-- Display Image:-->
        <xsl:call-template name="Image">
            <xsl:with-param name="Scale" select="20"/>
        </xsl:call-template>
        
      </xsl:if>   
    </xsl:for-each>
  </xsl:template>





    <!-- Main Template -->
  <xsl:template match = "/" >    
    <table class="table table-striped table-bordered table-condensed">
      <xsl:call-template name="Address">
        <xsl:with-param name="DataSource" select="//*/Entry"/>
      </xsl:call-template>      
    </table>
  </xsl:template>
</xsl:stylesheet>


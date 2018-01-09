<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exslt="http://exslt.org/common"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:webbmason ="http://webbmason">

  <xsl:import href="Common.xslt"/>
  <xsl:output method="html" indent="yes"/>


  <xsl:variable name="Level1LargeImage">
    <xsl:call-template name="GetEnties">
      <xsl:with-param name="EntryName" select="//*/largeImage"/>
    </xsl:call-template>
  </xsl:variable>

  <xsl:template match = "/" >

    
    
    <div class ="dux-show-case clearfix">

      <div class ="custom-container">

        <!-- Tab Main Image -->

        <div data-ride="carousel" class="carousel slide" id="carousel-example-captions">
                   
          
          
          <div class="carousel-inner">
            <div class="item active">

              
              <xsl:for-each select="msxsl:node-set($Level1LargeImage)//*/image/sys/id">
                <!-- Begin Get Asset-->
                <xsl:variable name="AssetEntry">

                  <xsl:call-template name="FindAssetById">
                    <xsl:with-param name="AssetId" select="."/>
                  </xsl:call-template>

                </xsl:variable>
                <!-- End Get Asset-->

                <xsl:if test="count(msxsl:node-set($AssetEntry)//*/fields) &gt; 0">
                  <xsl:call-template name="Image">
                    <xsl:with-param name="ImageInfo" select="$AssetEntry"/>
                  </xsl:call-template>
                </xsl:if>                
              </xsl:for-each>

              <!--
              <div class="carousel-caption">
                    <p>
                      Level1 Text.
                      <br/>
                      Text Line 2.
                    </p>
                
                  <div class="btn-group">
                    <a href="" class="common-btn btn-velvet">
                      <span class="btn-velvet-border">Button text</span>
                    </a>
                  </div>
              </div>
             -->
            
              
              
            </div>
          </div>
        </div>

        <!-- Tab Main Image-->
        
        
        
        
        
        
      </div>
    </div>
  </xsl:template>
  
  
  
</xsl:stylesheet>
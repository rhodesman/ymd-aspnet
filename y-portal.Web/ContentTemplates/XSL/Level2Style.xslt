<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exslt="http://exslt.org/common"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:webbmason ="http://webbmason">

  <xsl:import href="Common.xslt"/>
  <xsl:output method="html" indent="yes"/>


  <xsl:variable name="Level2Tabs">
    <xsl:call-template name="GetEntry">
      <xsl:with-param name="EntryName" select="//*/tabs"/>
    </xsl:call-template>
  </xsl:variable>

  <xsl:template match = "/" >    
    <div class ="dux-show-case clearfix">
      <div class ="custom-container">        
        <!-- Tab  Display as HTML -->
          <xsl:if test="count(msxsl:node-set($Level2Tabs)/*/body) &gt; 0">        
            <xsl:value-of select="msxsl:node-set($Level2Tabs)/*/body" disable-output-escaping="yes"/>
           <!-- Tab  -->
          </xsl:if>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
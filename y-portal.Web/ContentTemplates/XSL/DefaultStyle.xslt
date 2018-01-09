<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exslt="http://exslt.org/common"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:webbmason ="http://webbmason">
  
  <xsl:output method="html" indent="yes"/>  

  <xsl:template match = "/" >    
   <xsl:value-of select="/" disable-output-escaping="yes"/>
  </xsl:template>
</xsl:stylesheet>
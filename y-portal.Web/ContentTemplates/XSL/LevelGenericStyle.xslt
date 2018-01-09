<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exslt="http://exslt.org/common"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
                xmlns:webbmason ="http://webbmason">

  <xsl:import href="Common.xslt"/>
  <xsl:output method="html" indent="yes"/>

<!--
  <xsl:variable name="Level1Data">
    <xsl:call-template name="GetEntry">
      <xsl:with-param name="EntryName" select="//*/level1"/>
    </xsl:call-template>
  </xsl:variable>
  -->
  
   <xsl:variable name="CenterOverviewData">
    <xsl:call-template name="GetEntry">
      <xsl:with-param name="EntryName" select="//*/centerOverview"/>
    </xsl:call-template>
  </xsl:variable>
  
  
  <xsl:variable name="GenericContentData">
    <xsl:call-template name="GetEntry">
      <xsl:with-param name="EntryName" select="//*/level2"/>
    </xsl:call-template>
  </xsl:variable>


  <xsl:variable name="Trainers">
    <xsl:call-template name="GetEnties">
      <xsl:with-param name="EntryName" select="//*/personalTrainer"/>
    </xsl:call-template>
  </xsl:variable>
  
  
  
  <!--
  <xsl:variable name="TabDocuments">
    <xsl:call-template name="GetEnties">
      <xsl:with-param name="EntryName" select="//*/tabDocuments"/>
    </xsl:call-template>
  </xsl:variable>
  -->




  <xsl:template name="GenericTemplate">
    <!-- Begin Tab Content -->
    <!-- Generic Y Tab Template -->
    <xsl:if test="msxsl:node-set($GenericContentData)//*/body">
      <div class="col-md-7">
        <xsl:value-of select="msxsl:node-set($GenericContentData)//*/body" disable-output-escaping="yes"/>
      </div>
      <!-- End Tab Content -->
    </xsl:if>

    <br/>
    <div class="col-lg-5">
      <div class="side-bar">
        <!-- Begin Action Button-->
        <xsl:if test="count(msxsl:node-set($GenericContentData)//*/tabActionButton) &gt; 0">
          <xsl:value-of select="msxsl:node-set($GenericContentData)//*/tabActionButton"/>
        </xsl:if>
        <!-- End Action Button-->
        <br/>



        <!-- Begin Tab Image-->
        <xsl:if test="count(msxsl:node-set($GenericContentData)//*/image) &gt; 0">
          <xsl:call-template name="GetImageByNode">
            <xsl:with-param name="DataSource" select="$GenericContentData"/>
            <xsl:with-param name="cNode" select="'image'"/>
          </xsl:call-template>
        </xsl:if>
        <!-- Begin Tab Image-->

        <br/>

        <!-- Begin List Of Assets-->
        <!--
            <xsl:if test="count(msxsl:node-set($TabDocuments)/fields) &gt; 0">
              <xsl:for-each select="msxsl:node-set($TabDocuments)/fields">
                <xsl:call-template name="Anchor">
                  <xsl:with-param name="AnchorInfo" select="."/>
                </xsl:call-template>
                <br/>
              </xsl:for-each>
            </xsl:if>
            -->
        <!-- Begin List Of Assets-->


      </div>
    </div>

  </xsl:template>

  <xsl:template name="CenterOverview">

    <div class="col-md-7">
      <div class="main-body">
        
        
      <xsl:value-of select="msxsl:node-set($CenterOverviewData)//*/pageHeader" disable-output-escaping="yes"/>
      
      <div class="row">
        <div class="col-md-6">
          <xsl:if test="count(msxsl:node-set($CenterOverviewData)//*/image1) &gt; 0">
            <xsl:call-template name="GetImageByNode">
              <xsl:with-param name="DataSource" select="$CenterOverviewData"/>
              <xsl:with-param name="cNode" select="'image1'"/>
            </xsl:call-template>
          </xsl:if>
        </div>
      </div>
      
      <xsl:value-of select="msxsl:node-set($CenterOverviewData)//*/body" disable-output-escaping="yes"/>
      
    </div>
    </div>
    <div class="col-lg-5">
      <div class="side-bar">
        <xsl:value-of select="msxsl:node-set($CenterOverviewData)//*/actionButton"/>
      </div>
    </div>    
  </xsl:template>




  <!-- Begin Personal Trainers Template-->
  <xsl:template name="PersonalTrainers">

    <xsl:variable name="TrainersInfo">
      <xsl:call-template name="GetEnties">
        <xsl:with-param name="EntryName" select="//*/personalTrainers"/>
      </xsl:call-template>
    </xsl:variable>


    <div class="col-md-7">
      <div class="main-body">
        <p>
          <xsl:value-of select="msxsl:node-set($TrainersInfo)//*/pageHeader" disable-output-escaping="yes"/>
        </p>
        <p>
          <strong>MEET OUR TRAINERS</strong>
        </p>
        
        
        <!-- Begin Personal Trainers List-->
        <xsl:for-each select="msxsl:node-set($Trainers)/fields">
          <xsl:if test="./firstName">
            <h3 class="title-03">
                <xsl:value-of select="./firstName"/>&#160;<xsl:value-of select="./lastName"/>
            </h3>
         
            
          
          <xsl:variable name="AssetEntry">
            <xsl:call-template name="FindEntryById">
              <xsl:with-param name="EntryID" select="normalize-space(./trainerPicture/sys/id)"/>
            </xsl:call-template>
          </xsl:variable>
   
          <xsl:if test="count(msxsl:node-set($AssetEntry)/fields) &gt; 0">
            <xsl:call-template name="Image">
              <xsl:with-param name="ImageInfo" select="$AssetEntry"/>
            </xsl:call-template>                    
         </xsl:if>
   
         
          <p>
            <xsl:value-of select="normalize-space(./email)" disable-output-escaping="yes"/>
          </p>
  
          <xsl:if test="./philosophy">
          <p>
            <strong>Philosophy: </strong>
            <xsl:value-of select="./philosophy"/>
          </p>
          </xsl:if>

          <xsl:if test="./specialties">
            <p>
              <strong>Specialties: </strong>
              <xsl:value-of select="./specialties"/>
            </p>
          </xsl:if>

          <xsl:if test="./certifications">
            <p>
              <strong>Certifications: </strong>
              <xsl:value-of select="./certifications"/>
            </p>
          </xsl:if>
          </xsl:if>     
            
        </xsl:for-each>
        <!-- End Personal Trainers List-->
      </div>
      </div>
    
      <div class="col-lg-5">
        <xsl:value-of select="msxsl:node-set($TrainersInfo)//*/actionButton" disable-output-escaping="yes"/>
      </div>
  </xsl:template>
  <!-- End Personal Trainers Template-->
  
  
  
  
  <!-- Begin Main Entry-->
  <xsl:template match = "/">

    <xsl:choose>     
      <xsl:when test="count(msxsl:node-set($GenericContentData)//*/body) &gt; 0 ">
        <xsl:call-template name="GenericTemplate"/>
      </xsl:when>
      
      <xsl:when test="count(msxsl:node-set($CenterOverviewData)//*/body)  &gt; 0">
        <xsl:call-template name="CenterOverview"/>                
      </xsl:when>

      <xsl:when test="count(msxsl:node-set($Trainers)//*/lastName) &gt; 0">
        <xsl:call-template name="PersonalTrainers"/>
      </xsl:when>      
      
      
    </xsl:choose>
  
    
  </xsl:template>
</xsl:stylesheet>
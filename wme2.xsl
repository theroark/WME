<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:h="http://www.w3.org/1999/xhtml">
  <xsl:template match="/">
   <xsl:element name="schema"><xsl:attribute name="xmlns"><xsl:text>http://www-mmt.inf.tu-dresden.de/Lehre/Sommersemester_10/Vo_WME/Uebung/material/photonpainter</xsl:text></xsl:attribute></xsl:element>
<xsl:element name="Photos">
<xsl:for-each select="//h:li[@class='photoItem']">

  <xsl:element name="Photo">
  
    <xsl:attribute name="description"><xsl:value-of select="h:p[@class='description']" /></xsl:attribute>
    <xsl:attribute name="id"><xsl:value-of select="@id" /></xsl:attribute>
    <xsl:attribute name="originalfilename"><xsl:value-of select="h:img/@src" /></xsl:attribute>
    <xsl:attribute name="title"><xsl:value-of select="h:h2" /></xsl:attribute>
    <xsl:attribute name="width"><xsl:value-of select=".//h:dd[preceding-sibling::h:dt[@class='mWidth']]" /></xsl:attribute>
    <xsl:attribute name="height"><xsl:value-of select=".//h:dd[preceding-sibling::h:dt[@class='mHeight']]" /></xsl:attribute>
    <xsl:attribute name="aperture"><xsl:value-of select=".//h:dd[preceding-sibling::h:dt[@class='mAperture']]" /></xsl:attribute>
    <xsl:attribute name="exposuretime"><xsl:value-of select=".//h:dd[preceding-sibling::h:dt[@class='mExposure']]" /></xsl:attribute>
    <xsl:attribute name="focallength"><xsl:value-of select=".//h:dd[preceding-sibling::h:dt[@class='mFocal']]" /></xsl:attribute>
    <xsl:attribute name="author"><xsl:value-of select="h:h3[@class='author']" /></xsl:attribute>
    
  <xsl:element name="Tags">
    <xsl:for-each select=".//h:ul[@class='tagList']/h:li">
      <xsl:element name="tag"><xsl:value-of select="text()" /> </xsl:element>
    </xsl:for-each>
    
  </xsl:element>    
    
  </xsl:element>
</xsl:for-each>
</xsl:element>

   </xsl:template>
</xsl:stylesheet>
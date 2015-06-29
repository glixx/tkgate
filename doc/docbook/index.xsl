<?xml version='1.0'?>
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl/xhtml/chunk.xsl"/>
<xsl:import href="./titlepage.xsl"/>
<xsl:param name="html.stylesheet" select="'../tkgate.css'"/>
<xsl:param name="admon.graphics" select="1"/>
<xsl:param name="chunk.first.sections" select="1"/>
<xsl:param name="keep.relative.image.uris" select="1"/>
<xsl:param name="make.single.year.ranges" select="1"/>
<xsl:param name="make.year.ranges" select="1"/>
<xsl:param name="abstract.notitle.enabled" select="1"/>

<!--
<xsl:template match="graphic" mode="book.titlepage.recto.auto.mode">
  <img src="" width="100"/>
</xsl:template> -->

</xsl:stylesheet>

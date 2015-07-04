<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
version="1.0">

<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl/xhtml/chunk.xsl"/>
<xsl:import href="./titlepage.xsl"/>
<xsl:param name="html.stylesheet" select="'../tkgate.css'"/>
<xsl:param name="admon.graphics" select="1"/>
<xsl:param name="chunk.first.sections" select="1"/>
<xsl:param name="keep.relative.image.uris" select="1"/>
<xsl:param name="make.single.year.ranges" select="1"/>
<xsl:param name="make.year.ranges" select="1"/>
<xsl:param name="abstract.notitle.enabled" select="1"/>
<xsl:param name="chunker.output.indent">yes</xsl:param>
<xsl:param name="section.autolabel" select="1"></xsl:param>
<xsl:param name="section.autolabel.max.depth">2</xsl:param>
<xsl:param name="section.label.includes.component.label" select="1"></xsl:param>
<xsl:param name="toc.section.depth">1</xsl:param>

</xsl:stylesheet>

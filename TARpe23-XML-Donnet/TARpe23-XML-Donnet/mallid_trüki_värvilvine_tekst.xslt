<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>

	<xsl:template name="tekstvarv">
		<xsl:param name="varvilinetekst"/>
		<span style="color:red;">
			<xsl:value-of select="$varvilinetekst"/>
		</span>
	</xsl:template>

	<xsl:template match="/">
		<h2>Värviline trükitud text</h2>
		<p>
			<xsl:call-template name="tekstvarv">
				<xsl:with-param name="varvilinetekst" select="'See tekst on punane võibolla'"/>
			</xsl:call-template>
		</p>
	</xsl:template>
</xsl:stylesheet>

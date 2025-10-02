<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>


	<xsl:template name="tahtread">
		<xsl:param name="kordadeArv"/>
		<xsl:if test="$kordadeArv &gt; 0">
			*
			<xsl:call-template name="tahtread">
				<xsl:with-param name="kordadeArv" select="$kordadeArv - 1"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template match="/">
		<h2>Tärnide rida</h2>
		<p>
			<xsl:call-template name="tahtread">
				<xsl:with-param name="kordadeArv" select="6"/>
			</xsl:call-template>
		</p>
	</xsl:template>
</xsl:stylesheet>



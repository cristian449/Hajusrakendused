<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="utf-8" />

	<xsl:template match="/">
		
		<xsl:for-each select="Autod/Auto[1]">
			INSERT INTO inimesed (Regnr, perenimi) VALUES (
			'<xsl:value-of select="Regnr"/>',
			'<xsl:value-of select="perenimi"/>',);
		</xsl:for-each>
		
		<xsl:for-each select="inimesed/inimene[2]">
			INSERT INTO inimesed (eesnimi, perenimi, synd, mass) VALUES (
			'<xsl:value-of select="eesnimi"/>',
			'<xsl:value-of select="perenimi"/>',
			'<xsl:value-of select="synd"/>',
			'<xsl:value-of select="mass"/>')
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>

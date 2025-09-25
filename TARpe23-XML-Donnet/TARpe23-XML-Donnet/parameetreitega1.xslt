<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" />
	<xsl:param name="otsing">ar</xsl:param>
	<xsl:param name="pikkus">5</xsl:param>
	<xsl:param name="aasta">2025</xsl:param>
	<xsl:param name="algusAasta">1900</xsl:param>
	<xsl:param name="loppAasta">2000</xsl:param>

	<xsl:template match="/">

		Nimed, mis sisaldavad kombinatsiooni <xsl:value-of select="$otsing" />:
		<xsl:for-each select="/inimesed/inimene[contains(eesnimi, $otsing)]">
			<xsl:sort select="eesnimi" order="descending" />
			<xsl:value-of select="concat(eesnimi, ' ', perenimi)" />;
		</xsl:for-each>
		<br /><br />

		Nimed pikkusega <xsl:value-of select="$pikkus" /> ja rohkem:
		<xsl:for-each select="/inimesed/inimene[string-length(eesnimi)>=$pikkus]" >
			<xsl:value-of select="concat(eesnimi, ' ', perenimi,
								  ' varuks ', string-length(eesnimi)-$pikkus)" />;
		</xsl:for-each>
		<br /><br />

		Vanused aasta <xsl:value-of select="$aasta" /> lõpuks:
		<xsl:for-each select="/inimesed/inimene">
			<xsl:value-of select="concat(eesnimi, ' ', perenimi, 
								  ' on ', $aasta - number(synd), ' aastat vana')" />;
		</xsl:for-each>
		<br /><br />

		<xsl:value-of select="$algusAasta" />	-	<xsl:value-of select="$loppAasta" />	sündinud inimesed:
		<xsl:for-each select="/inimesed/inimene[number(synd) &gt;= $algusAasta and number(synd) &lt;= $loppAasta]">
			<xsl:value-of select="concat(eesnimi, ' ', perenimi, ' (', synd, ')')" />;
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>

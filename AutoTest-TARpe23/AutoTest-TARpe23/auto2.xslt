<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="text" />
	<xsl:template match="/">
		Numbrite osa: <xsl:value-of select="substring(/autod/auto[1]/regnr, 1, 3)" />;
	</xsl:template>
</xsl:stylesheet>

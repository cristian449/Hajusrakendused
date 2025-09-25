<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="text" />
	
	<xsl:template match="/">
		Auto registrinumber: <xsl:value-of select="/autod/auto[1]/regnr" />;
	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<ul>
			<xsl:for-each select="Autod/Auto">
				<xsl:choose>
					<xsl:when test="substring(Regnr,string-length(Regnr),1)='1' or substring(Regnr,string-length(Regnr),1)='2'">
						<li>
							<b>
								<xsl:value-of select="concat(position(),' - ',Omanik,' (',Regnr,')')"/>
							</b>
						</li>
					</xsl:when>
					<xsl:otherwise>
						<li>
							<xsl:value-of select="concat(position(),' - ',Omanik,' (',Regnr,')')"/>
						</li>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		</ul>
	</xsl:template>
</xsl:stylesheet>

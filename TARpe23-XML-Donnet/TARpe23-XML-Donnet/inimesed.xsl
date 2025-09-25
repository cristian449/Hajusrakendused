<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<body>
				<h2>People and Their Gender</h2>
				<ul>
					<xsl:for-each select="/inimesed/inimene">
						<li>
							<xsl:value-of select="eesnimi"/> - Gender: <xsl:value-of select="@sugu"/>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>

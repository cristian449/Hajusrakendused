<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<body>
				<h2>Last Names of First Three People</h2>
				<ul>
					<xsl:for-each select="/inimesed/inimene[position() &lt;= 3]">
						<li>
							<xsl:value-of select="perekonnanimi"/>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>

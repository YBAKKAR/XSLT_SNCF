<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<body>
				<center><h2>This is a test of xml transofrmation with xsl</h2></center>

				<xsl:for-each select="ponctualite-transilien/ligne">
				
				<table border="1" align = "left" style= "margin: 2.5%">
					<tr><th colspan ="3"> <xsl:value-of select="@id"/> </th></tr>
					<tr bgcolor="gray">
						<th style="text-align:left">date</th>
						<th style="text-align:left">ponctualite</th>
						<th style="text-align:left">satisfaction</th>
					</tr>
					<xsl:for-each select="mesure">
						<tr>
							<td>
								<xsl:value-of select="date"/>
							</td>
							<td>
								<xsl:value-of select="ponctualite"/>
							</td>
							<td>
								<xsl:value-of select="satisfaction"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
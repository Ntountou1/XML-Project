<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">
	<HTML>
	<BODY>
		<table border="1">
			<tr>
				<tr bgcolor="#9acd32">
					<th>title</th>
					<th>subtitle</th>
					<th>end_value</th>
				</tr>
			</tr>
			
			<xsl:for-each select="online_bookshop/book_list/book">
			
				<xsl:sort select="cost_information/end_value[@currency='euro']" data-type="number" order="descending"/>
				<tr>
					<td>
						<xsl:value-of select="book_titles_info/@title"/>
					</td>

					<td>
						<xsl:value-of select="book_titles_info/@subtitle"/>
					</td>


					<td>
						<xsl:value-of select="cost_information/end_value[@currency='euro']"/>
					</td>
				</tr>
			
			 </xsl:for-each> 
		</table>
	
	
		

	</BODY>
	</HTML>
</xsl:template>

</xsl:stylesheet>
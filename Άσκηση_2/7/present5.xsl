<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">
	<HTML>
	<BODY>
		<table border="1">
			<tr>
				<tr bgcolor="#9acd32">
					<th>title</th>
					<th>publisher</th>
					<th>publisher_year</th>
				</tr>
			</tr>
			

			<xsl:for-each select="online_bookshop/book_list/book">
			<xsl:sort select="book_characteristics/publisher/@publisher_year" data-type="number" order="descending"/>
				<xsl:if test="(other_information/diathesimotita!='Μη Διαθέσιμο.') and (book_characteristics/publisher/@publisher_year>2013)">
				
					<tr>
						<td>
							<xsl:value-of select="book_titles_info/@title"/>
						</td>

						<td>
								<xsl:value-of select="book_characteristics/publisher"/>
						</td>

						<td>
							<xsl:value-of select="book_characteristics/publisher/@publisher_year"/>
						</td>
					</tr>
				</xsl:if>
			</xsl:for-each> 
					 
				
			


		</table>
	
	
		

	</BODY>
	</HTML>
</xsl:template>

</xsl:stylesheet>
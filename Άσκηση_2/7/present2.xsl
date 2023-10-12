<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
	<HTML>
	<BODY>
	
		<h1 style="color:red;font-style:italic">Books sorted: </h1>
		
		
		<xsl:apply-templates select="online_bookshop/book_list/book">
			<xsl:sort select="book_titles_info/@title" order="ascending" />

		</xsl:apply-templates>
		
	
	</BODY>
	</HTML>
</xsl:template>

<xsl:template match="book">		
		<xsl:value-of select="book_titles_info/@title" /> <br/>
</xsl:template>

</xsl:stylesheet>
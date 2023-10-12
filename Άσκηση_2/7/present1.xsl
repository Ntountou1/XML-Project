<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">
	<HTML>
	<BODY>
		
		
		<xsl:template match="online_bookshop/book_list/book">
			<xsl:apply-templates select="book_titles_info/@title"/>	</xsl:apply-templates>
			<xsl:apply-templates select="book_titles_info/@subtitle"/>	</xsl:apply-templates>
			<xsl:apply-templates select="cost_information/start_value[@currency='euro']"/>	</xsl:apply-templates>
			<xsl:apply-templates select="cost_information/end_value[@currency='euro']"/>	</xsl:apply-templates>
			<xsl:apply-templates select="other_information/diathesimotita"/>	</xsl:apply-templates>
		</xsl:template>
		
		


	</BODY>
	</HTML>
</xsl:template>

<xsl:template match="book">		
			<h1>Title:</h1>
			<xsl:value-of select="book_titles_info/@title" /> <br/>
		</xsl:template>
		
		<xsl:template match="book">		
			<h1>Subtitle:</h1>
			<xsl:value-of select="book_titles_info/@subtitle" /> <br/>
		</xsl:template>
		
		<xsl:template match="book">		
			<h1>Start value:</h1>
			<xsl:value-of select="cost_information/start_value[@currency='euro']" /> <br/>
		</xsl:template>
		
		<xsl:template match="book">		
			<h1>End value:</h1>
			<xsl:value-of select="cost_information/end_value[@currency='euro']" /> <br/>
		</xsl:template>
		
		<xsl:template match="book">		
			<h1>Diathesimotita:</h1>
			<xsl:value-of select="other_information/diathesimotita" /> <br/>
		</xsl:template>

</xsl:stylesheet>
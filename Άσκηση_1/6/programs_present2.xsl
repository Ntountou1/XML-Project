<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
  <body >
  <center>
      <table border="1">
            <tr>
                <tr bgcolor="#9acd32">
                    <th>program name</th>
                    <th>Secondary program name</th>
                </tr>
            </tr>
      <xsl:for-each select="isp/list_of_programs/program">
      <xsl:sort select="program_name"  order="ascending"/>
        <xsl:if test = "program_name/@gravamen='mobile'">
          <tr>
              <td> 
                <xsl:value-of select="program_name"/>
              </td>  
              <td>
                  <xsl:value-of select="secondary_mobile_category/@mobile_price"/>
              </td>  
          </tr>
        
        </xsl:if>
      </xsl:for-each>
    </table>
    </center>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
  <body >
  <center>
    <table border="1">
      <tr  bgcolor="#9acd32">
          <th>program name</th>
          <th>new customer </th>
          <th>old customer </th>
          <th>company </th>
      </tr>
      <xsl:for-each select="isp/list_of_programs/program">
        <tr>
          <td>
            <xsl:value-of select="program_name"/>
          </td>  
          <td>
              <xsl:value-of select="list_of_prices/price[@customer_type='new_customer']"/>
          </td>
          <td> 
              <xsl:value-of select="list_of_prices/price[@customer_type='old_customer']"/>
          </td>
            <td> 
              <xsl:value-of select="list_of_prices/price[@customer_type='company']"/>
            </td>
        </tr>
      </xsl:for-each>
    </table>
    </center>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
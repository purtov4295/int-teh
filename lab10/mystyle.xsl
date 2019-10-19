<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/solar">
<table width="60%" bgcolor="#CCCCCC" align="center" border="1" cellpadding="2">
<tr align="center">
<xsl:for-each select="name">
<td>
<b>
<i>
<xsl:value-of select="@caption"/>
</i>
</b>
</td>
</xsl:for-each>

<xsl:for-each select="planet">
<xsl:sort order="ascending"/>
<td>
<b>
<i>
<xsl:value-of select="@caption"/>
</i>
</b>
</td>
</xsl:for-each>
</tr>
<xsl:for-each select="planet[1]/product">
<tr align="center" >
<xsl:variable name="pos" select="position()"/>
<td bgcolor="green">
<xsl:value-of select="/solar/name/product[$pos]"/>
</td>
<td bgcolor="red">
<xsl:value-of select="."/>
</td>
<td bgcolor="blue">
<xsl:value-of select="/solar/planet[2]/product[$pos]"/>
</td>
<td bgcolor="gray">
<xsl:value-of select="/solar/planet[3]/product[$pos]"/>
</td>
<td bgcolor="lightblue">
<xsl:value-of select="/solar/planet[4]/product[$pos]"/>
</td>
<td bgcolor="yellow">
<xsl:value-of select="/solar/planet[5]/product[$pos]"/>
</td>
<td bgcolor="white">
<xsl:value-of select="/solar/planet[6]/product[$pos]"/>
</td>
<td bgcolor="cyan">
<xsl:value-of select="/solar/planet[7]/product[$pos]"/>
</td>
<td bgcolor="purple">
<xsl:value-of select="/solar/planet[8]/product[$pos]"/>
</td>
<td bgcolor="orange">
<xsl:value-of select="/solar/planet[9]/product[$pos]"/>
</td>
</tr>
</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>
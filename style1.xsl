<xsl:template match="/">
  <html>
    <body>
      <h1>Liste des fichiers</h1>
      <ul>
        <xsl:for-each select="php:function('scandir', '.')">
          <li><xsl:value-of select="."/></li>
        </xsl:for-each>
      </ul>
    </body>
  </html>
</xsl:template>


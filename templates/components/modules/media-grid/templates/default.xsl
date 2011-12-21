<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:php="http://php.net/xsl"
        exclude-result-prefixes="php"
>
<xsl:output method="html" encoding="utf-8" indent="yes" />
    <xsl:include href="../../../../helpers/hoborg.xsl"/>
	<xsl:template match="/data/component">
		<ul class="media-grid">
		   <xsl:for-each select="data/media">
		      <li>
		          <a href="{img/@src}">
		      <img src="{img/@thumb}" width="{img/@width}" height="{img/@height}" />
		          </a>
		      </li>
		   </xsl:for-each>
		</ul>
	</xsl:template>
</xsl:stylesheet>
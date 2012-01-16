<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php"
>
	<xsl:output method="html"
		encoding="utf-8"
		media-type="text/html"
		indent="yes"
	/>

	<xsl:template match="component">
		<!-- 
		<xsl:value-of disable-output-escaping="yes" select="php:function('Hoborg\Bundle\DisplayServiceBundle\Component\Call::load_module', @name, .)" />
		 -->
	</xsl:template>

	<xsl:template name="head">
	   <!-- 
		<xsl:value-of select="php:function('Hoborg\Bundle\DisplayServiceBundle\Component\Call::head', .)" />
	     -->
	</xsl:template>

</xsl:stylesheet>
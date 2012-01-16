<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:php="http://php.net/xsl"
        exclude-result-prefixes="php"
>
<xsl:output method="html" encoding="utf-8" indent="yes" />
    <xsl:include href="../../../../helpers/hoborg.xsl"/>
	<xsl:template match="/component">
		<div class="container {data/type}">
			<div class="row">
				<xsl:value-of select="$H_SUB_COMPONENTS" disable-output-escaping="yes" />
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
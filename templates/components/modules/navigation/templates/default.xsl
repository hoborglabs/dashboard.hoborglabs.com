<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:php="http://php.net/xsl"
        exclude-result-prefixes="php"
>
<xsl:output method="html" encoding="utf-8" indent="yes" />
    <xsl:include href="../../../../helpers/hoborg.xsl"/>
	<xsl:template match="/component">
		<div class="{data/size}">
			<xsl:apply-templates select="data/navigation" />
		</div>
	</xsl:template>

	<xsl:template match="navigation">
		<ul class="navigation">
			<xsl:for-each select="page">
				<li class="{@class}">
					<a href="{@href}">
						<xsl:value-of select="." />
					</a>
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>

	<xsl:template match="sub-navigation">
		<ul class="ul-inline">
			<xsl:for-each select="page">
				<li class="{@class}">
					<a href="{@href}">
						<xsl:value-of select="." />
					</a>
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>

</xsl:stylesheet>
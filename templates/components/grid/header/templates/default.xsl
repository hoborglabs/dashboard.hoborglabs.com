<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:php="http://php.net/xsl"
        exclude-result-prefixes="php"
>
<xsl:output method="html" encoding="utf-8" indent="yes"/>
	<xsl:template match="/data/component">
		<div id="header" class="container">
            <div class="row">
                <div class="beta">v. BETA</div>
                
                <div class="logo">
                    <h1><b>H</b>oborg<b>L</b>abs <span>Dashoboard</span></h1>
                </div>

                <div class="quicklinks">
                    <ul>
                        <li class="php"><a href="/downloads/dashboard.phar">dashboard.phar</a></li>
                        <li class="github"><a href="http://github.com/hoborglabs/Dashboard">view on github</a></li>
                    </ul>
                </div>

                <div class="navigation">
                    <ul class="tabs" style="margin-top: 30px;">
                        <xsl:for-each select="data/navigation/page">
                            <li class="{@class}">
                                <a href="{@href}"><xsl:value-of select="." /></a>
                            </li>
                        </xsl:for-each>
                    </ul>
                </div>
            </div>
        </div>
	</xsl:template>
</xsl:stylesheet>
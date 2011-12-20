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
                
                <div class="navigation">
                    <ul class="tabs" style="margin-top: 30px;">
                            <li class="active">
                                <a href="/">Home</a>
                            </li>
                            <li class="">
                                <a href="/doc">Documentation</a>
                            </li>
                            <li class="">
                                <a href="/demo">Demo</a>
                            </li>
                    </ul>
                </div>
            </div>
        </div>
        <a class="fork-me" href="http://github.com/hoborglabs/Dashboard"><img src="https://a248.e.akamai.net/assets.github.com/img/71eeaab9d563c2b3c590319b398dd35683265e85/687474703a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f677261795f3664366436642e706e67" alt="Fork me on GitHub" /></a>
	</xsl:template>
</xsl:stylesheet>
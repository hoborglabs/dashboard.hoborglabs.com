<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">
	<xsl:output
		method="html"
		encoding="utf-8"
		indent="yes" />
	<xsl:template match="/component">
		<div id="header" class="container">
			<div class="row">

				<div class="logo">
					<h1>
						<b>D</b>ashoboard<br />
						<span>by HoborgLabs</span>
					</h1>
				</div>

				<div class="beta">beta</div>
				<div class="quicklinks">
					<ul>
						<li class="trello">
							<a href="https://trello.com/board/dashboard/4ea7062eaed5f360a418c6f5">trello board</a>
						</li>
						<li class="github">
							<a href="http://github.com/hoborglabs/Dashboard">view on github</a>
						</li>
						<li class="php">
							<a href="http://get.hoborglabs.com/dashboard/dashboard.phar">dashboard.phar</a>
						</li>
					</ul>
				</div>

				<div class="navigation">
					<ul class="pills">
						<xsl:for-each select="data/navigation/page">
							<li class="{@class}">
								<a href="{@href}">
									<xsl:value-of select="." />
								</a>
							</li>
						</xsl:for-each>
					</ul>
				</div>
			</div>
		</div>
	</xsl:template>
	
</xsl:stylesheet>

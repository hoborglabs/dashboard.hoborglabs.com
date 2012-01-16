<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php"
>
	<xsl:output method="html" encoding="utf-8" media-type="text/html"
		doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" 
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
		cdata-section-elements="script style" 
		indent="yes" 
	/>

	<xsl:include href="../../../helpers/hoborg.xsl" />
	<xsl:template match="/component">

		<html itemtype="http://schema.org/Product">
			<head>
				<meta itemprop="name" content="Hoborg Labs Dashboard" />
				<meta itemprop="description"
					content="Quick and easy way to add dynamic dashboard to your project!" />

				<link href="/styles/css/common.css" media="all" rel="stylesheet"
					type="text/css" />
				<link href="/styles/css/layout.css" media="all" rel="stylesheet"
					type="text/css" />
			</head>

			<body>
				<xsl:value-of select="$H_SUB_COMPONENTS" disable-output-escaping="yes" />
				<div id="footer" class="container">
					<div class="row">
						<p>
							powered by
							<a href="http://hoborglabs.com">hoborglabs</a>
						</p>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>

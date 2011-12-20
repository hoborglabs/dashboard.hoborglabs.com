<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl"
    exclude-result-prefixes="php"
>
<xsl:output method="html"
    encoding="utf-8"
    media-type="text/html"
    doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    cdata-section-elements="script style"
    indent="yes"
/>

    <xsl:include href="../../../helpers/hoborg.xsl"/>
    <xsl:template match="/page">

        <xsl:variable name="output">
            <xsl:apply-templates select="component" />
        </xsl:variable>
        <html>
            <head>
                <link href="/styles/css/common.css" media="all" rel="stylesheet" type="text/css" />
		        <link href="/styles/css/layout.css" media="all" rel="stylesheet" type="text/css" />
		        <link href="/styles/css/handheld.css" media="handheld, only screen and (max-device-width: 700px)" rel="stylesheet" type="text/css" />
		        <meta name="viewport" content="initial-scale = 1.0,maximum-scale = 1.0" />
            </head>
            <body>
                <xsl:copy-of select="$output" />
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

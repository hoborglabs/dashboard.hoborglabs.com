<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php"
>
	<xsl:output method="html" encoding="utf-8" indent="yes" />
	
	<xsl:template match="/component">
		<xsl:if test="boolean(number(data/enabled))">
			<script type="text/javascript">
				var _gaq = _gaq || [];
				_gaq.push(["_setAccount", "<xsl:value-of select="data/account" />"]);
				_gaq.push(["_trackPageview"]);

				(function() {
					var ga = document.createElement("script"); ga.type = "text/javascript";
					ga.async = true;
					ga.src = ("https:" == document.location.protocol ? 
							"https://ssl" : "http://www") + ".google-analytics.com/ga.js";
					var s = document.getElementsByTagName("script")[0];
					s.parentNode.insertBefore(ga, s);
				})();

				(function() {
					var po = document.createElement("script"); po.type = "text/javascript";
					po.async = true;
					po.src = "https://apis.google.com/js/plusone.js";
					var s = document.getElementsByTagName("script")[0];
					s.parentNode.insertBefore(po, s);
				})();
			</script>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

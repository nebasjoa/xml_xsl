<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<style>
body {
	font-family: Arial;
	margin: auto;
	padding: auto;
}
.main-wrapper {
	margin: auto;
	width:40%;
	background-color: #ffcd00;
}

</style>
			<body>
			<div class="main-wrapper">
				<xsl:choose>
					<xsl:when test="payment/status = 'AUTHORIZE_REQUEST'">
						<h1>
							<xsl:value-of select="payment/labels/paymentSuccessful"/>
						</h1>
					</xsl:when>
					<xsl:otherwise>
						<h1>sta?</h1>
					</xsl:otherwise>
				</xsl:choose>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
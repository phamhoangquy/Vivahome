<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="head-about">
			<div class="container">
				<div class="head-menu">
					<ul class='link-to-about-section'> 
						<xsl:apply-templates select="/ZoneList/Zone" mode="Nav-About"></xsl:apply-templates>
					</ul>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Nav-About">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:text>#section-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>

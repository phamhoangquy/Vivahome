<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="brand-display">
			<div class="container">
				<div class="brand-swiper-wrapper">
					<div class="block_title_brand">
						<div class="head-title"> 
							<h1><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
						</div>
					</div>
					<div class="brand-home-swipper-wrapper">
						<div class="nav-arrow-prev"><em class="mdi mdi-arrow-left"></em></div>
						<div class="nav-arrow-next"><em class="mdi mdi-arrow-right"></em></div>
					</div>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/ZoneList/Zone/News[1]"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="wrapper">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

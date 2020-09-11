<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<xsl:template match="/">
			<section class="project_detail">
				<div class="container">
					<xsl:apply-templates select="/ZoneList/Zone[1]/News[1]" mode="Zone1-News"></xsl:apply-templates>
				</div>
			</section>
		</xsl:template>
	</xsl:template>
	<xsl:template match="News" mode="Zone1-News">
		<div class="block_title_project-detail">
			<h2>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h2>
		</div>
		<div class="project_detail_slide_gallery">
			<div class="swiper-container gallery-top">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages" mode="Zone1-News-NewsImages"></xsl:apply-templates>
				</div>
			</div>
			<div class="project-detail-swiper-wrapper">
				<div class="nav-arrow-prev"><em class="lnr lnr-arrow-left"></em></div>
				<div class="nav-arrow-next"><em class="lnr lnr-arrow-right"></em></div>
			</div>
			<div class="swiper-container gallery-thumbs">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages" mode="Zone1-News-NewsImages"></xsl:apply-templates>
				</div>
			</div>
		</div>
		<div class="content_project_detail_slide">
			<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<section class="project_detail">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone" ></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<xsl:apply-templates select="News" mode="News-1"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode='News-1'>
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
				<div class="nav-arrow-prev">
					<em class="lnr lnr-arrow-left"></em>
				</div>
				<div class="nav-arrow-next">
					<em class="lnr lnr-arrow-right"></em>
				</div>
			</div>
			<div class="swiper-container gallery-thumbs">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages" mode="Zone1-News-NewsImages"></xsl:apply-templates>
				</div>
			</div>
		</div>
		<div class="content_slide_project-detail">
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="table_project-detail">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>
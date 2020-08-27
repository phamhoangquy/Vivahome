<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<section class="block_project">
			<div class="container">
				<div class="block_title_project">
					<div class="head-title">
						<h1><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="project-swiper-wrapper">
							<div class="nav-arrow-prev"><em class="mdi mdi-arrow-left"></em></div>
							<div class="nav-arrow-next"><em class="mdi mdi-arrow-right"></em></div>
						</div>
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/ZoneList/Zone/News[1]"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="img shine">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="content_project">
					<div class="title">
						<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<div class="text">
						<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
					</div>
					<div class="btn-view">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							chi tiết
						</a>
						<em class="mdi mdi-arrow-right"></em>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

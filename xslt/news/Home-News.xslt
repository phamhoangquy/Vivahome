<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<div class="container">
			<div class="news-swiper-wrapper">
				<div class="block_title_news">
					<div class="head-title">
						<h1><xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h1>
					</div>
				</div>
				<div class="home-news-swipper-wrapper">
					<div class="nav-arrow-prev"><em class="mdi mdi-arrow-left"></em></div>
					<div class="nav-arrow-next"><em class="mdi mdi-arrow-right"></em></div>
				</div>
			</div>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/ZoneList/Zone/News"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="bottom-wrapper-news-detail">
				<time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
			</div>
			<div class="wrapper">
				<a href="">
					<div class="img shine">
						<img >
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<div class="content">
						<div class="title_news">
							<a href="">
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
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</a>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</div>
						<div class="title_zone_news">
							<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
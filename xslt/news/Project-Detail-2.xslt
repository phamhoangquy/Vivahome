<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<section class="project-detail-6">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone[1]/News[1]" mode="Zone1-News"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='Zone1-News'>
		<div class="row">
			<div class="col-12 md-3 col-lg-3">
				<div class="left_project-detail">
					<div class="title-wrapper">
						<h2>
							<xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<ul>
						<li>
							<div class="title">
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</a>
							</div>
						</li>
						<li>
							<div class="title">
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-12 md-9 col-lg-9">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="NewsImages" mode="Zone1-News-NewsImages"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Zone1-News-NewsImages">
		<div class="swiper-slide">
			<div class="wrapper">
				<a href="">
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
							<h3><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></h3>
						</div>
					</div>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
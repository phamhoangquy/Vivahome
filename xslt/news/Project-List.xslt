<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<section class="block_project-list">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:apply-templates select="Zone" mode='Sub'></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone" mode='Sub'>
		<div class="row">
			<div class="col-12 col-md-7 col-lg-8 project__item">
				<div class="card_img_project-list">
					<div class="img">
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
			</div>
			<div class="col-12 col-md-5 col-lg-4 project__item">
				<div class="content_project-list">
					<div class="title_project-list">
						<h2><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
					</div>
					<div class="caption_project-list">
						<p><xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of></p>
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
							xem thêm
						</a>
						<em class="mdi mdi-arrow-right"></em>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
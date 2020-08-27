<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<section class="block_about">
			<div class="block_title_about">
				<div class="head-title">
					<h1><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-12">
			<div class="caption_about">
				<p>
					<xsl:value-of disable-output-escaping="yes" select="BriefContent">
					</xsl:value-of>
				</p>
			</div>
		</div>
		<div class="col-lg-12">
			<div class="background">
				<div class="img">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="about_list">
				<ul>
					<xsl:apply-templates select="News" mode='about-1'></xsl:apply-templates>
				</ul>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="card_img_about">
				<div class="img">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="block_list">
				<ul>
					<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
				</ul>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<li>
			<h3>
				<span class="counter">
					<xsl:attribute name="data-count">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</xsl:attribute>
				</span>
				<span>
					<xsl:text disable-output-escaping="yes">+</xsl:text>
				</span>
			</h3>
			<span>
				<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
			</span>
		</li>
	</xsl:template>
	<xsl:template match="News" mode='about-1'>
		<xsl:if test="position()=1">
			<li>
				<h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
				<p><xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of></p>
			</li>
		</xsl:if>
		<xsl:if test="position()=2">
			<li>
				<h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
				<p><xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of></p>
			</li>
		</xsl:if>
		<xsl:if test="position()=3">
			<li>
				<h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
				<p><xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of></p>
			</li>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
 



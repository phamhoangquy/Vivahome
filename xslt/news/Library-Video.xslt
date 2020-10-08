<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="block_video">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-12 col-md-6 col-lg-3">
			<div class="figure-media">
				<div class="figure-image media-play">
					<div class="wrapper">
						<a>
							<xsl:attribute name="data-fancybox">
								<xsl:text>gallery-</xsl:text>
								<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
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
						<!-- <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of> -->
					</div>
					<div class="caption">
						<div class="icon"><img src="/Data/Sites/1/skins/default/images/video/play-icon.png" alt=""/>
						</div>
					</div>
				</div>
				<div class="content_video">
					<div class="bottom-wrapper-news-detail">
						<time>
							<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
						</time>
					</div>
					<div class="title_video">
						<a href="">
							<xsl:attribute name="data-fancybox">
								<xsl:text>gallery-</xsl:text>
								<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:param name="NewsPosition"></xsl:param>
		<xsl:if test="position()>1">
			<a>
				<xsl:attribute name="data-fancybox">
					<xsl:text>gallery-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="$NewsPosition"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of select="BriefContent"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="Title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
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
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="block_news-list">
			<div class="container">
				<div class="block_title_news-list">
					<div class="head-title">
						<h1>
							<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
						</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-12 col-md-12 col-lg-6">
						<xsl:apply-templates select="/NewsList/News" mode='Big'></xsl:apply-templates>
					</div>
					<div class="col-lg-6">
						<div class="row">
							<xsl:apply-templates select="/NewsList/News" mode='Small'></xsl:apply-templates>
						</div>
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='Big'>
		<xsl:if test="position()=1">
			<div class="big_img_news-list">
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
			<div class="card_body">
				<div class="content_news-list">
					<div class="card_title_news-list">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</div>
					<div class="card_title_zone_news-list">
						<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='Small'>
		<xsl:if test="position() > 1 and position() &lt; 4">
			<div class="col-12 col-md-6 col-lg-6">
				<div class="bottom-wrapper-news-detail">
					<time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
				</div>
				<div class="new-img">
					<div class="img opacity">
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
			<div class="col-12 col-md-6 col-lg-6">
				<div class="content_small_news-list">
					<div class="title_news-list">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</div>
					<div class="title_zone_news-list">
						<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-12 col-md-6 col-lg-4">
			<div class="bottom-wrapper-news-detail">
				<time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
			</div>
			<div class="news_small_img">
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
			<div class="card_body_small_img">
				<div class="title_small_news">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</div>
				<div class="title_zone_small_news">
					<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
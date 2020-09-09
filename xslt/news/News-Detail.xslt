<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="news-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="bottom-wrapper-news-detail">
							<time>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedDate">
								</xsl:value-of>
							</time>
						</div>
						<div class="card_title-news-detail">
							<h1>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title">
								</xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes">
								</xsl:value-of>
							</h1>
						</div>
						<div class="fullcontent">
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent">
							</xsl:value-of>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="right-news">
							<div class="card-title-right">
								<h2>Các tin khác</h2>
							</div>
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="NewsOther">
		<div class="card_body">
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
			<div class="content_news_detail_right">
				<div class="date">
					<time>
						<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
					</time>
				</div>
				<div class="title_news_right">
					<a class="lcl lcl-2" href="">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
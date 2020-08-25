<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="news-silde" id='section-id-4'>
			<div class="container">
				<div class="head-title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="/NewsList//ModuleTitle"></xsl:value-of>
					</h2>
				</div>
				<div class="news-swiper-wrapper">
					<div class="nav-arrow-prev"><img src="/Data/Sites/1/skins/default/img/home/brand/pre.png" alt="" />
					</div>
					<div class="nav-arrow-next"><img src="/Data/Sites/1/skins/default/img/home/brand/next.png" alt="" />
					</div>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>

					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="card-body">

				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
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
					<div class="content">
						<time>
							<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
						</time>
						<p>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</p><a href="">XEM
							THÊM</a><em class="mdi mdi-arrow-right"></em>
					</div>
				</a></div>
		</div>
	</xsl:template>

</xsl:stylesheet>

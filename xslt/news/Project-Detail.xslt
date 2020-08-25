<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="menu">
			<div class="container">
				<div class="head-menu link-to-section">
					<ul>
						<li> <a href="#section-id-1">Tổng quan dự án </a></li>
						<li> <a href="#section-id-2">Vị trí </a></li>
						<li> <a href="#section-id-3">Tiện ích </a></li>
						<li> <a href="#section-id-4">Tin tức liên quan</a></li>
					</ul>
				</div>
			</div>
		</section>
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">

		<xsl:if test="position()=1">
			<section class="project-news" id='section-id-1'>
				<div class="container">
					<div class="head-title">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
					</div>
					<xsl:apply-templates select="News"></xsl:apply-templates>

				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="location-project" id='section-id-2'>
				<xsl:attribute name="setBackground">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<div class="container">
					<div class="title">
						<h3>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h3>
					</div>
					<xsl:apply-templates select="News" mode="News-1"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="project-suncity">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>

		<xsl:if test="position()=3">

			<section class="text-utilities" id='section-id-3'>
				<div class="container">
					<div class="title">
						<h3>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h3>
					</div>
					<div class="caption">
						<div class="text">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
					</div>
					<div class="row">
						<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News">
		<div class="row">
			<div class="col-lg-6">
				<div class="card_img line_1">
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
			<div class="col-lg-6">
				<div class="title">
					<h3>
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h3>
				</div>
				<div class="content">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<xsl:if test="position()=1">
			<div class="caption-title">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="location-silde">
				<div class="row">
					<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<xsl:if test="position()=2">

			<div class="col-lg-5">
				<div class="content">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>

			<div class="col-12 col-md-12 col-lg-3 suncity_img">
				<div class="img"><img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-3'>
		<div class="col-lg-6">
			<div class="news-suncity">
				<div class="swiper-container">
					<div class="news-swiper-wrapper">
						<div class="nav-arrow-next"><img src="/Data/Sites/1/skins/default/img/home/brand/next.png"
								alt="" />
						</div>
						<div class="nav-arrow-next"><img src="/Data/Sites/1/skins/default/img/home/brand/next.png"
								alt="" />
						</div>
					</div>
					<div class="swiper-wrapper">
						<xsl:apply-templates select="NewsImages" mode='Slide'></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="title">
				<h4>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h4>
			</div>
			<div class="content">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<div class="col-12 col-md-6 col-lg-3">
			<div class="card">
				<div class="card-body">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="caption">
					<div class="text">
						<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<div class="card-body"><a href="">
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
				</a></div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode='Slide'>
		<div class="swiper-slide">
			<div class="card-body"><a href="">
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
				</a></div>
		</div>
	</xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position()=1" >
			<section class="about" id='section-about-1'>
				<div class="container">
						<div class="head-menu">
							<ul class='link-to-about-section'>
								<li> <a href="#section-about-1">Giới thiệu</a></li>
								<li> <a href="#section-about-2">Tầm nhìn &amp; Sứ mệnh</a></li>
								<li> <a href="#section-about-3">Giá trị cốt lõi</a></li>
								<li> <a href="#section-about-4">Giải thưởng</a></li>
								<li> <a href="#section-about-5">Tại sao chọn</a></li>
							</ul>
						</div>
					<div class="head-title line">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
					</div>
				
					<div class="row">
						<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="vision-mission" id='section-about-2'>
				<div class="container">
					<div class="head-title line">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
					</div>
					<div class="row">
						<div class="col-lg-6">

							<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">
			<section class="value" id='section-about-3'>
				<div class="container">
					<div class="head-title line">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
					</div>
					<div class="row">
						<xsl:apply-templates select="News" mode='News-3'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=4">
			<section class="prize" id='section-about-4'>
				<div class="container">
					<div class="head-title line">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="text">
								<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
							</div>
						</div>

						<xsl:apply-templates select="News" mode='News-4'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=5">
			<section class="choose-tan-thinh" id='section-about-5'>
				<div class="container">
					<div class="head-title line">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
					</div>
					<xsl:apply-templates select="News" mode='News-5'></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<div class="col-lg-6">
			<div class="card_img">
				<div class="img">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="content">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="block_list">
				<ul>

					<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
				</ul>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="News" mode='News-2'>
		<div class="card_img">
			<div class="img">
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</div>
		</div>
		<div class="content">
			<h4>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h4>
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-3'>
		<div class="col-lg-4">
			<div class="card_img">
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
			<div class="content">
				<ul>
					<li><strong>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</strong></li>
					<li>
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</li>
				</ul>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode='News-4'>
		<div class="col-12 col-md-6 col-lg-3">
			<div class="card_img">
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
			<div class="caption">
				<p>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-5'>
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
		<div class="row">
			<div class="col-lg-6">
				<div class="content">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="card_img">
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
		</div>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<li>
			<h3><span class="counter">

					<xsl:attribute name="data-count">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</xsl:attribute>
					0
				</span><span>+</span></h3><span>
				<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
			</span>
		</li>

	</xsl:template>
</xsl:stylesheet>

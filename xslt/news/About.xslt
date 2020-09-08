<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1" >
			<section class="head-about" id='section-about-1'>
				<div class="container">
					<div class="head-menu">
						<ul class='link-to-about-section'>
							<li> <a href="#section-about-1">về viva home</a></li>
							<li> <a href="#section-about-1">tầm nhìn</a></li>
							<li> <a href="#section-about-2">sứ mệnh</a></li>
							<li> <a href="#section-about-3">giá trị cốt lõi</a></li>
							<li> <a href="#section-about-3">Mục tiêu chiến lượt</a></li>
						</ul>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=1" >
			<section class="about-viva-1" id='section-about-1'>
				<div class="container">
					<div class="title_about">
						<div class="head-title">
							<h1><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
						</div>
						<div class="text_about_viva">
							<p><xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>.</p>
						</div>
					</div>
					<div class="row no-gutters">
						<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="about-viva-2" id='section-about-2'>
				<div class="container">
					<div class="row">
						<div class="col-12 col-md-6 col-lg-4">
							<div class="title_mission">
								<div class="card_title_about">
									<h2><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
								</div>
							</div>
						</div>
						<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">
			<section class="about-viva-3" id='section-about-3'>
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="News[4]" mode='News-4'></xsl:apply-templates>
						<xsl:apply-templates select="News[5]" mode='News-5'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<div class="col-12 col-md-6 col-lg-5 bg_about bg_about">
			<div class="card_img_about">
				<div class="img">
					<img >
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
		<div class="col-12 col-md-6 col-lg-7 bg_about bg_about">
			<div class="content_about-viva">
				<div class="card_img">
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
				<div class="card_title_about">
					<h2><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
				</div>
				<div class="caption_about">
					<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<div class="col-12 col-md-6 col-lg-4">
			<div class="list-item-about">
				<div class="card_img_icon_viva-2">
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
				<div class="list_item_caption">
					<div class="card_title_icon">
						<h3 class="line"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
					</div>
					<div class="caption_icon">
						<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode='News-3'>
		<div class="col-12 col-md-6 col-lg-6">
			<div class="item_value_about-viva-3">
				<div class="card_img_viva-3">
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
				<div class="card_title_about">
					<h2><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
				</div>
				<div class="caption_about-viva-3">
					<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
				</div>
			</div>
			<!-- <div class="item_value_about-viva-3">
				<div class="card_img_viva-3">
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
				<div class="card_title_about">
					<h2><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h2>
				</div>
				<div class="caption_about-viva-3">
					<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
				</div>
			</div> -->
		</div>
		<div class="col-12 col-md-6 col-lg-6">
			<div class="big_img_viva-3">
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
	</xsl:template>
</xsl:stylesheet>
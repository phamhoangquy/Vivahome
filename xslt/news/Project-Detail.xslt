<?xml version="1.0" encoding="utf-8"?>
	<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<section class="project_detail">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone[1]/News[1]" mode="Zone1-News"></xsl:apply-templates>
			</div>
		</section>
		<section class="project-detail-2">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone[2]/News[1]" mode="Zone2-News"></xsl:apply-templates>
			</div>
		</section>
		<section class="project-detail-3">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone[3]/News[1]" mode="Zone3-News"></xsl:apply-templates>
			</div>
		</section>
		<section class="project-detail-4">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone[4]/News[1]" mode="Zone4-News"></xsl:apply-templates>
			</div>
		</section>
		<section class="project-detail-4">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone[5]/News[1]" mode="Zone5-News"></xsl:apply-templates>
			</div>
		</section>
		<section class="project-detail-">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone[6]/News[1]" mode="Zone6-News"></xsl:apply-templates>
			</div>
		</section>
		<section class="project-detail-5">
			<div class="container">
				<div class="title_project-detail-5">
					<h2>TIN TỨC MỚI NHẤT</h2>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone[7]/News" mode="Zone7-News"></xsl:apply-templates>
					<div class="col-lg-12">
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
		</section>
		<!-- <section class="project-detail-6">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone[8]/News[1]" mode="Zone8-News"></xsl:apply-templates>
			</div>
		</section> -->
	</xsl:template>

	<!-- <xsl:template match="Zone">
		<xsl:if test="position()=1">
			<xsl:apply-templates select="News" mode="News-1"></xsl:apply-templates>
		</xsl:if>
	</xsl:template> -->

	<xsl:template match="News" mode='Zone1-News'>
		<div class="block_title_project-detail">
			<h2>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h2>
		</div>
		<div class="project_detail_slide_gallery">
			<div class="swiper-container gallery-top">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages" mode="Zone1-News-NewsImages"></xsl:apply-templates>
				</div>
			</div>
			<div class="project-detail-swiper-wrapper">
				<div class="nav-arrow-prev">
					<em class="lnr lnr-arrow-left"></em>
				</div>
				<div class="nav-arrow-next">
					<em class="lnr lnr-arrow-right"></em>
				</div>
			</div>
			<div class="swiper-container gallery-thumbs">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages" mode="Zone1-News-NewsImages"></xsl:apply-templates>
				</div>
			</div>
		</div>
		<div class="content_slide_project-detail">
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="table_project-detail">
			<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Zone1-News-NewsImages">
		<div class="swiper-slide">
			<div class="swiper-slide-container">
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
	</xsl:template>

	<xsl:template match="News" mode="Zone2-News">
		<div class="block_title_project-detail">
			<h2>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="EditLink"></xsl:value-of>
			</h2>
		</div>
		<div class="caption_project-detail-2">
			<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="card_img_project-detail-map">
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
				<div class="card_img_project-detail-2">
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
		</div>
	</xsl:template>

	<xsl:template match="News" mode="Zone3-News">
		<div class="row">
			<div class="col-lg-6 traffic">
				<div class="background">
					<div class="img">
						<img src="/Data/Sites/1/skins/default/images/project-detail/vector-project.png"></img>
					</div>
				</div>
				<div class="content_project-detail-2">
					<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="icon_project-detail-2">
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
				<div class="title_project-detail-2">
					<h1><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
				</div>
				<div class="img_project-detail-2">
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

	<xsl:template match="News" mode="Zone4-News">
		<div class="block_title_project-detail">
			<h2>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="EditLink"></xsl:value-of>
			</h2>
		</div>
		<div class="caption_project-detail-4">
			<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="card_img_project-detail-4">
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

	<xsl:template match="News" mode="Zone5-News">
		<div class="block_title_project-detail">
			<h2>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="EditLink"></xsl:value-of>
			</h2>
		</div>
		<div class="caption_project-detail-4">
			<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="card_img_project-detail-4">
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

	<xsl:template match="News" mode="Zone6-News">
		<div class="block_title_project-detail">
			<h2>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="EditLink"></xsl:value-of>
			</h2>
		</div>
		<div class="caption_project-detail-4">
			<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="card_img_project-detail-4">
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

	<xsl:template match="News" mode="Zone7-News">
		<xsl:if test="position()=1">
			<div class="col-lg-4">
				<div class="news-project-detail">
					<div class="bottom-wrapper-news-detail">
						<time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
					</div>
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
							<div class="content">
								<div class="title_news">
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
								<div class="title_zone_news">
									<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">
			<div class="col-lg-4">
				<div class="news-project-detail">
					<div class="bottom-wrapper-news-detail">
						<time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
					</div>
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
							<div class="content">
								<div class="title_news">
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
								<div class="title_zone_news">
									<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=3">
			<div class="col-lg-4">
				<div class="news-project-detail">
					<div class="bottom-wrapper-news-detail">
						<time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
					</div>
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
							<div class="content">
								<div class="title_news">
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
								<div class="title_zone_news">
									<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<!-- <xsl:template match="News" mode="Zone8-News">
		<div class="row">
			<div class="col-lg-9">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="NewsImages-2" mode="Zone2-News-NewsImages"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages-2" mode="Zone2-News-NewsImages">
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
							<h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
						</div>
					</div>
				</a>
			</div>
		</div>
	</xsl:template> -->
</xsl:stylesheet>
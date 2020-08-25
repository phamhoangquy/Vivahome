<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="news-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="head-title">
							<h1>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes">
								</xsl:value-of>
							</h1>
							<div class="bottom-wrapper-news-detail">
								<time>
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedDate">
									</xsl:value-of>
								</time>
								<div class="social-network-share">
									<div class="icon">
										<a target="_blank">
											<xsl:attribute name='href'>
												<xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
												<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
											</xsl:attribute>
											<em class="fab fa-facebook-f"></em>
										</a>
										<a target="_blank">
											<xsl:attribute name='href'>
												<xsl:text>https://twitter.com/intent/tweet?text=</xsl:text>
												<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
											</xsl:attribute><em class="fab fa-twitter"></em>
										</a>
										<a target="_blank">
											<xsl:attribute name='href'>
												<xsl:text>https://pinterest.com/pin/create/button/?url=</xsl:text>
												<xsl:value-of select='/NewsDetail/FullUrl'></xsl:value-of>
											</xsl:attribute><em class="fab fa-pinterest-p"></em>
										</a>
									</div>



								</div>
							</div>
						</div>
						<div class="content">
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>

						</div>
						<div class="item_icon">
							<div class="social-network-share">
								<div class="icon">
									<div class="fb-like" data-width="" data-layout="button_count" data-action="like"
										data-size="small" data-share="true">

										<xsl:attribute name="data-href">
											<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl">
											</xsl:value-of>
										</xsl:attribute>

									</div>

									<a class='fb-link-comment-toggle'><em class="material-icons">forum</em>Comment</a>

								</div>
							</div>
						</div>
						<div class="fb-comment-wrapper">
							<div class="fb-comments" data-numposts="5" data-width="100%">
								<xsl:attribute name="data-href">
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl">
									</xsl:value-of>
								</xsl:attribute>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="news-silde">
			<div class="container">
				<div class="head-title">
					<h2>Tin tức liên quan</h2>
				</div>
				<div class="news-swiper-wrapper">
				<div class="nav-arrow-prev"><img src="/Data/Sites/1/skins/default/img/home/brand/pre.png" alt="" /></div>
				<div class="nav-arrow-next"><img src="/Data/Sites/1/skins/default/img/home/brand/next.png" alt="" /></div>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>

					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<div class="card-body"><a>
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
						</p><a>
							<xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</a><em class="mdi mdi-arrow-right"></em>
					</div>
				</a></div>
		</div>
	</xsl:template>
</xsl:stylesheet>

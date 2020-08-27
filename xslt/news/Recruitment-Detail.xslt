<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="hr-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="bottom-wrapper-news-detail">
							<time>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedDate">
								</xsl:value-of>
							</time>
						</div>
						<div class="card_title_hr_detail">
							<h1>
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes">
								</xsl:value-of>
							</h1>
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
								</div>
							</div>
						</div>
						<div class="card_body_hr_detail">
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
						</div>

						<div class="fullcontent">

							<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>

						</div>
					</div>
					<div class="col-lg-3">
						<div class="form_apply_hr_detail">
							<div class="apply-form">
								<div class="btn button-apply">
									<a href="javascript:void(0)">Ứng tuyển ngay
									</a>
								</div>
								<div class="btn button-download">
									<a>
										<xsl:attribute name="href">
											<xsl:value-of select="/NewsDetail/FileUrl"></xsl:value-of>
										</xsl:attribute>
										<xsl:text disable-output-escaping="yes">Tải form ứng tuyển
										</xsl:text>
									</a>
								</div>
							</div>
						</div>

						<div class="right-hr-detail">
							<div class="card-title-right">
								<h2>Vị trí khác</h2>
							</div>
							<div class="content_hr_detail_right">
								<div class="hr_detail_right_list">
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="form-apply">
					<iframe>
						<xsl:attribute name="src">
							<xsl:value-of select="/NewsDetail/ApplyUrl"></xsl:value-of>
						</xsl:attribute>
					</iframe>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsDetail/NewsOther">
		<ul>
			<li>
				<div class="title_hr_detail_right"><a href=""><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></a></div>
				<div class="date">
					<time>
						<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
					</time>
				</div>
			</li>
		</ul>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<!-- <div class="hr-detail__content">
			<h3>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</h3>
		</div>
		<div class="text">
			<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
		</div> -->
	</xsl:template>
</xsl:stylesheet>

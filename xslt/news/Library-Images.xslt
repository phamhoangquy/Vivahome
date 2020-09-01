<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<section class="library_image">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<xsl:apply-templates select="/NewsList/News[1]" mode="News1" />
					</div>
					<div class="col-lg-6">
						<div class="row">
							<xsl:apply-templates select="/NewsList/News" mode="News2" />
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-6 news_image_left">
						<div class="row">
							<xsl:apply-templates select="/NewsList/News" mode="News3" />
						</div>
					</div>
					<div class="col-lg-6">
						<xsl:apply-templates select="/NewsList/News[10]" mode="News4" />
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="News1">
		<div class="block-item">
			<div class="item__img">
				<a href="">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
					<div class="img_icon">
						<em class="material-icons">photo</em>
					</div>
				</a>
			</div>
			<div class="item__img-hover">
				<div class="content">
					<div class="desc">
						<h5><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h5>
						<div class="icon">
							<em class="material-icons">photo</em>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</xsl:template>
	<xsl:template match="News" mode="News2">
	  	<xsl:if test="position()&gt;1 and position()&lt;6">
			<div class="col-12 col-md-6 col-lg-6">
				<div class="block-item">
					<div class="item__img">
						<a href="">
							<img >
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
							<div class="img_icon">
								<em class="material-icons">photo</em>
							</div>
						</a>
					</div>
					<div class="item__img-hover">
						<div class="content">
							<div class="desc">
								<h5><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h5>
								<div class="icon">
									<em class="material-icons">photo</em>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="News3">
	  	<xsl:if test="position()&gt;5 and position()&lt;10">
			<div class="col-12 col-md-6 col-lg-6">
				<div class="block-item">
					<div class="item__img">
						<a href="">
							<img >
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
							<div class="img_icon">
								<em class="material-icons">photo</em>
							</div>
						</a>
					</div>
					<div class="item__img-hover">
						<div class="content">
							<div class="desc">
								<h5><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h5>
								<div class="icon">
									<em class="material-icons">photo</em>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="News4">
	  	<div class="card_img_news_image_right">
			<div class="block-item">
				<div class="item__img">
					<a href="">
						<img >
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
						<div class="img_icon">
							<em class="material-icons">photo</em>
						</div>
					</a>
				</div>
				<div class="item__img-hover">
					<div class="content">
						<div class="desc">
							<h5><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h5>
							<div class="icon">
								<em class="material-icons">photo</em>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
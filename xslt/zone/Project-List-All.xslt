<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:apply-templates select="Zone" mode='Child'></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode='Child'>
		<section class="news-project">
			<div class="container">

				<div class="row">
					<div class="col-lg-6">
						<xsl:apply-templates select="Zone" mode='Main'></xsl:apply-templates>

					</div>
					<div class="col-lg-6">
						<div class="row">
							<xsl:apply-templates select="Zone" mode='Sub'></xsl:apply-templates>

						</div>
					</div>
					<xsl:apply-templates select="Zone" mode='Sub-1'></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode='Main'>
		<xsl:if test="position()=1">

			<div class="card-body"><a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<div class="img"><img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<div class="content">
						<ul>
							<li> <a href="">
									<xsl:value-of disable-output-escaping="yes" select="RootTitle"></xsl:value-of>
								</a></li>
							<li> <a href="">
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</a></li>
							<li> <a href="">XEM THÊM</a><em class="mdi mdi-arrow-right"></em></li>
						</ul>
					</div>
				</a></div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Zone" mode='Sub'>
		<xsl:if test="position()> 1 and position() &lt; 6">

			<div class="col-12 col-md-6 col-lg-6"><a>


					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<div class="new-img">
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
						<div class="content">
							<ul>
								<li> <a href="">
										<xsl:value-of disable-output-escaping="yes" select="RootTitle"></xsl:value-of>
									</a></li>
								<li> <a href="">
										<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									</a></li>
								<li> <a href="">XEM THÊM</a><em class="mdi mdi-arrow-right"></em></li>
							</ul>
						</div>
					</div>
				</a></div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Zone" mode='Sub-1'>
		<xsl:if test="position()> 6 and position() &lt;10">

			<div class="col-12 col-md-6 col-lg-3"><a>


					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<div class="new-img">
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
						<div class="content">
							<ul>
								<li> <a href="">
										<xsl:value-of disable-output-escaping="yes" select="RootTitle"></xsl:value-of>
									</a></li>
								<li> <a href="">
										<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									</a></li>
								<li> <a href="">XEM THÊM</a><em class="mdi mdi-arrow-right"></em></li>
							</ul>
						</div>
					</div>
				</a></div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

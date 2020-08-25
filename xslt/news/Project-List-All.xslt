<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="news-project">
			<div class="container">

				<div class="row">
					<div class="col-lg-6">
						<xsl:apply-templates select="/NewsList/News" mode='Main'>
							<xsl:with-param select="/NewsList/ZoneTitle" name="ZoneTitle" />
						</xsl:apply-templates>

					</div>
					<div class="col-lg-6">
						<div class="row">
							<xsl:apply-templates select="/NewsList/News" mode='Sub'>
								<xsl:with-param select="/NewsList/ZoneTitle" name="ZoneTitle1" />
							</xsl:apply-templates>

						</div>
					</div>
					<xsl:apply-templates select="/NewsList/News" mode='Sub-1'>
						<xsl:with-param select="/NewsList/ZoneTitle" name="ZoneTitle2" />
					</xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='Main'>
		<xsl:param name="ZoneTitle"></xsl:param>
		<xsl:if test="position()=1">

			<div class="card-body">
				<div class="img">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
			</div>
			<div class="content">
				<ul>
					<li> <a href="">
							<xsl:value-of disable-output-escaping="yes" select="$ZoneTitle"></xsl:value-of>
						</a></li>
					<li> <a href="">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a></li>
					<li> <a href="">XEM THÊM</a><em class="mdi mdi-arrow-right"></em></li>
				</ul>
			</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='Sub'>
		<xsl:param name="ZoneTitle1"></xsl:param>
		<xsl:if test="position()> 1 and position() &lt; 6">

			<div class="col-12 col-md-6 col-lg-6">
				<div class="new-img">
					<div class="img">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>

					</div>
					<div class="content">
						<ul>
							<li> <a href="">
									<xsl:value-of disable-output-escaping="yes" select="$ZoneTitle1"></xsl:value-of>
								</a></li>
							<li> <a href="">
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</a></li>
							<li> <a href="">XEM THÊM</a><em class="mdi mdi-arrow-right"></em></li>
						</ul>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='Sub-1'>
		<xsl:param name="ZoneTitle2"></xsl:param>
		<xsl:if test="position()> 6 and position() &lt;10">
			<div class="col-12 col-md-6 col-lg-3">
				<div class="new-img">
					<div class="img">
						<a>

							<xsl:attribute name="SubTitle">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>

					</div>
					<div class="content">
						<ul>
							<li>
								<xsl:value-of disable-output-escaping="yes" select="$ZoneTitle2"></xsl:value-of>
							</li>
							<li>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</a>
							</li>
							<li> XEM THÊM
								</a><em class="mdi mdi-arrow-right"></em></li>
						</ul>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

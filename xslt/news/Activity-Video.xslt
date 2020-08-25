<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class='row'>
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="News">
			<xsl:if test="position()=1">
				<div class="col-lg-12">
					<div class="figure-media">
						<div class="figure-image media-play">
							<div class="wrapper">

								<a>
									<xsl:attribute name="data-fancybox">
										<xsl:text>gallery-</xsl:text>
										<xsl:value-of disable-output-escaping="yes" select="position()">
										</xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="href">
										<xsl:value-of disable-output-escaping="yes" select="BriefContent">
										</xsl:value-of>
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
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

							</div>
							<div class="caption">
								<div class="icon"><img src="/Data/Sites/1/skins/default/img/play-icon.png" alt="" />
								</div>
								<div class="text">
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</div>
							</div>
						</div>
					</div>
				</div>
			</xsl:if>
			<xsl:if test="position()=2">
				<div class="col-12 col-md-6 col-lg-6">
					<div class="figure-media">
						<div class="figure-image media-play">
							<div class="wrapper">

								<a>
									<xsl:attribute name="data-fancybox">
										<xsl:text>gallery-</xsl:text>
										<xsl:value-of disable-output-escaping="yes" select="position()">
										</xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="href">
										<xsl:value-of disable-output-escaping="yes" select="BriefContent">
										</xsl:value-of>
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
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

							</div>
							<div class="caption">
								<div class="icon"><img src="/Data/Sites/1/skins/default/img/play-icon.png" alt="" />
								</div>
								<div class="text">
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</div>
							</div>
						</div>
					</div>
				</div>
			</xsl:if>
			<xsl:if test="position()=3">
				<div class="col-12 col-md-6 col-lg-6">
					<div class="figure-media">
						<div class="figure-image media-play">
							<div class="wrapper">

								<a>
									<xsl:attribute name="data-fancybox">
										<xsl:text>gallery-</xsl:text>
										<xsl:value-of disable-output-escaping="yes" select="position()">
										</xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="href">
										<xsl:value-of disable-output-escaping="yes" select="BriefContent">
										</xsl:value-of>
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
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

							</div>
							<div class="caption">
								<div class="icon"><img src="/Data/Sites/1/skins/default/img/play-icon.png" alt="" />
								</div>
								<div class="text">
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</div>
							</div>
						</div>
					</div>
				</div>
			</xsl:if>

	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">

		<xsl:if test="position()=1">

			<section class="hr-tanthinh">
				<div class="container">
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

			<section class="form-hr">
				<div class="container">
					<div class="head-title line">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="card-body">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">STT</th>
											<th scope="col">Vị trí tuyển dụng </th>
											<th scope="col">Số lượng</th>
											<th scope="col">Khu vực</th>
											<th scope="col">Thời hạn</th>
										</tr>
									</thead>
									<tbody>
										<xsl:apply-templates select="News" mode='News-2'></xsl:apply-templates>

									</tbody>
								</table>
							</div>
						</div>
						<div class="col-lg-4"></div>

					</div>
				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<tr>
			<td>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</td>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</td>
			<td>
				<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</td>
			<td><xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of></td>
		</tr>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<div class="col-lg-6 hr">
			<div class="card-body">
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
			</div>
		</div>
		<div class="col-lg-6 hr">
			<div class="content">
				<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

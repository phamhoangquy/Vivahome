<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">
	<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<section class="block_hr_1">
				<div class="container">
					<div class="block_title_hr">
						<div class="head-title">
							<h1>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</h1>
						</div>
					</div>
					<div class="row">
						<xsl:apply-templates select="News" mode='hr-1'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="block_hr_2">
				<div class="container">
					<div class="block_title_hr">
						<div class="head-title">
							<h1>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</h1>
						</div>
					</div>
					<div class="row">
						<xsl:apply-templates select="News" mode='hr-2'></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">
			<section class="block_hr_3">
				<div class="container">
					<div class="block_title_hr">
						<div class="head-title">
							<h1>vị trí tuyển dụng</h1>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="card-body">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">STT</th>
											<th scope="col">VỊ TRÍ TUYỂN DỤNG</th>
											<th scope="col">SỐ LƯỢNG</th>
											<th scope="col">ĐỊA ĐIỂM</th>
											<th scope="col">HẠN NỘP</th>
										</tr>
									</thead>
									<tbody>
										<xsl:apply-templates select="News" mode='hr-3'></xsl:apply-templates>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='hr-1'>
		<div class="col-lg-6">
			<div class="card_img_hr">
				<div class="img shine">
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
		<div class="col-lg-6 hr">
			<!-- <div class="background">
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
			</div> -->
			<div class="content_hr">
				<div class="card_title_hr">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
				</div>
				<div class="caption_hr">
					<p>
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='hr-2'>
		<xsl:if test="position()=1">
			<div class="col-6 col-md-6 col-lg-3">
				<div class="education">
					<div class="card_img">
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
					<div class="education_content">
						<ul>
							<li>
								<strong><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></strong>
								<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</xsl:if>
			<xsl:if test="position()=2">
				<div class="col-6 col-md-6 col-lg-3">
				<div class="education">
						<div class="card_img">
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
					<div class="education_content">
						<ul>
							<li>
								<strong><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></strong>
								<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</xsl:if>
			<xsl:if test="position()=3">
			<div class="col-6 col-md-6 col-lg-3">
				<div class="education">
						<div class="card_img">
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
					<div class="education_content">
						<ul>
							<li>
								<strong><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></strong>
								<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</xsl:if>
			<xsl:if test="position()=4">
			<div class="col-6 col-md-6 col-lg-3">
				<div class="education">
						<div class="card_img">
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
					<div class="education_content">
						<ul>
							<li>
								<strong><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></strong>
								<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='hr-3'>
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
</xsl:stylesheet>
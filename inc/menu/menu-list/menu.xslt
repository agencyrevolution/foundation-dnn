<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:param name="ControlID" />
	<xsl:param name="Options" />
	<xsl:param name="subMenuColumns">3</xsl:param>
	<xsl:param name="subpointer"><![CDATA[&raquo;&nbsp;]]></xsl:param>
	<xsl:param name="pointer"><![CDATA[&nbsp;&raquo;]]></xsl:param>
	<xsl:param name="startUl"><![CDATA[<ul>]]></xsl:param>
	<xsl:param name="endUl"><![CDATA[</ul>]]></xsl:param>
	<xsl:template match="/*">
		<xsl:apply-templates select="root" />
	</xsl:template>
	<xsl:template match="root">
			<xsl:apply-templates select="node">
				<xsl:with-param name="level" select="0"/>
			</xsl:apply-templates>
	</xsl:template>
	<xsl:template match="node">
		<xsl:param name="level" />
		<xsl:choose>
			<xsl:when test="$level=0">
				<li>
					<a>
						<xsl:attribute name="class">drop<xsl:if test="@breadcrumb = 1"> current</xsl:if><xsl:if test="node"> hasChildren</xsl:if> </xsl:attribute>
						<xsl:choose>
							<xsl:when test="@enabled = 1">
								<xsl:attribute name="href">
									<xsl:value-of select="@url"/>
								</xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="href">#</xsl:attribute>
								<xsl:attribute name="onclick">return false</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:value-of select="@text" />
					</a>
				</li>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>

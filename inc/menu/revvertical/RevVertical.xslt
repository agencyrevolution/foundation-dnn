<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/*">
		<xsl:apply-templates select="root" />
	</xsl:template>
	<xsl:template match="root">
    <div class="box sectnav hide-for-small">
		<ul>
			<xsl:apply-templates select="node" />
		</ul>
    </div>
	</xsl:template>
	<xsl:template match="node">
		<li>
			<xsl:attribute name="class">
        <xsl:text>sl</xsl:text>
				<xsl:if test="@first = 1"><xsl:text>&#32;</xsl:text>top</xsl:if>
				<xsl:if test="@last = 1"><xsl:text>&#32;</xsl:text>btm</xsl:if>
				<xsl:if test="@selected = 1"><xsl:text>&#32;</xsl:text>selected</xsl:if>
        <xsl:if test="@enabled = 0"><xsl:text>&#32;</xsl:text>nolnk</xsl:if>
			</xsl:attribute>
			<xsl:attribute name="rel">
        <xsl:value-of select="@id" />
			</xsl:attribute>
			<xsl:choose>
				<xsl:when test="@enabled = 1">
					<a href="{@url}" class="pg">
						<xsl:value-of select="@text" />
					</a>
				</xsl:when>
				<xsl:otherwise>
          <a href="#" class="pg">
					  <xsl:value-of select="@text" />
          </a>
        </xsl:otherwise>
			</xsl:choose>
			<xsl:if test="node">
				<ul>
					<xsl:apply-templates select="node" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>

</xsl:stylesheet>

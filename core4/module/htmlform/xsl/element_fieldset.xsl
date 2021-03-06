<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="//forms/form//formelements/fieldset" mode="formelement">
    <fieldset>
        <xsl:if test="class != ''"><xsl:attribute name="class"><xsl:value-of select="class" /></xsl:attribute></xsl:if>
        <xsl:if test="dir != ''"><xsl:attribute name="dir"><xsl:value-of select="dir" /></xsl:attribute></xsl:if>
        <xsl:if test="id != ''"><xsl:attribute name="id"><xsl:value-of select="id" /></xsl:attribute></xsl:if>
        <xsl:if test="style != ''"><xsl:attribute name="style"><xsl:value-of select="style" /></xsl:attribute></xsl:if>
        <xsl:if test="title != ''"><xsl:attribute name="title"><xsl:value-of select="title" /></xsl:attribute></xsl:if>
        <xsl:if test="lang != ''"><xsl:attribute name="lang"><xsl:value-of select="lang" /></xsl:attribute></xsl:if>

        <xsl:if test="events/onkeydown != ''"><xsl:attribute name="onkeydown"><xsl:value-of select="events/onkeydown" disable-output-escaping="yes" /></xsl:attribute></xsl:if>
        <xsl:if test="events/onkeypress != ''"><xsl:attribute name="onkeypress"><xsl:value-of select="events/onkeypress" disable-output-escaping="yes" /></xsl:attribute></xsl:if>
        <xsl:if test="events/onkeyup != ''"><xsl:attribute name="onkeyup"><xsl:value-of select="events/onkeyup" disable-output-escaping="yes" /></xsl:attribute></xsl:if>

        <xsl:if test="events/onclick != ''"><xsl:attribute name="onclick"><xsl:value-of select="events/onclick" disable-output-escaping="yes" /></xsl:attribute></xsl:if>
        <xsl:if test="events/ondblclick != ''"><xsl:attribute name="ondblclick"><xsl:value-of select="events/ondblclick" disable-output-escaping="yes" /></xsl:attribute></xsl:if>
        <xsl:if test="events/onmousedown != ''"><xsl:attribute name="onmousedown"><xsl:value-of select="events/onmousedown" disable-output-escaping="yes" /></xsl:attribute></xsl:if>
        <xsl:if test="events/onmousemove != ''"><xsl:attribute name="onmousemove"><xsl:value-of select="events/onmousemove" disable-output-escaping="yes" /></xsl:attribute></xsl:if>
        <xsl:if test="events/onmouseout != ''"><xsl:attribute name="onmouseout"><xsl:value-of select="events/onmouseout" disable-output-escaping="yes" /></xsl:attribute></xsl:if>
        <xsl:if test="events/onmouseover != ''"><xsl:attribute name="onmouseover"><xsl:value-of select="events/onmouseover" disable-output-escaping="yes" /></xsl:attribute></xsl:if>
        <xsl:if test="events/onmouseup != ''"><xsl:attribute name="onmouseup"><xsl:value-of select="events/onmouseup" disable-output-escaping="yes" /></xsl:attribute></xsl:if>

		<xsl:apply-templates select="datas" />

        <xsl:if test="legend">
            <xsl:apply-templates select="legend" mode="formelement" />
        </xsl:if>

        <xsl:apply-templates select="formelements" />
    </fieldset>
</xsl:template>

</xsl:stylesheet>
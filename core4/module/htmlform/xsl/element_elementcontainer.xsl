<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="//forms/form//formelements/elementcontainer" mode="formelement">
    <div class="elementcontainer">
        <xsl:apply-templates select="formelements" />
    </div>
    <span>
        <xsl:value-of select="value" />
    </span>
    <div class="clear"></div>
</xsl:template>

</xsl:stylesheet>
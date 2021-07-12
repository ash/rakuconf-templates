<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:str="https://perlcon.eu/strings">

<xsl:import href="layout.xslt"/>

<xsl:template name="title">
    <xsl:text>Raku Conference Talks</xsl:text>
</xsl:template>

<xsl:template name="footer">
    <xsl:call-template name="short-footer"/>
</xsl:template>

<xsl:template match="content">
    <xsl:if test="not(talks/item)">
        <p>There are no talks submitted yet. Consider giving a talk at the Raku Conference!</p>
    </xsl:if>

    <xsl:for-each select="talks/item">
        <p class="followed">
            <b>
                <a href="/talk/{@id}">
                    <xsl:value-of select="@title"/>
                </a>
            </b>
            <xsl:text>&#160;&#8212; </xsl:text>
            <a href="/user/{@profile_url}">
                <xsl:value-of select="@name"/>
            </a>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="@duration"/>
            <xsl:text> minutes; </xsl:text>
            <xsl:value-of select="@status"/>
        </p>
        <p class="note shift">
            <xsl:value-of select="@abstract" disable-output-escaping="yes"/>
        </p>
    </xsl:for-each>

    <p class="button">
        <br/><br/>
        <a class="button" href="/talks/submit">Submit a new talk</a>
    </p>
</xsl:template>

</xsl:stylesheet>

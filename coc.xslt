<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:str="https://perlcon.eu/strings">

<xsl:import href="layout.xslt"/>

<xsl:template name="title">
    <xsl:text>Code of Conduct</xsl:text>
</xsl:template>

<xsl:template name="footer">
    <xsl:call-template name="short-footer"/>
</xsl:template>

<xsl:template match="content">
    <h3>1. Purpose</h3>
    <p>Our community should be truly open for everyone. As such, we are committed to providing a friendly, safe and welcoming environment for all, regardless of gender, gender identity and expression, sexual orientation, disability, ethnicity, religion, or country of origin.</p>

    <p>This code of conduct outlines our expectations for participant behavior. We invite all sponsors, volunteers, speakers, attendees, vendors, and other participants to help us realize a safe and positive conference experience for everyone.</p>

    <h3>2. Scope</h3>
    <p>We expect all event participants (sponsors, volunteers, speakers, attendees, vendors, and other guests) to abide by this code of conduct at all conference venues (online or offline) and conference-related social events and media.</p>

    <h3>3. Expected Behavior</h3>
    <p>Be considerate, respectful, and collaborative.</p>
    <p>Refrain from demeaning, discriminatory or harassing behavior and speech.</p>
    <p>Be mindful of your surroundings and of your fellow participants.</p>
    <p>Alert conference organisers if you notice a dangerous situation or someone in distress.</p>

    <h3>4. Unacceptable Behavior</h3>
    <p>Unacceptable behaviors include: intimidating, harassing, abusive, discriminatory, derogatory or demeaning conduct by any attendees.</p>

    <p>Threats of violence: incitement of violence towards any individual, including encouraging a person to commit suicide or to engage in self-harm; sustained disruption of talks or other events.</p>
    
    <p>Harassment includes: offensive comments related to gender, gender identity and expression, sexual orientation, race, religion, or disability (including presentation slides); inappropriate use of nudity and/or sexual images (including presentation slides); deliberate intimidation, stalking or following; harassing photography or recording; deliberate misgendering or use of ‘dead’ or rejected names.</p>
    
    <h3>5. Consequences of Unacceptable Behavior</h3>
    <p>Unacceptable behavior by other attendees, organisers, venue staff, sponsors, or other participants is not tolerated.</p>

    <p>Anyone asked to stop unacceptable behavior is expected to comply immediately.</p>

    <p>If anyone engages in unacceptable behavior, the conference organisers may take the actions they deem appropriate including expulsion from the conference without warning and/or refund.</p>

    <h3>6. Reporting Incidents</h3>
    <p>If you are subject to unacceptable behavior, notice that someone else is being subject to unacceptable behavior, or have any other concerns, please notify the organisers by any channel of communication as soon as possible. If you do not know who these members are, ask any event organiser or volunteer for help.</p>

    <h3>7. License and attribution</h3>
    <p>Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0).</p>
</xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:str="https://perlcon.eu/strings">

<xsl:import href="layout.xslt"/>

<xsl:template name="title">
    <xsl:text>Terms and Conditions</xsl:text>
</xsl:template>

<xsl:template name="footer">
    <xsl:call-template name="short-footer"/>
</xsl:template>

<xsl:template match="content">
    <p><b>The Raku Conference</b> is an online event, which plans to become an annual offline event. In 2021, the conference is hosted online.</p>
    <p>The conference includes one full day (August 7) for the main program with the possibility to extend the program for the additional program, such as workshop or classes.</p>

    <h3>Tickets</h3>
    <p>Attending the conference is free of charge. To attend, you need to register. <a href="/buy/ticket">Donations</a> from the participants are appreciated.</p>

    <h3>Code of conduct</h3>
    <p>By attending the conference, you agree to behave as an educated adult human. For more details, please review the <a href="/coc">Code of Conduct</a>.</p>

    <h3>Privacy</h3>
    <p>We make everything we can to keep your data private and secure. The website is using an SSL connection, also during the payment process. Online payments are processed via a third-party payment gate <a href="https://www.mollie.com/en/contact/">Mollie</a>. We do not see your card or bank details if you do not leave them in the comments.</p>
    <p>You can always <a href="/contacts">contact</a> the organisers to request any information regarding the data that we keep on our side for your account.</p>
    <p>We use cookies to store pieces of information about your current browser session and ticket purchasing details. We use JavaScript to make the site more interactive. We use CSS to hide some parts of the site content depending on the resolution of the device you are viewing the site from.</p>
    <!-- <p>For analytics, we are using tracking codes from Google, Facebook, and vk.com.</p> -->

    <h3>Disclaimer</h3>
    <p>The conference organisers are not responsible for any potential damage to you or your soft- and hardware.</p>
    <p>We assume that the speakers use legal software and materials during their talks, classes and workshops. We are not responsible for any incorrect or false information given by the speakers and trainers and any negative effects as the result of using such information.</p>
    <!-- <p>We are not responsible for a missed check-in at the airport, cancelled flights, cold beaches or global warming.</p> -->
</xsl:template>

</xsl:stylesheet>

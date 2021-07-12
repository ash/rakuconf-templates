<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:str="https://perlcon.eu/strings">

<xsl:import href="layout.xslt"/>

<xsl:template name="title">
    <xsl:text>The Raku Conference Sponsors</xsl:text>
</xsl:template>

<xsl:template name="footer">
    <xsl:call-template name="short-footer"/>
</xsl:template>

<xsl:template match="content">
    <style>
        .container {
            position: relative;
            width: 100%;
            height: 0;
            padding-bottom: 56.25%;
            border: 1ps solid red;
        }
        .container iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
    </style>

    <h3>Gold Sponsor</h3>
    <div class="sponsor" style="border-bottom: 5px solid #0e87b3; padding-bottom: 2em;">
        <div>
            <p>
                <a href="https://www.perl-services.de/">
                    <img src="/i/edument.png" style="max-width: 300px"/>
                </a>
            </p>
            <p style="padding: 0 2em; text-align: left"><a href="https://www.edument.se/en">Edument</a> develops <a href="https://commaide.com/">Raku IDE Comma</a> and leads the development of <a href="https://cro.services/">Cro</a>, the most popular choice for building web services and applications in Raku. With Raku expertise extending all the way to the compiler and runtime, Edument delivers high-quality mentoring, consulting, and problem solving to clients using Raku in their development. Edument also has expertise in other areas beyond Raku, including <a href="https://www.edument.se/en/page/intellij-platform-development">developer tooling</a>, compiler and runtime development, C programming, and web development.</p>
        </div>
    </div>


    <h3>Why sponsoring?</h3>
    <p>The event is online, and it is free for the attendees. Nevertheless, there are lots of small and big expenses that we need to cover somehow. For example, a second internet connection to ensure it is stable on the day of the event, a lot of time invested in preparing and running the conference, costs for developing and hosting the site, costs for Zoom subscription, as well as investing in some new hardware. All that is a pleasure, but it will be even a stronger pleasure if the participants and the sponsors help to cover that.</p>

    <h3>Sponsor benefits</h3>
    <p>— Logo and information on the conference website and on all our social media.</p>
    <p>— Rotating the logo on the video stream during the talks.</p>
    <p>— A short video about the sponsor between the talks.</p>

    <h3>T-shirts</h3>
    <p>A separate invitation for those who want to sponsor printing (and sending!) the T-shirts. Currently, we are going to allow everyone to print their own T-shirt, but you can bring a huge improvement if you cover the cost of printing and sending them Worldwide.</p>

    <div class="als-wide" style="margin-bottom: 3em; margin-top: 3em;">
        <h3>Talk to us</h3>
        <p>Consider sponsoring The Raku Conference? That’s great to hear! Please contact us at <a href="mailto:mail@raku.online?subject=Sponsorship">mail@raku.online</a> to discuss the possibilities.</p>
    </div>


    <h3>Sponsor</h3>
    <div class="sponsor">
        <div>
            <p>
                <a href="https://www.perl-services.de/">
                    <img src="/i/sponsor/perlservices.png" style="max-width: 200px"/>
                </a>
            </p>
            <p>Perl-Entwicklung, Perl-Training, OTRS-Entwicklung</p>
        </div>
    </div>
    
    <h3>Organiser</h3>

    <div class="sponsor">
        <a href="https://deeptext.media">
            <img style="border-radius: 10px" src="/i/sponsor/deeptext.png"/>
        </a>
        <p>Publishing Raku books — Organising events — Including a couple of YAPC::Europe and <a href="https://perlcon.eu/">PerlCon 2019</a></p>
    </div>



</xsl:template>

</xsl:stylesheet>

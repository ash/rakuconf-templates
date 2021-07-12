<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:str="https://perlcon.eu/strings">

<xsl:import href="layout.xslt"/>

<xsl:template name="title">
    <xsl:text>The Raku Conference 2021 Online</xsl:text>
</xsl:template>

<xsl:template name="page-css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,700" rel="stylesheet"/>
</xsl:template>

<xsl:template name="footer">
    <xsl:call-template name="short-footer"/>
</xsl:template>

<xsl:template name="body">
    <xsl:call-template name="header"/>

    <style>
        .wide-content h1.main {
            font-family: 'Work Sans', sans-serif;
            font-size: 500%;
            margin: 30px 0 0 0;
            padding: 0;
            letter-spacing: 3px;
            color: white;
            border: none;
            text-align: left;
        }
        .wide-content h1.main span {
            padding: 0.01em 0.1em;
            display: inline-block;
            color: black;
        }

        .wide-content h2.main {
            font-family: 'Work Sans', sans-serif;
            font-size: 260%;
            font-weight: normal;
            padding: 0;
            margin: 0.5em 0 0 0;
            text-align: left;
        }
        .wide-content h2.main span.txt {
            padding: 0.01em 0.1em;
            display: inline-block;
        }
        .wide-content h2.main span.nobr {
            white-space: nowrap;
        }

        .wide-content .front {
            margin: 0 auto 4em auto;
            display: table;
        }
        .wide-content .front ul {
            display: table-row;
            text-align: center; 
            padding: 0;
            margin: 0;
        }
        .wide-content .front ul li {
            list-style-type: none;
            text-align: left;
            display: table-cell; 
            padding: 0;
            margin: 0;
            vertical-align: top;
        }
        .wide-content .front img {
            width: 200px;
            height: 200px;
            border-radius: 16px;
        }
        .wide-content .front p {
            font-size: 150%;
        }


        @media screen and (max-width: 1000px) {
            .wide-content h1.main {
                font-size: 400%;
                margin: 30px 0 0 0;
            }
            .wide-content h2.main {
                font-size: 200%;
            }
            .wide-content .front img {
                width: 220px;
                height: 220px;
            }
            .wide-content .front p {
                font-size: 120%;
            }
        }

        @media screen and (max-width: 850px) {
            .wide-content h1.main {
                font-size: 350%;
                margin: 20px 0 0 0;
            }
            .wide-content h2.main {
                font-size: 200%;
            }
            .wide-content .front img {
                width: 150px;
                height: 150px;
            }
        }

        @media screen and (max-width: 600px) {
            .wide-content h1.main {
                font-size: 300%;
                margin: 5px 0 0 0;
                text-align: center;
            }
            .wide-content h2.main {
                font-size: 200%;
                text-align: center;
            }
            .wide-content h1.main span {
                display: block;
            }
            .wide-content h2.main span.txt {
                display: block;
            }
            .wide-content .front img {
                width: 150px;
                height: 150px;
            }

            .wide-content .front ul {
                display: block;
            }
            .wide-content .front ul li {
                text-align: center;
                display: inline; 
            }
        }
    </style>

    <div class="content">
        <xsl:call-template name="countdown"/>
    </div>

    <xsl:if test="/page/manifest/request/cookies/item[@name = 'cart-id'] != '' and /page/manifest/request/path != '/my/cart'">
        <div class="cart-link">
            <a href="/my/cart">🛒 My Cart</a>
        </div>
    </xsl:if>
    

    <div class="wide-content">
        <div class="front">
            <ul>
                <li style="padding-left: 2em">
                    <img src="/i/trc2021.png" />
                </li>
                <li style="padding-left: 2em">
                    <h1 class="main">
                        <span>
                            <b>The Raku Conference</b><br/>
                            <!--xsl:text> 2021</xsl:text-->
                        </span>
                    </h1>
                    <h2 class="main">
                        <span class="txt">Online, <span class="nobr">August 7, 2021</span></span>
                    </h2>
                    
                    <p style="padding-left: 0.5em">
                        #rakulang
                        
                        <a href="https://www.facebook.com/rakuconference/"><img src="/i/facebook.png" style="width: 32px; height: 32px" alt="Facebook"/></a>
                        <xsl:text> </xsl:text>
                        <a href="https://twitter.com/rakuconference"><img src="/i/twitter.png" style="width: 32px; height: 32px" alt="Twitter"/></a>
                        <xsl:text> </xsl:text>
                        <a href="https://t.me/rakuconference"><img src="/i/telegram.png" style="width: 32px; height: 32px" alt="Telegram"/></a>
                        <xsl:text> </xsl:text>
                    </p>
                </li>
            </ul>
        </div>
    </div>

<!-- <style>
            .covers {
                display: flex;
                flex-direction: row;
                flex-wrap: wrap;
                justify-content: center;
                margin-bottom: 2em;
            }
            .covers div {
                width: 20%;
            }
            .covers div img {
                width: 100%;
            }
            @media screen and (max-width: 1200px) {
                .covers div {
                    width: 25%;
                }
            }
            @media screen and (max-width: 1000px) {
                .covers div {
                    width: 33.33%;
                }
            }
            @media screen and (max-width: 850px) {
                .covers div {
                    width: 50%;
                }
            }
            @media screen and (max-width: 600px) {
                .covers div {
                    width: 100%;
                }
            }
        </style>
        <div class="covers">
            <xsl:for-each select="/page/content/covers/item">
                <div>
                    <a href="{@url}">
                        <img src="{@file}"/>
                    </a>
                </div>
            </xsl:for-each>
        </div> -->


    <div class="content">

        <div style="background: #f5f5ea; padding: 0 1em 0.5em 1em;">
            <h3>News</h3>
            <p>We have more than 100 registered attendees so far!</p>
            <p>Please check the list of currently accepted <a href="/talks">talks</a>.</p>
            <p><a href="/t-shirt">T-shirt vector file</a> is ready for downloading and printing.</p>
        </div>

        <h3>What is the Raku Conference</h3>

        <p>The Raku Conference 2021 is the first ever conference entirely dedicated to the 🦋 <a href="https://raku.org/">Raku programming language</a>.</p>
        <p>This year, it takes place online on August 7, 2021 (Saturday). In the future, we are planning to make it offline too. The exact time will be announced later.</p>

        <h3>Call for participation</h3>
        <p>Registration to the conference is open! To attend the event, please register at this very website. If you are already registered, log in to your account. You can find all information about your participation, your talks, etc. at your ’<a href="/my">My Conference</a>’ page.</p>
        <p class="button">
            <a class="button row" href="/login">Log in</a>
            <a class="button row" href="/signup">Sign up</a>
        </p>


        <h3>Call for talks</h3>
        <p>Submit your talks! There are a few different formats that you can choose from. These include:</p>
        <ul>
            <p>— 5-minute lightning talk</p>
            <p>— 20-minute talk</p>
            <p>— 40-minute talk</p>
            <p>— 1.5-hour tutorial</p>
            <p>— 4-hour class</p>
            <p>— 8-hour workshop</p>
        </ul>
        <p>It is up to you to decide if you want to pre-record a talk or if you want to give it live. In either case, make sure to appear online after your talk to have an online QA session.</p>
        <p>Submit your talks before July 15. If you choose to pre-record it, we expect you to get a file before July 31.</p>
        <p class="button">
            <a class="button row" href="/talks/submit">Submit a talk</a>
        </p>

        <h3>Talk recordings</h3>
        <p>All the talks will be later published on YouTube. As a speaker, you may refuse to do it, but why should you?</p>

        <h3>Social media</h3>
        <p>The official Facebook page is <a href="https://www.facebook.com/rakuconference/">facebook.com/rakuconference</a>.</p>
        <p>Conference’s Twitter account: <a href="https://twitter.com/rakuconference">twitter.com/rakuconference</a>.</p>        
        <p>Telegram group: <a href="https://t.me/rakuconference">t.me/rakuconference</a>.</p>

        <h3>Conference T-shirt</h3>
        <p><a href="/t-shirt">Download a vector file</a> and print your copy of a conference T-shirt locally!</p>
        

        <h3>Technology</h3>
        <p>The conference will be streamed to Zoom and YouTube simultaneously. Question-and-answer sessions after the talks will be in Zoom.</p>
        <p>— As an attendee, you watch the talks in Zoom or on YouTube.</p>
        <p>— As a speaker during the talk, you have a separate channel in Skype to the organisers.</p>
        <p>— As a speaker after the talk, you connect to the main room in Zoom.</p>
        <p>— A pre-recorded talk is streamed to both Zoom and YouTube as usual.</p>
        <p>— For you as an <a href="/sponsors">advertiser or sponsor</a>, your ads will be integrated into both streams.</p>
        <p>There may be some changes in the above schema.</p>


        <h3><br/>Gold Sponsor</h3>
        <div class="sponsor">
            <div>
                <p>
                    <a href="https://www.edument.se/en">
                        <img src="/i/edument.png" style="max-width: 300px"/>
                    </a>
                </p>
                <p style="padding: 0 2em; text-align: left"><a href="https://www.edument.se/en">Edument</a> develops <a href="https://commaide.com/">Raku IDE Comma</a> and leads the development of <a href="https://cro.services/">Cro</a>, the most popular choice for building web services and applications in Raku. With Raku expertise extending all the way to the compiler and runtime, Edument delivers high-quality mentoring, consulting, and problem solving to clients using Raku in their development. Edument also has expertise in other areas beyond Raku, including <a href="https://www.edument.se/en/page/intellij-platform-development">developer tooling</a>, compiler and runtime development, C programming, and web development.</p>
            </div>
        </div>

        <h3><br/>Sponsor</h3>

        <div class="sponsors">
            <div>
                <p>
                    <a href="https://www.perl-services.de/">
                        <img src="/i/sponsor/perlservices.png" style="max-width: 200px"/>
                    </a>
                </p>
                <p>Perl-Entwicklung, Perl-Training, OTRS-Entwicklung</p>
            </div>
        </div>

        <h3>Sponsoring the event</h3>
        <p>Although the event is free for everyone, it is still a lot of efforts to organise, plan, and run it. You can help to cover the costs by buying a ticket or by becoming a sponsor. As a sponsor, you have the right to embed your commercial ads to the strings.</p>
        <p class="button">
            <a class="button row" href="/buy/ticket">Buy a ticket</a>
            <a class="button row" href="/sponsors">Become a sponsor</a>
        </p>

        <h3>Contact the organisers</h3>
        <p>You can always reach the organisers by sending an e-mail to <a href="mailto:mail@raku.online">mail@raku.online</a>.</p>

        <!-- <div class="container">
            <iframe src="https://www.youtube.com/embed/co-KcK92Qso" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="allowfullscreen"></iframe>
        </div> -->

        
        <style>
            .ads {
                background: #f5f5ea;
                padding: 0.5em 1em;
                min-height: 180px;
                position: relative;
                margin-top: 3em;
                padding-left: 50px;
                padding-right: 50px;
            }
            .ads h3 {
                padding-left: 180px;
                padding-top: 0;
            }
            .ads h4 {
                font-style: italic;
                font-weight: normal;
                padding-left: 180px;
                padding-top: 0;
                margin-top: 0;
                margin-bottom: 0;
            }
            .ads .img {
                float: left;
            }
            .ads .img img {
                width: 150px;                
                height: auto;                
            }
            .ads p {
                padding-left: 180px;
            }

            .ads .arrow-left {
                position: absolute;
                top: 50px;
                left: 0;
                width: 32px;
                height: 32px;
                background: lightgray;
                padding: 10px 0 0 5px;
                cursor: pointer;
                opacity: 0.5;
            }
            .ads .arrow-left img,
            .ads .arrow-right img {
                width: 22px;
                height: 22px;
            }
            .ads .arrow-left:hover {
                opacity: 1;
            }
            .ads .arrow-right {
                position: absolute;
                top: 50px;
                right: 0;
                width: 32px;
                height: 32px;
                background: lightgray;
                padding: 10px 0 0 5px;
                cursor: pointer;
                opacity: 0.5;
            }
            .ads .arrow-right:hover {
                opacity: 1;
            }

            @media screen and (max-width: 850px) {
                .ads .img {
                    display: block;
                    width: 100%;
                    padding-bottom: 1em;
                    text-align: center;
                }
                .ads h4 {
                    padding-left: 0;
                }
                .ads h3 {
                    padding-left: 0;
                }
                .ads p {
                    padding-left: 0;
                }
            }
        </style>
        <!-- <div class="ads">
            <div class="arrow-left" onclick="scroll_talk(-1)"><img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0OTIgNDkyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0OTIgNDkyOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjY0cHgiIGhlaWdodD0iNjRweCI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTE5OC42MDgsMjQ2LjEwNEwzODIuNjY0LDYyLjA0YzUuMDY4LTUuMDU2LDcuODU2LTExLjgxNiw3Ljg1Ni0xOS4wMjRjMC03LjIxMi0yLjc4OC0xMy45NjgtNy44NTYtMTkuMDMybC0xNi4xMjgtMTYuMTIgICAgQzM2MS40NzYsMi43OTIsMzU0LjcxMiwwLDM0Ny41MDQsMHMtMTMuOTY0LDIuNzkyLTE5LjAyOCw3Ljg2NEwxMDkuMzI4LDIyNy4wMDhjLTUuMDg0LDUuMDgtNy44NjgsMTEuODY4LTcuODQ4LDE5LjA4NCAgICBjLTAuMDIsNy4yNDgsMi43NiwxNC4wMjgsNy44NDgsMTkuMTEybDIxOC45NDQsMjE4LjkzMmM1LjA2NCw1LjA3MiwxMS44Miw3Ljg2NCwxOS4wMzIsNy44NjRjNy4yMDgsMCwxMy45NjQtMi43OTIsMTkuMDMyLTcuODY0ICAgIGwxNi4xMjQtMTYuMTJjMTAuNDkyLTEwLjQ5MiwxMC40OTItMjcuNTcyLDAtMzguMDZMMTk4LjYwOCwyNDYuMTA0eiIgZmlsbD0iI0ZGRkZGRiIvPgoJPC9nPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo="/></div>
            <div class="arrow-right" onclick="scroll_talk(1)"><img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0OTIuMDA0IDQ5Mi4wMDQiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ5Mi4wMDQgNDkyLjAwNDsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI2NHB4IiBoZWlnaHQ9IjY0cHgiPgo8Zz4KCTxnPgoJCTxwYXRoIGQ9Ik0zODIuNjc4LDIyNi44MDRMMTYzLjczLDcuODZDMTU4LjY2NiwyLjc5MiwxNTEuOTA2LDAsMTQ0LjY5OCwwcy0xMy45NjgsMi43OTItMTkuMDMyLDcuODZsLTE2LjEyNCwxNi4xMiAgICBjLTEwLjQ5MiwxMC41MDQtMTAuNDkyLDI3LjU3NiwwLDM4LjA2NEwyOTMuMzk4LDI0NS45bC0xODQuMDYsMTg0LjA2Yy01LjA2NCw1LjA2OC03Ljg2LDExLjgyNC03Ljg2LDE5LjAyOCAgICBjMCw3LjIxMiwyLjc5NiwxMy45NjgsNy44NiwxOS4wNGwxNi4xMjQsMTYuMTE2YzUuMDY4LDUuMDY4LDExLjgyNCw3Ljg2LDE5LjAzMiw3Ljg2czEzLjk2OC0yLjc5MiwxOS4wMzItNy44NkwzODIuNjc4LDI2NSAgICBjNS4wNzYtNS4wODQsNy44NjQtMTEuODcyLDcuODQ4LTE5LjA4OEMzOTAuNTQyLDIzOC42NjgsMzg3Ljc1NCwyMzEuODg0LDM4Mi42NzgsMjI2LjgwNHoiIGZpbGw9IiNGRkZGRkYiLz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K"/></div>
            <div class="img" id="AdPhoto">
                <img src="/i/speaker/dave-cross-1.jpg"/>
            </div>
            <h4 id="AdName">Dave Cross</h4>
            <h3 id="AdTitle"><a href="/talk/28">Measuring the Quality of your Perl Code</a></h3>
            <p id="AdAbstract">A few suggestions of ways you can measure the "quality" of your Perl code. Because once you can measure something, you can start to improve it.</p>
        </div>
        <div class="clear"></div> -->        
    </div>


    <!-- <script><![CDATA[
        var talks = [
            ['Dave Cross', 'Measuring the Quality of your Perl Code', '/talk/28', 'A few suggestions of ways you can measure the "quality" of your Perl code. Because once you can measure something, you can start to improve it.', '/i/speaker/dave-cross-1.jpg'],
            ['Thomas Klausner', 'Deploying Perl Apps using Docker, Gitlab & Kubernetes', '/talk/27', 'What we learned when we tried to deploy a set of Perl backends into the cloud. In this talk I\'ll explain the basics of Kubernetes, Docker and CI; describe how to make your app code cloud ready; and show you our current deployment pipeline.', '/i/speaker/thomas-klaussner-1.jpg'],
            ['Nicolas Rochelemagne', 'Overloading Perl OPs using XS', '/talk/25', 'Several CORE functions can be overloaded using CORE::GLOBAL:: override, but sometimes it’s not possible and XS is the alternate option to mock some Perl OPs. You are going to learn how to mock Perl OPs in XS and replace them by some convenient Pure Perl helpers using the FileCheck operators -X.', '/i/speaker/nicolas-rochelemagne-1.jpg'],
            ['Workshop by Jens Rehsack', 'Perl on Embedded Devices', '/class/embedded', 'As the goal of this workshop the participants learn the safe and reliable way to develop and deploy software on IoT devices. Being able to fulfill non-functional requirements as security updates is conceptionally included.', '/i/speaker/jens-rehsack-1.jpg'],
            ['Workshop by Jonathan Worthington', 'Perl 6 Concurrency and Parallelism', '/class/perl6-concurrency', 'This 1-day workshop explores a range of Perl 6 language features and modules for achieving asynchrony, coping with concurrency, and profiting from parallel processing. ', '/i/speaker/jonathan-worthington-1.jpg'],
            ['Rick Deller', 'Software Engineers are in Demand but which Language and how does Perl compare', '/talk/26', 'It will be a look at the software engineer market as a whole, what companies are hiring for what. What Languages are most in demand and how does Perl compare', '/i/speaker/rick-deller-1.jpg'],
        ];
        var current_talk = 0;
        function scroll_talk(n) {
            current_talk += n;
            if (current_talk < 0) current_talk = talks.length - 1;
            if (current_talk == talks.length) current_talk = 0;

            var talk = talks[current_talk];
            document.getElementById('AdPhoto').innerHTML = '<img src="' + talk[4] + '" />';
            document.getElementById('AdName').innerHTML = talk[0];
            document.getElementById('AdTitle').innerHTML = '<a href="' + talk[2] + '">' + talk[1] + '</a>';
            document.getElementById('AdAbstract').innerHTML = talk[3];
        }
    ]]>
    </script> -->
    <div class="wide-content">
        <!-- <h2><br/><span>Call for 2019 Keynotes</span></h2>
        <div class="speakers">
            <ul>
                <li style="width: 33%">
                    <img src="/i/speaker/web/sawyer.jpg"/>
                    <h4>Sawyer X</h4>
                    <h5><span>Perl 5: The past, the present, and one possible future</span></h5>
                    <p>7<sup>th</sup> August 10:10</p>
                </li>
                <li style="width: 33%">
                    <img src="/i/speaker/web/liz3.jpg"/>
                    <h4>Elizabeth Mattijsen</h4>
                    <h5><span>DeMythifying Perl&#160;6</span></h5>
                    <p>8<sup>th</sup> August 10:10</p>
                </li>
                <li style="width: 33%">
                    <img src="/i/speaker/jonathan-worthington.jpg"/>
                    <h4>Jonathan Worthington</h4>
                    <h5><span>Perl 6 Concurrency</span></h5>
                    <p>9<sup>th</sup> August 10:10</p>
                </li>
            </ul>
        </div> -->

        <!-- <div class="als-wide"> -->
            <!-- <h2><span>PerlCon 2019 Talk Topics</span></h2>
            <p class="center">We are planning to have an outstanding conference with brilliant talks. Here is our vision:</p>
            <div class="speakers">
                <ul>
                    <li>
                        <h3>Perl for Developers</h3>
                        <p class="date">Wednesday 7 August</p>
                        <div class="list">
                            <p><b>Larry’s keynote</b></p>
                            <p>Tools and utilities (and version control)</p>
                            <p>Parallel and concurrent programming</p>
                            <p>Highload techniques</p>
                            <p>Databases</p>
                            <p>Debugging</p>
                            <p>Frameworks</p>
                            <p>Data formats (JSON, etc.)</p>
                            <p>Regular expressions or regexes</p>
                            <p>CPAN</p>
                        </div>
                    </li>

                    <li>
                        <h3>Day 2<br/>Perl for Business</h3>
                        <p class="date">Thursday 8 August</p>
                        <div class="list">
                            <p>Language efficiency</p>
                            <p>Scalability</p>
                            <p>Working with legacy code</p>
                            <p>Perl and HR</p>
                            <p>Privacy, security and GDPR</p>
                            <p>Legal aspects and open source</p>
                            <p>Leading a community</p>
                            <p>Developers vs. non-developers</p>
                            <p>Perl non-standard way (e.g. IoT)</p>
                            <p>Women in programming</p>
                            <p>Perl and/for the web</p>
                            <p>Perl 5 vs Perl 6 in production</p>
                        </div>
                    </li>

                    <li>
                        <h3>Day 3<br/>Perl for the Future</h3>
                        <p class="date">Friday 9 August</p>
                        <div class="list">
                            <p><b>Jonathan’s keynote</b></p>
                            <p>Perl in education</p>
                            <p>Promoting Perl as a technology</p>
                            <p>Perl 6</p>
                            <p>Language design</p>
                            <p>The future of the language</p>
                            <p>Perl vs other languages</p>
                            <p>Perl for non-Perl developers</p>
                            <p>Other languages for Perl developers</p>
                            <p>Perl frameworks</p>
                        </div>
                    </li>
                </ul>
            </div> -->
        <!-- <p><br/></p>
        <p class="center">We are also interested in other programming languages. If you want to speak, let us know!</p>
        <p class="button">
            <a href="/talks/submit" class="button">Submit a talk</a>
        </p> -->

        <!-- <h2><br/>PerlCon 2019 Speakers</h2>
        <div class="faces">
            <xsl:variable name="speakers" select="/page/content/speakers/item"/>
            <xsl:for-each select="document('strings.xslt')/xsl:stylesheet/str:speaker/item"> 
                <xsl:variable name="speaker" select="$speakers[@user_id = current()/@id]"/>  
                <xsl:choose>
                    <xsl:when test="@id != ''">
                        <a href="/user/{$speaker/@profile_url}">
                            <div>
                                <img src="/i/speaker/web/{@img}-1.jpg"/>
                                <p>
                                    <xsl:value-of select="text()"/>
                                </p>
                            </div>
                        </a>
                    </xsl:when>
                    <xsl:otherwise>
                        <div>
                            <img src="/i/speaker/web/{@img}-1.jpg"/>
                            <p>
                                <xsl:value-of select="text()"/>
                            </p>
                        </div>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </div> -->
        <!-- </div> -->
    </div>

    <!-- <div class="content">
        <h2><br/>Panel Discussions</h2>
        <p>During the main days of the conference, we are planning to host a few discussion panels.</p>
        <ul class="topics">
            <li>Perl names and versions</li>
            <li>Perl 5 vs Perl 6</li>
            <li>Moose vs Perl 6 classes</li>
            <li>Perl vs non-Perl</li>
            <li>Perl speed</li>
        </ul>

    </div> -->

   
    <div class="wide">
        <div class="workshops">
            <!-- <p>
                <a href="/class/perl6">
                    <img src="/i/speaker/class-perl6.png"/>
                </a>
            </p>
            <p>
                <a href="/class/dancer2">
                    <img src="/i/speaker/class-dave-cross.png"/>
                </a>
            </p> -->
            <!-- <p>
                <a href="/class/perl6-concurrency">
                    <img src="/i/speaker/class-jonathan-worthington.png"/>
                </a>
            </p> -->
            <!-- <p>
                <a href="/class/embedded">
                    <img src="/i/speaker/class-jens-rehsack.png"/>
                </a>
            </p> -->
        </div>
    </div>

<!--  


    <div class="content als-wide">
        <h2><span>PerlCon 2019 News</span></h2>       
        <p><b>10<sup>th</sup> August. </b> <a href="/news/news-aug10">Konference ir slēgta</a>: thank you, postcards, post-reports, recorded video streams.</p> 
        <p><b>29<sup>th</sup> July. </b> <a href="/news/news-july29">Planning and entertaining</a>: PerlCon 2020, schedule, events location, sponsors.</p>
        <p><b>15<sup>th</sup> July. </b> <a href="/news/news-july15">A non-stoppable approach</a>: tickets, extra programme, schedule, new keynote speaker, call for lighting talks, new sponsor.</p>
        <p><b>30<sup>th</sup> June. </b> <a href="/news/news-june30">Action required</a>: check your T-shift size, choose your food preferences, confirm your talk(s) and don’t forget about reserving a hotel room.</p>
        <p><b>20<sup>th</sup> May. </b> <a href="/news/news-may20">The Roadmap</a>: our newsletter containing updates about the talks, master classes, some attendee statistics and some preliminary information about pre-conference meetings.</p>
        <p><b>16<sup>th</sup> May. </b> Our hotel room offer is over. All the rooms that we have at the special discounted prices are sold out. We are working on getting more rooms from the hotel or from another nearby hotel. Please email us if you would like to be added to the waiting list.</p>
        <p><b>7<sup>th</sup> May. </b> N.B. The <a href="/tickets">Late-bird prices</a> will expire on 18<sup>th</sup> May. After that date, the tickets will be more expensive. Make sure you get yours at the best price!</p>
        <p><b>6 May. </b> <a href="/news/news-may">Three months to go</a>: our May newsletter covering talks, entertainment program, our hotel facilities, and new sponsors.</p>
        <p><b>1 April.</b> During the next two weeks, up to 14th of April, you can <a href="/tickets">buy our conference tickets</a> at a reduced Late Bird price. Be quick!</p>
        <p><b>26 March.</b> Welcome to our <a href="/shop">Conference Shop</a>, where you can buy individual items such as lunch, dinner, a ticket to the river cruise, a hotel room, or a taxi transfer.</p>
        <p><b>22 March. </b> A new item in the entertainment program: <a href="/extras/river-cruise">River Cruise</a> along Daugava at the end of the third day of the conference. Tickets are available.</p>
        <p><b>11 March. </b> <a href="/news/news-march">A lot of Spring news</a>: new talks, lightning talks sessions, workshops sales launch, the deadline for the early-bird tickets, a new hotel room type available, Send-a-newbie program, and new sponsors.</p>
        <p><b>26 February.</b> PerlCon will be presented at the German Perl Workshop 2019 in Munich. Come by to get the latest news about the conference!</p>
        <p><b>24 February.</b> We have four workshops submitted for the conference. Reserve the dates to attend! Sales open very soon.</p>
        <p><b>19 February.</b> Breaking news! We just got a limited offer of cheaper rooms at the Daugava hotel (<a href="/venue">PerlCon’s venue</a>). Make sure you <a href="https://perlcon.eu/tickets">buy a ticket</a> now to reserve the room at the price of €90 including breakfast and free cancellation!</p>
        <p><b>15 February.</b> Consider sponsoring PerlCon! We have prepared a sponsorship proposal. Contact us at <a href="mailto:mail@perlcon.eu">mail@perlcon.eu</a> to discuss it.</p>
        <p><b>1 February. </b> PerlCon is presented at the Perl Booth at FOSDEM in Brussels on weekend 2-3 February.</p>
        <p><b>21 January. </b> <a href="/news/call-for-talks">Call for talks</a></p>
        <p><b>21 January. </b> <a href="/news/call-for-participation">Call for participation</a></p>
        <p><br/></p>
    </div> -->

    
    

    <xsl:call-template name="footer"/>
</xsl:template>

</xsl:stylesheet>

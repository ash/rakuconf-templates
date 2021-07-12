<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:str="https://perlcon.eu/strings">

<xsl:import href="layout.xslt"/>

<xsl:template name="title">
    <xsl:text>Submit a Talk to the Raku Conference</xsl:text>
</xsl:template>

<xsl:template name="footer">
    <xsl:call-template name="short-footer"/>
</xsl:template>

<xsl:template match="content">
    <xsl:call-template name="status"/>

    <xsl:if test="not(/page/manifest/user)">
        <br/><br/>
        <p class="button">
            <a href="/login" class="button row">Log in</a>
            <a href="/signup" class="button row">Sign up</a>
        </p>
    </xsl:if>

    <xsl:if test="/page/manifest/user and not(/page/content/talk)">
        <div>
            <p>Submit a new conferene talk here. Please fill the fields as accurately as you can at this moment. You can always modify the details later.</p>
            <p><br/></p>
            <form method="post" class="spacy">
                <p>
                    <xsl:text>Title</xsl:text>
                    <span class="ok" id="TitleOK">&#10003;</span>
                    <br/>
                    <input type="text" class="wide" value="{/page/manifest/request/arguments/item[@name = 'title']}" name="title" id="Title" onchange="checkfields()" onkeyup="checkfields()"/>
                </p>
                <!-- <p>
                    <xsl:text>Abstract (one or two sentences)</xsl:text>
                    <span class="ok" id="AbstractOK">&#10003;</span>
                    <br/>
                    <textarea class="wide" id="Abstract" name="abstract" onchange="checkfields()" onkeyup="checkfields()">
                        <xsl:value-of select="/page/manifest/request/arguments/item[@name = 'abstract']" disable-output-escaping="yes"/>
                    </textarea>
                </p> -->
                <p>
                    <!-- <xsl:text>Description (a full description of the talk)</xsl:text> -->
                    <xsl:text>Description</xsl:text>
                    <span class="ok" id="DescriptionOK">&#10003;</span>
                    <br/>
                    <textarea class="high" id="Description" name="description" onchange="checkfields()" onkeyup="checkfields()">
                        <xsl:value-of select="/page/manifest/request/arguments/item[@name = 'description']" disable-output-escaping="yes"/>
                    </textarea>
                </p>
                <p>
                    <xsl:text>Tags (comma-separated)</xsl:text>
                    <br/>
                    <input type="text" class="wide" value="{/page/manifest/request/arguments/item[@name = 'tags']}" name="tags"/>              
                </p>
                <!-- <p>
                    <xsl:text>Programming languages</xsl:text>
                    <br/>
                    <label>
                        <input type="checkbox" name="tag_perl5" value="1">
                            <xsl:if test="/page/manifest/request/arguments/item[@name = 'tag_perl5'] = 1">
                                <xsl:attribute name="checked">checked</xsl:attribute>
                            </xsl:if>
                        </input>
                        <xsl:text> 🐪 Perl 5</xsl:text>
                    </label>
                    <br/>
                    <label>
                        <input type="checkbox" name="tag_perl6" value="1">
                            <xsl:if test="/page/manifest/request/arguments/item[@name = 'tag_perl6'] = 1">
                                <xsl:attribute name="checked">checked</xsl:attribute>
                            </xsl:if>
                        </input>
                        <xsl:text> 🦋 Perl 6</xsl:text>
                    </label>
                </p> -->

                <p>
                    <xsl:text>Target audience</xsl:text>
                    <br/>
                    <select name="audience">
                        <xsl:for-each select="document('strings.xslt')/xsl:stylesheet/str:audience/item">
                            <option value="{@value}">
                                <xsl:value-of select="text()"/>
                            </option>
                        </xsl:for-each>
                    </select>
                </p>

                <p>
                    <xsl:text>Talk duration</xsl:text>
                    <br/>
                    <select name="duration">
                        <xsl:for-each select="document('strings.xslt')/xsl:stylesheet/str:duration/item">
                            <option value="{@value}">
                                <xsl:value-of select="text()"/>
                            </option>
                        </xsl:for-each>                        
                    </select>
                </p>

                <p>
                    <xsl:text>Talk-related URLs (slides, GitHub, video)</xsl:text>
                    <br/>
                    <input type="text" class="wide" value="{/page/manifest/request/arguments/item[@name = 'url1']}" name="url1"/>
                    <br/><br/>
                    <input type="text" class="wide" value="{/page/manifest/request/arguments/item[@name = 'url2']}" name="url2"/>
                    <br/><br/>
                    <input type="text" class="wide" value="{/page/manifest/request/arguments/item[@name = 'url3']}" name="url3"/>
                </p>

                <h3>Comments to the organisers</h3>
                <p>Please tell us if you prefer to speak live or prepare a recorded video upfront.</p>
                <p>Please also indicate the time of the day (and the timezone) when you’d like your talk to be scheduled at.</p>
                <p>
                    <br/>
                    <textarea class="wide" name="comments">
                        <xsl:value-of select="/page/manifest/request/arguments/item[@name = 'comments']" disable-output-escaping="yes"/>
                    </textarea>
                </p>

                <p class="button">
                    <input type="submit" name="submit" value="Submit" id="SendButton" disabled="disabled"/>
                </p>
            </form>

            <xsl:if test="/page/content/action-create">
                <p class="button">
                    <a href="/signup" class="button">Create account</a>
                </p>
            </xsl:if>
        </div>

        <script>
            function checkfields() {
                var title = document.getElementById('Title').value.trim();
                //var abstract = document.getElementById('Abstract').value.trim();
                var description = document.getElementById('Description').value.trim();

                var titleok = title.length > 5;
                //var abstractok = abstract.length > 20;
                var abstractok = 1;

                var descriptionok = description.length > 20;                

                document.getElementById('TitleOK').style.visibility = titleok ? 'visible' : 'hidden';
                //document.getElementById('AbstractOK').style.visibility = abstractok ? 'visible' : 'hidden';
                document.getElementById('DescriptionOK').style.visibility = descriptionok ? 'visible' : 'hidden';

                var status = (titleok &amp;&amp; abstractok &amp;&amp; descriptionok);

                var sendbutton = document.getElementById('SendButton');
                sendbutton.disabled = !status;
            }

            checkfields();
        </script>  
    </xsl:if>
</xsl:template>

</xsl:stylesheet>

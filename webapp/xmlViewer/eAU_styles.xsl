<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:fhir="http://hl7.org/fhir" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xd fhir xsi xhtml" version="1.0">
	<!-- Stylesheet für eAU Version 1.0.2 - Ausfertigung für Versicherte -->
    <xsl:template match="/">
        <xsl:apply-templates select="/fhir:Bundle"/>
    </xsl:template>
    <xsl:template match="fhir:Bundle[not(ancestor::fhir:Bundle)]">
        <html lang="de" xmlns="http://www.w3.org/1999/xhtml">
            <xsl:call-template name="printHead"/>
            <body>
				<div id="aussenrahmen">
                <table style="border: 1px solid black; ">
                    <!-- T1-->
                    <tbody>
                        <tr>
                            <td>
                                <table id="inhalt-oben">
                                    <!-- T2o-->
                                    <colgroup>
                                        <col style="width:27em"/>
                                        <col style="width:20em"/>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <td valign="top">
                                                <table style="width: 27em;  border-spacing:0; cellspacing:0; border-collapse:collapse; ">
                                                    <!-- T3ol-->
                                                    <colgroup>
                                                        <col style="width:27em"/>
                                                    </colgroup>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <xsl:call-template name="printPatient"/>
                                                            </td>
                                                        </tr>
													    <tr>
                                                            <td>
                                                                <!-- Placeholder in T3ol for T3or info-text -->
																<br/>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                    <!-- T3ol-->
                                                </table>
                                            </td>
                                            <td valign="top">
                                                <table style="width:19.4em;  table-layout:fixed">
                                                    <!--T3or-->
                                                    <colgroup>
                                                        <col style="width:2em"/>
                                                        <col style="width:13em"/>
                                                        <col style="width:4em"/>
                                                    </colgroup>
                                                    <tbody>
                                                        <tr>
                                                            <td class="hervorgehoben1" colspan="2">
                                                        Arbeitsunfähigkeits-
                                                    </td>
                                                            <td class="hervorgehoben1" align="right">
                                                      1
                                                    </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="hervorgehoben1" colspan="2" valign="top">
                                                        bescheinigung
                                                    </td>
                                                            <td/>
                                                        </tr>
                                                        <tr>
                                                            <td class="groesse1">
                                                                <span class="check">
                                                                    <xsl:choose>
                                                                        <xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:type/fhir:coding/fhir:code[@value='ERST' or @value='ERST_END']">
                                                                            <xsl:text>&#x2612;</xsl:text>
                                                                        </xsl:when>
                                                                        <xsl:otherwise>&#x2610;</xsl:otherwise>
                                                                    </xsl:choose>
                                                                </span>
                                                            </td>
                                                            <td class="hervorgehoben3" style="padding-top: 0.3em;">Erstbescheinigung</td>
                                                            <td/>
                                                        </tr>
                                                        <tr>
                                                            <td class="groesse1">
                                                                <span class="check">
                                                                    <xsl:choose>
                                                                        <xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:type/fhir:coding/fhir:code[@value='FOLGE' or @value='FOLGE_END']">
                                                                            <xsl:text>&#x2612;</xsl:text>
                                                                        </xsl:when>
                                                                        <xsl:otherwise>&#x2610;</xsl:otherwise>
                                                                    </xsl:choose>
                                                                </span>
                                                            </td>
                                                            <td class="hervorgehoben3" style="padding-top: 0.3em;">Folgebescheinigung</td>
                                                            <td/>
                                                        </tr>
                                                        <tr><td colspan="3"><br/></td></tr>
                                                    </tbody>
                                                </table>
                                                <!--T3or-->
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="border-spacing: 0; vertical-align: top; cellspacing: 0; border-collapse: collapse;  ">
                                                <table style="border-spacing:0; cellspacing:0; border-collapse: collapse;  ">
                                                    <!--T3ml-->
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <table style="width: 27em; border-spacing:0; cellspacing:0; border-collapse:collapse;  table-layout:fixed">
                                                                    <!--T4ml-->
                                                                    <colgroup>
                                                                        <col style="width:2em; "/>
                                                                        <col style="width:12em; "/>
                                                                        <col style="width:2em; "/>
                                                                        <col style="width:11em; "/>
                                                                    </colgroup>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="groesse1" style="cellspacing: 0;   border-collapse:collapse; ">
                                                                                <span class="check">
                                                                                    <xsl:choose>
                                                                                        <xsl:when test="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_AU|1.0.2']/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/condition-dueTo']/fhir:valueCodeableConcept/fhir:coding/fhir:code[@value='2']">
                                                                                &#x2612;
                                                                            </xsl:when>
                                                                                        <xsl:otherwise>
                                                                               &#x2610;
                                                                            </xsl:otherwise>
                                                                                    </xsl:choose>
                                                                                </span>
                                                                            </td>
                                                                            <td class="info" style="cellspacing: 0;  border-collapse:collapse; padding-top: 0.3em;">Arbeitsunfall, Arbeitsunfall- <br/>folgen, Berufskrankheit</td>
                                                                            <td class="groesse1" style="cellspacing: 0;  border-collapse:collapse; ">
                                                                                <span class="check">
                                                                                    <xsl:choose>
                                                                                        <xsl:when test="fhir:entry/fhir:resource/fhir:ServiceRequest/fhir:code/fhir:coding/fhir:code[@value='d_arzt']">
                                                                                            <xsl:text>&#x2612;</xsl:text>
                                                                                        </xsl:when>
                                                                                        <xsl:otherwise>
                                                                                            <xsl:text>&#x2610;</xsl:text>
                                                                                        </xsl:otherwise>
                                                                                    </xsl:choose>
                                                                                </span>
                                                                            </td>
                                                                            <td class="info" style="cellspacing: 0;  border-collapse:collapse; padding-top: 0.3em;">dem Durchgangsarzt<br/>zugewiesen</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="info" colspan="2">
                                                                                <xsl:text>arbeitsunfähig seit</xsl:text>
                                                                            </td>
                                                                            <td colspan="2" class="daten">
                                                                                <div align="center" style="border-bottom:1px solid black; background-color:white;">
                                                                                    <xsl:choose>
                                                                                        <xsl:when test="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_AU|1.0.2']/fhir:onsetPeriod/fhir:start/@value">
                                                                                            <xsl:call-template name="formatDate">
                                                                                                <xsl:with-param name="date" select="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_AU|1.0.2']/fhir:onsetPeriod/fhir:start/@value"/>
                                                                                            </xsl:call-template>
                                                                                        </xsl:when>
                                                                                        <xsl:otherwise>
                                                                                            <br/>
                                                                                        </xsl:otherwise>
                                                                                    </xsl:choose>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="info" colspan="2">voraussichtlich arbeitsunfähig <br/>bis einschließlich oder letzter <br/>Tag der Arbeitsunfähigkeit</td>
                                                                            <td colspan="2" class="daten">
                                                                                <div align="center" style="border-bottom:1px solid black;  background-color:white;">
                                                                                    <input type="date" id="onsetperiodend">
                                                                                        <xsl:attribute name="value">
                                                                                            <xsl:choose>
                                                                                                <xsl:when test="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_AU|1.0.2']/fhir:onsetPeriod/fhir:end/@value">
                                                                                                    <xsl:call-template name="formatDate">
                                                                                                        <xsl:with-param name="date" select="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_AU|1.0.2']/fhir:onsetPeriod/fhir:end/@value"/>
                                                                                                    </xsl:call-template>
                                                                                                </xsl:when>
                                                                                                <xsl:otherwise>
                                                                                                    
                                                                                                </xsl:otherwise>
                                                                                            </xsl:choose>
                                                                                        </xsl:attribute>
                                                                                    </input>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="info" colspan="2">festgestellt am</td>
                                                                            <td colspan="2" class="daten">
                                                                                <div align="center" style="border-bottom:1px solid black; background-color:white;">
                                                                                    <xsl:choose>
                                                                                        <xsl:when test="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_AU|1.0.2']/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/condition-assertedDate']/fhir:valueDateTime/@value">
                                                                                            <xsl:call-template name="formatDate">
                                                                                                <xsl:with-param name="date" select="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_AU|1.0.2']/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/condition-assertedDate']/fhir:valueDateTime/@value"/>
                                                                                            </xsl:call-template>
                                                                                        </xsl:when>
                                                                                        <xsl:otherwise>
                                                                                            <br/>
                                                                                        </xsl:otherwise>
                                                                                    </xsl:choose>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4" class="hervorgehoben3" style="align: center;">
                                                                                <br/>
                                                                                <br/>
                                                                                <div style="border:2px solid black; text-align: center;">Ausfertigung für Versicherte</div>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!-- T4ml -->
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <!-- T3ml -->
                                            </td>
                                            <td valign="top">
                                                <xsl:call-template name="printAusstellender"/>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- T2o -->
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="border-bottom:1px solid black; width:100%; ">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:call-template name="printDiagnosen"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <!--T1-->
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template name="printHead">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            <title>
                Arbeitsunfähigkeitsbescheinigung
            </title>
            <script>
            document.onload = function() {
                console.log("Test");
                document.getElementById("onsetperiodend").addEventListener("change", function () {
                    console.log("change");
                })
            }
            </script>
            <style type="text/css" media="all">
				html {
					height: 100%;
				}
				body { 
                    font-size: 12pt;    
                    font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
					padding-left:2em;
					margin-top:1em;
					height: 100%;
				}
                p {
					font-family: "Courier New", "Nimbus Mono L", monospace;
					font-size: small;
                }
                img {
					display:inline-block;
					max-width:100%;
                }
                #inhalt-oben {
					padding:0;
					border-spacing:10px;
                }
                #inhalt-unten {
					border-spacing:0;
                }
                .in-black {
					font-size: 7pt;
					color: #000000;
					font-weight: normal;
					font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
                }
                .tiny {
					font-size: 7pt;
					color: #000000;
					font-weight: bold;
					font-weight: normal;
					font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
                }
                .info {
					font-size: 8pt;
					color: #000000;
					font-weight: normal;
					font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
                }
                .stempel {
					font-family: "Courier New", "Nimbus Mono L", monospace;
					font-size: 10pt;
                }            
				.kursiv {
					color: #000000;
					font-size: 8pt;
					font-style: italic;
					font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
                }                 
                .daten {
					font-family: "Courier New", "Nimbus Mono L", monospace;
					font-size: 12pt; 
                }
                .nowrap {
					white-space: nowrap;
                }
                .overflow{
					overflow:hidden
                }
                .breakword {
					word-wrap: break-word;
                }
                .thin-space {
					font-size: 12pt;
					font-weight: normal;
					font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
                }
                .groesse1 {
					font-size: 16pt;
					color: #000000;
					font-weight: normal;
					font-family: "Geneva CY", "DejaVu Sans", sans-serif, Verdana;
					<!-- Klasse wird ausschließlich und zugleich für sämtliche Ankreuzkästchen verwendet. -->
					<!-- Damit die Anzeige auch in Linux-Umgebungen funktioniert, in denen "Verdana" nachträglich installiert wurde -->
					<!-- wird hier (ausnahmsweise) Verdana im Font Stack als letztes genannt -->
                }
                .groesse2 { 
					font-size: 14pt;
					color: #000000;
					font-weight: normal;
					font-family: Verdana, "Geneva CY", "DejaVu Sans", sans-serif;
                 }
                .groesse3 { 
					font-size: 10pt;
					color: #000000;
					font-weight: normal;
					font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
                }                 
                .hervorgehoben1 {    
					font-size: 16pt;
					color: #000000;
					font-weight: bold;
					font-family: Verdana, "Geneva CY", "DejaVu Sans", sans-serif;
                }       
                .hervorgehoben2 { 
					font-size: 14pt;
					color: #000000;
					font-weight: bold;
					font-family: Verdana, "Geneva CY", "DejaVu Sans", sans-serif;
                 }
                .hervorgehoben3 { 
					font-size: 10pt;
					color: #000000;
					font-weight: bold;
					font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
                }  
                .hervorgehoben3kursiv { 
					color: #000000;
					font-size: 10pt;
					font-weight: bold;
					font-style: italic;
					font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif;
                }                   
                .status {
					font-family: "Courier New", "Nimbus Mono L", monospace;
					font-size: 9pt;
					word-spacing:"-0.3em"
                }
                .hidden {
					display: none;
                }
                .check {
                    font-size: 23pt;
                }
                .footer {
                    font-size: 7pt;
                }
				@media print {
					@page {
							size: A5;
							margin: 0;
						}
					body { 
						margin: 0; 
						padding: 0; 
					} 
					#aussenrahmen {
						border:0;
						width:51em;
						padding:2%;
					}					
				}
			</style>
        </head>
    </xsl:template>
    <xsl:template name="printPatient">
        <table style=" border: 1px solid black; width:27em;  border-spacing: 0; cellspacing: 0; border-collapse: collapse; ">
            <!--Umgebende Tabelle- T4ol-->
            <tbody>
                <tr>
                    <td>
                        <!--Erste verschachtelte Tabelle Krankenkasse bzw. Kostenträger-->
                        <table style="border-bottom:1px solid black; border-collapse: collapse; width: 27em; height: 2em; border-spacing: 0; cellspacing: 0; table-layout:fixed ">
                            <!--T5a-->
                            <colgroup>
                                <col style="width:9em"/>
                                <col style="width:9em"/>
                                <col style="width:9em"/>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td colspan="3" class="in-black">Krankenkasse bzw. Kostenträger</td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="daten nowrap">
                                        <xsl:choose>
                                            <xsl:when test="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor[1]/fhir:display/@value">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor[1]/fhir:display/@value"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                             &#160;
                                        </xsl:otherwise>
                                        </xsl:choose>
                                    </td>
                                    <td colspan="1" class="daten" style="text-align:right;">
                                        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:extension[@url='http://fhir.de/StructureDefinition/gkv/wop']/fhir:valueCoding/fhir:code/@value"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--T5a-->
                    </td>
                </tr>
                <tr>
                    <td>
                        <!--Zweite verschachtelte Tabelle Name, Vorname des Versicherten + Geburtsdatum-->
                        <table style=" border-collapse: collapse; border-spacing: 0; cellspacing: 0;  width: 27em; table-layout:fixed ">
                            <!--T5b-->
                            <colgroup>
                                <col style="width:7em; "/>
                                <col style="width:13em; "/>
                                <col style="width:7em; "/>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td class="in-black" colspan="3">Name, Vorname des Versicherten</td>
                                </tr>
                                <tr>
                                    <td colspan="2" width="100%" class="nowrap daten overflow">
                                        <xsl:variable name="output">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-name']/fhir:valueString/@value"/>
                                        </xsl:variable>
                                        <xsl:copy-of select="$output"/>
                                        <xsl:if test="normalize-space($output) = ''">
                                            <br/>
                                        </xsl:if>
                                    </td>
                                    <td class="in-black" style="text-align:center;">
                                        <div>geb. am</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" width="100%" class="nowrap daten overflow">
                                        <xsl:variable name="output">
                                            <!--Titel-->
                                            <xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:prefix/@value">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:prefix/@value"/>
                                                <xsl:text> </xsl:text>
                                            </xsl:if>
                                            <!--Vorname-->
                                            <xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:given/@value">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:given/@value"/>
                                                <xsl:text> </xsl:text>
                                            </xsl:if>
                                            <!--Namenszusatz-->
                                            <xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/fhir:extension[@url='http://fhir.de/StructureDefinition/humanname-namenszusatz']">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/fhir:extension[@url='http://fhir.de/StructureDefinition/humanname-namenszusatz']/fhir:valueString/@value"/>
                                                <xsl:text> </xsl:text>
                                            </xsl:if>
                                            <!--Vorsatzwort-->
                                            <xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-prefix']">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-prefix']/fhir:valueString/@value"/>
                                            </xsl:if>
                                        </xsl:variable>
                                        <xsl:copy-of select="$output"/>
                                        <xsl:if test="normalize-space($output) = ''">
                                            <br/>
                                        </xsl:if>
                                    </td>
                                    <td class="daten" style="text-align:right; ">
                                        <xsl:choose>
                                            <xsl:when test="fhir:entry/fhir:resource/fhir:Patient/fhir:birthDate/@value">
                                                <xsl:call-template name="formatDate">
                                                    <xsl:with-param name="date" select="fhir:entry/fhir:resource/fhir:Patient/fhir:birthDate/@value"/>
                                                </xsl:call-template>
                                            </xsl:when>
                                            <xsl:otherwise>
                                             &#160;
                                        </xsl:otherwise>
                                        </xsl:choose>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="border-bottom:1px solid black; width: 100%" class="nowrap daten  overflow">
                                        <xsl:variable name="output">
                                            <xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']">
                                                <xsl:call-template name="printVersichertenStrassenAdresse"/>
                                            </xsl:if>
                                            <xsl:if test="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']">
                                                <xsl:call-template name="printVersichertenPostfachanschrift"/>
                                            </xsl:if>
                                        </xsl:variable>
                                        <xsl:copy-of select="$output"/>
                                        <xsl:if test="normalize-space($output) = ''">
                                            <br/>
                                            <br/>
                                        </xsl:if>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--T5b-->
                    </td>
                </tr>
                <tr>
                    <td>
                        <!--Dritte verschachtelte Tabelle Kostenträgerkennung, Versichertennummer, Status-->
                        <table style="border-collapse: collapse; border-bottom:1px solid black; width: 27em;  border-spacing: 0; cellspacing: 0; height: 2em; table-layout:fixed ">
                            <!--T5c-->
                            <colgroup>
                                <col style="width:9em;"/>
                                <col style="width:10em;"/>
                                <col style="width:8em;"/>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td class="in-black">Kostenträgerkennung</td>
                                    <td class="in-black">Versicherten-Nr.</td>
                                    <td class="in-black">Status </td>
                                </tr>
                                <tr>
                                    <!--Kostenträgerkennung-->
                                    <td class="nowrap daten">
                                        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor[1]/fhir:identifier[fhir:system/@value='http://fhir.de/NamingSystem/arge-ik/iknr']/fhir:value/@value"/>
                                    </td>
                                    <!--Versicherten-Nr-->
                                    <td style="border-left:1px solid black;" class="daten">
                                        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:identifier/fhir:value/@value"/>
                                    </td>
                                    <!--Status-->
                                    <td style="  border-left:1px solid black;" class="nowrap">
                                        <span class="daten">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:extension[@url='http://fhir.de/StructureDefinition/gkv/versichertenart']/fhir:valueCoding/fhir:code/@value"/>
                                        </span>
                                        <span class="thin-space">&#160;</span>
                                        <span class="daten">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:extension[@url='http://fhir.de/StructureDefinition/gkv/besondere-personengruppe']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_PERSONENGRUPPE']/fhir:code/@value"/>
                                        </span>
                                        <span class="thin-space">&#160;</span>
                                        <span class="daten">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:extension[@url='http://fhir.de/StructureDefinition/gkv/dmp-kennzeichen']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DMP']/fhir:code/@value"/>
                                        </span>
                                        <span class="thin-space">&#160;</span>
                                        <span class="daten">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN']/fhir:code/@value"/>
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--T5c-->
                    </td>
                </tr>
                <tr>
                    <td>
                        <!--Vierte verschachtelte Tabelle Betriebsstättennummer,Arzt-Nr und Datum-->
                        <table style="border-collapse: collapse; width: 27em;  border-spacing: 0; cellspacing: 0; height: 2em; table-layout:fixed ">
                            <!--T5d-->
                            <colgroup>
                                <col style="width: 9em"/>
                                <col style="width: 9em"/>
                                <col style="width: 9em"/>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td class="in-black">Betriebsstätten-Nr.</td>
                                    <td class="in-black">Arzt-Nr.</td>
                                    <td class="in-black">Datum</td>
                                </tr>
                                <tr>
                                    <td class="daten">
                                        <xsl:choose>
                                            <xsl:when test="fhir:entry/fhir:resource/fhir:PractitionerRole/fhir:organization/fhir:identifier[fhir:system/@value='http://fhir.de/NamingSystem/asv/teamnummer']/fhir:value/@value">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:PractitionerRole/fhir:organization/fhir:identifier[fhir:system/@value='http://fhir.de/NamingSystem/asv/teamnummer']/fhir:value/@value"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier/fhir:value/@value"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </td>
                                    <td style="border-left:1px solid black;" class="daten">
										<xsl:choose>
											<xsl:when test="count(fhir:entry/fhir:resource/fhir:Practitioner/fhir:identifier/fhir:value/@value)&gt;1">
												<xsl:variable name="author_ref" select="fhir:entry/fhir:resource/fhir:Composition/fhir:author[fhir:type/@value='Practitioner']/fhir:reference/@value"/>
												<xsl:choose>
													<xsl:when test="contains($author_ref,'/') or contains($author_ref,':')">
														<xsl:variable name="returnValue">
															<xsl:choose>
																<xsl:when test="contains($author_ref,'/')">
																	<xsl:call-template name="substring-after-last">
																		<xsl:with-param name="input" select="$author_ref"/>
																		<xsl:with-param name="substr" select="'/'"/>
																	</xsl:call-template>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:call-template name="substring-after-last">
																		<xsl:with-param name="input" select="$author_ref"/>
																		<xsl:with-param name="substr" select="':'"/>
																	</xsl:call-template>
																</xsl:otherwise>
															</xsl:choose>
														</xsl:variable>
														<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$returnValue]/fhir:identifier/fhir:value/@value"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_ref]/fhir:identifier/fhir:value/@value"/>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner/fhir:identifier/fhir:value/@value"/>
											</xsl:otherwise>
										</xsl:choose>
                                    </td>
                                    <td style="border-left:1px solid black;" class="daten">
                                        <xsl:choose>
                                            <xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:date/@value">
                                                <xsl:call-template name="formatDate">
                                                    <xsl:with-param name="date" select="fhir:entry/fhir:resource/fhir:Composition/fhir:date/@value"/>
                                                </xsl:call-template>
                                            </xsl:when>
                                            <xsl:otherwise>
                                             &#160;
                                        </xsl:otherwise>
                                        </xsl:choose>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--T5d-->
                    </td>
                </tr>
            </tbody>
        </table>
        <!--T4ol-->
    </xsl:template>
    <xsl:template name="printAusstellender">
        <xsl:choose>
            <xsl:when test="count(fhir:entry/fhir:resource/fhir:Practitioner)='0' 
            and not(fhir:entry/fhir:resource/fhir:Organization/fhir:name/@value) 
            and not(fhir:entry/fhir:resource/fhir:Organization/fhir:identifier/fhir:value/@value) 
            and not(fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[1]/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName']/fhir:valueString/@value) 
            and not(fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[1]/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber']/fhir:valueString/@value)
            and not(fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:postalCode/@value)
            and not(fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:city/@value)
            and not(fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='phone']/fhir:value/@value)
            and not(fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='fax'])
            and not(fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='email'])
            ">
                <div style="background-color:white; width:20em;  border:1px solid black;  height: 13em;  position: relative" class="nowrap daten overflow ">
                    <div class="in-black" style=" width:100%; position: absolute;text-align: center; bottom: 0; left:20%; size:-2;  text-align:center">Vertragsarztstempel / Unterschrift des Arztes</div>
                </div>
            </xsl:when>
            <xsl:otherwise>
                <div style="background-color:white; width:20em;  border:1px solid black;" class="daten overflow breakword">
                    <xsl:variable name="anzahl" select="count(fhir:entry/fhir:resource/fhir:Practitioner)"/>
                    <!--Bezeichnung der Praxis-->
                    <xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:name/@value">
                        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:name/@value"/>
                        <br/>
                    </xsl:if>
                    <!--BSNR-->
                    <xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier/fhir:value/@value">
                        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier/fhir:value/@value"/>
                        <br/>
                    </xsl:if>
                    <!--Adresse-->
                    <xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[1]/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName']/fhir:valueString/@value">
                        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[1]/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName']/fhir:valueString/@value"/>&#160;
               <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:line[1]/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber']/fhir:valueString/@value"/>
                        <br/>
                    </xsl:if>
                    <xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:postalCode/@value or fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:city/@value">
                        <xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:postalCode/@value">
                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:postalCode/@value"/>&#160;</xsl:if>
                        <xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:city/@value">
                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address/fhir:city/@value"/>
                        </xsl:if>
                        <br/>
                    </xsl:if>
                    <!--Telefonnummer (Betriebsstätte)-->
                    <xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='phone']">
             Tel: <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='phone']/fhir:value/@value"/>
                        <br/>
                    </xsl:if>
                    <!--Faxnummer (Betriebsstätte)-->
                    <xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='fax']">
                 Fax: <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='fax']/fhir:value/@value"/>
                        <br/>
                    </xsl:if>
                    <!--E-Mail-Adresse (Betriebsstätte)-->
                    <xsl:if test="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='email']">
                 E-Mail: <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='email']/fhir:value/@value"/>
                        <br/>
                    </xsl:if>
                    <xsl:choose>
                        <!--Es existiert sowohl ein "Attester" als auch ein "Author"-->
                        <xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:attester and $anzahl>'1'">
                            <xsl:variable name="author_ref" select="fhir:entry/fhir:resource/fhir:Composition/fhir:author[fhir:type/@value='Practitioner']/fhir:reference/@value"/>
                            <xsl:variable name="attester_ref" select="fhir:entry/fhir:resource/fhir:Composition/fhir:attester/fhir:party/fhir:reference/@value"/>
                            <xsl:choose>
                                <xsl:when test="contains($author_ref,'/') or contains($author_ref,':')">
                                    <xsl:variable name="returnValueAuthor">
										<xsl:choose>
											<xsl:when test="contains($author_ref,'/')">
												<xsl:call-template name="substring-after-last">
													<xsl:with-param name="input" select="$author_ref"/>
													<xsl:with-param name="substr" select="'/'"/>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
												<xsl:call-template name="substring-after-last">
													<xsl:with-param name="input" select="$author_ref"/>
													<xsl:with-param name="substr" select="':'"/>
												</xsl:call-template>
											</xsl:otherwise>
										</xsl:choose>
                                    </xsl:variable>
                                    <xsl:call-template name="printPractitioner">
                                        <xsl:with-param name="practitionerId" select="$returnValueAuthor"/>
                                    </xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:call-template name="printPractitioner">
                                        <xsl:with-param name="practitionerId" select="$author_ref"/>
                                    </xsl:call-template>
                                </xsl:otherwise>
                            </xsl:choose>
                            <br/>
                            <xsl:choose>
                                <xsl:when test="contains($attester_ref,'/') or contains($attester_ref,':')">
                                    <xsl:variable name="returnValueAttester">
										<xsl:choose>
											<xsl:when test="contains($attester_ref,'/')">
												<xsl:call-template name="substring-after-last">
													<xsl:with-param name="input" select="$attester_ref"/>
													<xsl:with-param name="substr" select="'/'"/>
												</xsl:call-template>
											</xsl:when>
											<xsl:otherwise>
												<xsl:call-template name="substring-after-last">
													<xsl:with-param name="input" select="$attester_ref"/>
													<xsl:with-param name="substr" select="':'"/>
												</xsl:call-template>
											</xsl:otherwise>
										</xsl:choose>
                                    </xsl:variable>
                                    <xsl:call-template name="printPractitioner">
                                        <xsl:with-param name="practitionerId" select="$returnValueAttester"/>
                                    </xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:call-template name="printPractitioner">
                                        <xsl:with-param name="practitionerId" select="$attester_ref"/>
                                    </xsl:call-template>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:if test="$anzahl='1'">
                                <xsl:call-template name="printPractitioner">
                                    <xsl:with-param name="practitionerId" select="fhir:entry/fhir:resource/fhir:Practitioner/fhir:id/@value"/>
                                </xsl:call-template>
                            </xsl:if>
                        </xsl:otherwise>
                    </xsl:choose>
                    <br/>
                    <div class="in-black" style=" width:100%;
   text-align: center;  size:-2;  ">Vertragsarztstempel / Unterschrift des Arztes</div>
                </div>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="printDiagnosen">
        <table style="width:49.6em; " id="inhalt-unten">
            <!--T2u-->
            <colgroup>
                <col style="width:49.6em"/>
            </colgroup>
            <tbody>
                <tr>
                    <td>
                        <table cellspacing="15,12px" style="width:49.6em">
                            <!--T3ul-->
                            <colgroup>
                                <col style="width:49.6em"/>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td>
                                        <table style="width:32em; border-spacing:0; cellspacing:0; table-layout:fixed ">
                                            <!--T4ua-->
                                            <colgroup>
                                                <col style="width:10em"/>
                                                <col style="width:1em"/>
                                                <col style="width:10em"/>
                                                <col style="width:1em"/>
                                                <col style="width:10em"/>
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <td colspan="3" class="hervorgehoben3">
                                           AU-begründende Diagnose(n) <span class="tiny" style="font-style: italic;">(ICD-10)</span>
                                                    </td>
                                                    <td/>
                                                    <td/>
                                                </tr>
                                                <tr>
                                                    <td class="in-black">ICD-10 - Code</td>
                                                    <td/>
                                                    <td class="in-black">ICD-10 - Code</td>
                                                    <td/>
                                                    <td class="in-black">ICD-10 - Code</td>
                                                </tr>
                                                <tr>
                                                    <td bgcolor="white" style="border-bottom:1px solid black;" class="daten nowrap">
                                                        <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][1]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:code/@value"/> &#160;
                    
                    									<xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][1]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit']/fhir:valueCoding/fhir:code/@value"/>
														&#160;
														<xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][1]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/seitenlokalisation']/fhir:valueCoding/fhir:code/@value"/>
                                                    </td>
                                                    <td/>
                                                    <td bgcolor="white" style="border-bottom:1px solid black;" class="daten nowrap">
                                                        <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][2]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:code/@value"/>
                
				&#160;
<xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][2]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit']/fhir:valueCoding/fhir:code/@value"/>
                
				&#160;
                    <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][2]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/seitenlokalisation']/fhir:valueCoding/fhir:code/@value"/>
                   
     
                    &#160;
				 
                </td>
                                                    <td/>
                                                    <td bgcolor="white" style="border-bottom:1px solid black;" class="daten nowrap">
                                                        <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][3]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:code/@value"/>
                    &#160;
                   
<xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][3]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit']/fhir:valueCoding/fhir:code/@value"/>
&#160;
                    <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][3]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/seitenlokalisation']/fhir:valueCoding/fhir:code/@value"/>
                   
     
                    &#160;
                   
                </td>
                                                </tr>
                                                <tr>
                                                    <td class="in-black">ICD-10 - Code</td>
                                                    <td/>
                                                    <td class="in-black">ICD-10 - Code</td>
                                                    <td/>
                                                    <td class="in-black">ICD-10 - Code</td>
                                                </tr>
                                                <tr>
                                                    <td bgcolor="white" style="border-bottom:1px solid black;" class="daten nowrap">
                                                        <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][4]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:code/@value"/> &#160;
                    
<xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][4]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit']/fhir:valueCoding/fhir:code/@value"/>
                    &#160;
                    <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][4]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/seitenlokalisation']/fhir:valueCoding/fhir:code/@value"/>
                                                    </td>
                                                    <td/>
                                                    <td bgcolor="white" style="border-bottom:1px solid black;" class="daten nowrap">
                                                        <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][5]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:code/@value"/>
                
				&#160;
<xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][5]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit']/fhir:valueCoding/fhir:code/@value"/>
                
				&#160;
                    <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][5]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/seitenlokalisation']/fhir:valueCoding/fhir:code/@value"/>
                   
     
                    &#160;
				 
                </td>
                                                    <td/>
                                                    <td bgcolor="white" style="border-bottom:1px solid black;" class="daten nowrap">
                                                        <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][6]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:code/@value"/>
                    &#160;
                   
<xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][6]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit']/fhir:valueCoding/fhir:code/@value"/>
&#160;
                    <xsl:value-of select="fhir:entry[fhir:resource/fhir:Condition/fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_ICD|1.0.2'][6]/fhir:resource/fhir:Condition/fhir:code/fhir:coding/fhir:extension[@url='http://fhir.de/StructureDefinition/seitenlokalisation']/fhir:valueCoding/fhir:code/@value"/>
                   
     
                    &#160;
                   
                </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5">&#160; </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5" bgcolor="white" style="border-bottom:1px solid black;" class="daten">
                                                        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_Text|1.0.2']/fhir:code/fhir:text/@value"/>&#160;
				</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!--T4ua-->
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="width: 41em; border-collapse: collapse; border-spacing: 0; cellspacing: 0; table-layout:fixed ">
                                            <!--T4ub-->
                                            <colgroup>
                                                <col style="width:2em"/>
                                                <col style="width:3em"/>
                                                <col style="width:8em"/>
                                                <col style="width:2em"/>
                                                <col style="width:26em"/>
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <td class="groesse1" border-collapse="collapse">
                                                        <span class="check">
                                                            <xsl:choose>
                                                                <xsl:when test="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_AU|1.0.2']/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/condition-dueTo']/fhir:valueCodeableConcept/fhir:coding/fhir:code[@value='1']">
                                                                    <xsl:text>&#x2612;</xsl:text>
                                                                </xsl:when>
                                                                <xsl:otherwise>&#x2610;</xsl:otherwise>
                                                            </xsl:choose>
                                                        </span>
                                                    </td>
                                                    <td colspan="2" border-collapse="collapse" class="info">sonstiger Unfall, <br/>Unfallfolgen</td>
                                                    <td class="groesse1" border-collapse="collapse">
                                                        <span class="check">
                                                            <xsl:choose>
                                                                <xsl:when test="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_AU|1.0.2']/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/condition-dueTo']/fhir:valueCodeableConcept/fhir:coding/fhir:code[@value='3']">
                                                                    <xsl:text>&#x2612;</xsl:text>
                                                                </xsl:when>
                                                                <xsl:otherwise>&#x2610;</xsl:otherwise>
                                                            </xsl:choose>
                                                        </span>
                                                    </td>
                                                    <td border-collapse="collapse" class="info">Versorgungsleiden<br/>(z.B. BVG)</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5" class="info">Es wird die Einleitung folgender besonderer Maßnahmen für erforderlich gehalten</td>
                                                </tr>
                                                <tr>
                                                    <td class="groesse1">
                                                        <span class="check">
                                                            <xsl:choose>
                                                                <xsl:when test="fhir:entry/fhir:resource/fhir:ServiceRequest/fhir:code/fhir:coding/fhir:code[@value='reha']">
                                                                    <xsl:text>&#x2612;</xsl:text>
                                                                </xsl:when>
                                                                <xsl:otherwise>&#x2610;</xsl:otherwise>
                                                            </xsl:choose>
                                                        </span>
                                                    </td>
                                                    <td colspan="2" class="info">Leistungen zur <br/>medizinischen Rehabilitation</td>
                                                    <td class="groesse1">
                                                        <span class="check">
                                                            <xsl:choose>
                                                                <xsl:when test="fhir:entry/fhir:resource/fhir:ServiceRequest/fhir:code/fhir:coding/fhir:code[@value='wiedereingliederung']">
                                                                    <xsl:text>&#x2612;</xsl:text>
                                                                </xsl:when>
                                                                <xsl:otherwise>&#x2610;</xsl:otherwise>
                                                            </xsl:choose>
                                                        </span>
                                                    </td>
                                                    <td class="info">stufenweise<br/> Wiedereingliederung</td>
                                                </tr>
                                                <tr>
                                                    <td class="groesse1">
                                                        <span class="check">
                                                            <xsl:choose>
                                                                <xsl:when test="fhir:entry/fhir:resource/fhir:ServiceRequest/fhir:code/fhir:coding/fhir:code[@value='sonstige']">
                                                                    <xsl:text>&#x2612;</xsl:text>
                                                                </xsl:when>
                                                                <xsl:otherwise>&#x2610;</xsl:otherwise>
                                                            </xsl:choose>
                                                        </span>
                                                    </td>
                                                    <td class="info">Sonstige</td>
                                                    <td colspan="3" bgcolor="white" style="border-bottom:1px solid black;" class="daten">
                                                        <xsl:value-of select="fhir:entry/fhir:resource/fhir:ServiceRequest/fhir:code/fhir:text/@value"/>&#160;</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!--T4ub-->
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style=" width:47.6em;  border:2px solid black;  bgcolor: white;table-layout:fixed">
                                            <!--T4uc-->
                                            <colgroup>
                                                <col style="width:12em"/>
                                                <col style="width:3,5em"/>
                                                <col style="width:12em"/>
                                                <col style="width:3,5em"/>
                                                <col style="width:17em"/>
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <td class="hervorgehoben3">
                                            Im Krankengeldfall
                                        </td>
                                                    <td class="groesse1">
                                                        <span class="check">
                                                            <xsl:choose>
                                                                <!-- wenn dieses Element vorkommt, dann ist das Häkchen zusetzen -->
                                                                <xsl:when test="fhir:entry/fhir:resource/fhir:Condition[fhir:meta/fhir:profile/@value='https://fhir.kbv.de/StructureDefinition/KBV_PR_EAU_Condition_AU|1.0.2']/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_EAU_7_weeks']/fhir:valueBoolean/@value='true'">
                                                                    <xsl:text>&#x2612;</xsl:text>
                                                                </xsl:when>
                                                                <xsl:otherwise>&#x2610;</xsl:otherwise>
                                                            </xsl:choose>
                                                        </span>
                                                    </td>
                                                    <td class="info">ab 7. AU-Woche oder <br/>sonstiger Krankengeldfall</td>
                                                    <td class="groesse1">
                                                        <span class="check">
                                                            <xsl:choose>
                                                                <xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:type/fhir:coding/fhir:code[@value='FOLGE_END' or @value='ERST_END']">
                                                                    <xsl:text>&#x2612;</xsl:text>
                                                                </xsl:when>
                                                                <xsl:otherwise>&#x2610;</xsl:otherwise>
                                                            </xsl:choose>
                                                        </span>
                                                    </td>
                                                    <td class="info">
                            Endbescheinigung
                        </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5" class="hervorgehoben3kursiv">Hinweis für Versicherte zum Kranken- und Verletztengeld</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5" class="kursiv"> Achten Sie bei fortbestehender Arbeitsunfähigkeit auf eine lückenlose ärztliche Feststellung, da sonst ein Krankengeldverlust droht. Hierfür ist es erforderlich, dass Sie sich spätestens an dem Werktag, der auf den letzten Tag der aktuellen Arbeitsunfähigkeitsbescheinigung folgt, bei Ihrem Arzt oder Ihrer Ärztin die fortbestehende Arbeitsunfähigkeit bestätigen lassen. Legen Sie immer ihre <b>aktuell gültige</b> Versichertenkarte vor, um Probleme bei der Zahlung von Kranken- oder Verletztengeld zu vermeiden. Weitere Informationen erhalten Sie bei Ihrer Krankenkasse.
													</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!--T4uc-->
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style=" width:46em; table-layout:fixed">
                                            <!--T4ud-->
                                            <colgroup>
                                                <col style="width:28em"/>
                                                <col style="width:18em"/>
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <span class="footer">Dokumentenversion:&#160;</span>
                                                        <xsl:call-template name="getVersion">
                                                            <xsl:with-param name="url" select="fhir:entry/fhir:resource/fhir:Composition/fhir:meta/fhir:profile/@value"/>
                                                        </xsl:call-template>
                                                        <br/>
                                                        <span class="footer">Dokumententyp:&#160;</span>
                                                        <span class="footer">
                                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Composition/fhir:type/fhir:coding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_FORMULAR_ART']/fhir:code/@value"/>
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <table>
                                                            <!--T5ur-->
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <span class="footer">
											PRF.NR. 
											</span>
                                                                    </td>
                                                                    <td>
                                                                        <span class="footer">
                                                                            <xsl:choose>
                                                                                <xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:author[fhir:type/@value='Device']/fhir:identifier/fhir:value/@value">
                                                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Composition/fhir:author[fhir:type/@value='Device']/fhir:identifier/fhir:value/@value"/>
                                                                                </xsl:when>
                                                                                <xsl:otherwise>
                                                                                    <br/>
                                                                                </xsl:otherwise>
                                                                            </xsl:choose>
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">
                                                                        <span class="footer">
                                                                            <xsl:variable name="returnValuePrfnr">
                                                                                <xsl:call-template name="getPrfnr">
                                                                                    <xsl:with-param name="prfnrAdr" select="fhir:identifier/fhir:value/@value"/>
                                                                                </xsl:call-template>
                                                                            </xsl:variable>
                                                                            <xsl:copy-of select="$returnValuePrfnr"/>
                                                                            <xsl:if test="normalize-space($returnValuePrfnr) = ''">
                                                                                <br/>
                                                                            </xsl:if>
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <!--T5ur-->
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!--T4ud-->
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!--T3ul-->
                    </td>
                </tr>
            </tbody>
        </table>
        <!--T2u-->
    </xsl:template>
    <xsl:template name="printVersichertenPostfachanschrift">
Postfach: <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:line/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox']/fhir:valueString/@value"/>
        <br/>
        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:country/@value"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:postalCode/@value"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:city/@value"/>
    </xsl:template>
    <xsl:template name="printVersichertenStrassenAdresse">
        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:line[1]/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName']/fhir:valueString/@value"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:line[1]/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber']/fhir:valueString/@value"/>
        <br/>
        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:country/@value"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:postalCode/@value"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:city/@value"/>
    </xsl:template>
    <xsl:template name="formatDate">
        <xsl:param name="date"/>
        <xsl:variable name="yearNum" select="substring ($date, 1, 4)"/>
        <xsl:variable name="monthNum" select="substring ($date, 6, 2)"/>
        <xsl:variable name="dayNum" select="substring ($date, 9, 2)"/>
        <xsl:value-of select="$dayNum"/>
        <xsl:text>.</xsl:text>
        <xsl:value-of select="$monthNum"/>
        <xsl:text>.</xsl:text>
        <xsl:value-of select="$yearNum"/>
    </xsl:template>
    <xsl:template name="getPrfnr">
        <xsl:param name="prfnrAdr"/>
        <xsl:variable name="prfnr" select="substring-after($prfnrAdr,'urn:uuid:')"/>
        <xsl:value-of select="$prfnr"/>
    </xsl:template>
    <xsl:template name="printPractitioner">
        <xsl:param name="practitionerId"/>
        <xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:prefix/@value 
        or fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:given/@value 
        or fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://fhir.de/StructureDefinition/humanname-namenszusatz'] 
        or fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-prefix'] 
        or fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-name']/fhir:valueString/@value">
            <!--Titel-->
            <xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:prefix/@value">
                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:prefix/@value"/>
                <xsl:text> </xsl:text>
            </xsl:if>
            <!--Vorname-->
            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:given/@value"/>
            <xsl:text> </xsl:text>
            <!--Namenszusatz-->
            <xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://fhir.de/StructureDefinition/humanname-namenszusatz']">
                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://fhir.de/StructureDefinition/humanname-namenszusatz']/fhir:valueString/@value"/>
                <xsl:text> </xsl:text>
            </xsl:if>
            <!--Vorsatzwort-->
            <xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-prefix']">
                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-prefix']/fhir:valueString/@value"/>
                <xsl:text> </xsl:text>
            </xsl:if>
            <!--Nachname-->
            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:name/fhir:family/fhir:extension[@url='http://hl7.org/fhir/StructureDefinition/humanname-own-name']/fhir:valueString/@value"/>
            <br/>
        </xsl:if>
        <xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:qualification/fhir:code/fhir:text/@value">
            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:qualification/fhir:code/fhir:text/@value"/>
            <br/>
        </xsl:if>
        <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$practitionerId]/fhir:identifier/fhir:value/@value"/>
    </xsl:template>
    <xsl:template name="substring-after-last">
        <xsl:param name="input"/>
        <xsl:param name="substr"/>
        <xsl:variable name="lastChar" select="substring($input, string-length($input) - string-length($substr) +1)"/>
        <xsl:choose>
            <xsl:when test="$lastChar=$substr">
                <xsl:call-template name="substring-after-last">
                    <xsl:with-param name="input" select="substring($input,1, string-length($input)-1)"/>
                    <xsl:with-param name="substr" select="$substr"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <!-- Extract the string which comes after the first occurence -->
                <xsl:variable name="temp" select="substring-after($input,$substr)"/>
                <xsl:choose>
                    <!-- If it still contains the search string the recursively process -->
                    <xsl:when test="$substr and  contains($temp,$substr)">
                        <xsl:call-template name="substring-after-last">
                            <xsl:with-param name="input" select="$temp"/>
                            <xsl:with-param name="substr" select="$substr"/>
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:if test="contains($temp,'/')">
                            <xsl:call-template name="substring-after-last">
                                <xsl:with-param name="input" select="$temp"/>
                                <xsl:with-param name="substr" select="$substr"/>
                            </xsl:call-template>
                        </xsl:if>
                        <xsl:value-of select="$temp"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="getVersion">
        <xsl:param name="url"/>
        <xsl:variable name="version" select="substring-after($url,'|')"/>
        <span class="footer">
            <xsl:value-of select="$version"/>
        </span>
    </xsl:template>
</xsl:stylesheet>
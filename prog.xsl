<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:tei="http://www.tei-c.org/ns/1.0"
	xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<script src="prog.js"></script>
	<!--Struttira Html-->
	<xsl:template match="/">
		<html>
			<head>
				<title>Progetto Codifica di testi - Prolusioni di Ferdinand De Saussure</title>
				<xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"></xsl:value-of>
				<link href="prog.css" rel="stylesheet" type="text/css"/>
				<script src="prog.js"></script>
			</head>
			<body>
				<header>
					<h1>Progetto Codifica di testi - Prolusioni di Ferdinand De Saussure</h1>
					<nav id="navbar">
						<ul>
							<li>
								<a href = "#Intro">INTRODUZIONE</a>
							</li>
							<li>
								<a href = "#Pagina8">PAGINA 8</a>
							</li>
							<li>
								<a href = "#Pagina9">PAGINA 9</a>
							</li>
							<li>
								<a href = "#Info">INFORMAZIONI</a>
							</li>
						</ul>
					</nav>
				</header>
				<div class="contenuto" id="Intro">
					<h2 id="intro">Introduzione all'opera e storia</h2>
					<p>Manoscritto ad opera di 
						
						<b>
							<xsl:value-of select="//tei:titleStmt//tei:author"></xsl:value-of>
						</b>.
					
					</p>
					<xsl:value-of select="//tei:history"></xsl:value-of>
					<p>È possibile consultare il manoscritto codificato presso l'archivio online dell'
						
						<xsl:value-of select="//tei:publicationStmt/tei:publisher"></xsl:value-of>.
					
					</p>
					<p>Modalità di fruizione:
						
						<xsl:value-of select="//tei:publicationStmt/tei:availability"></xsl:value-of>
					</p>
				</div>
				<div>
					<h3>Materiale e supporto</h3>
					<p>Tipologia del materiale e sua dimensione: 
						
						<xsl:value-of select="//tei:supportDesc"></xsl:value-of>
					</p>
					<p>Tipologia dei caratteri: 
						
						<xsl:value-of select="//tei:typeDesc"></xsl:value-of>
					</p>
					<p>Lunghezza: 
						
						<xsl:value-of select="//tei:layoutDesc"></xsl:value-of>
					</p>
				</div>
				<div>
					<h3>Ubicazione testi</h3>
					<xsl:apply-templates select="//tei:settingDesc"/>
					<p>Codice identificativo: 
						
						<xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:msIdentifier//tei:idno"/>
					</p>
				</div>
				<div class="contenuto_legenda">
					<h2>Legenda</h2>
					<p>
						<li id="giallo">Elemento terminologico: colore GIALLO</li>
					</p>
					<p>
						<li id="blu">Francesismi: colore BLU</li>
					</p>
					<p>
						<li id="rosso">Aggiunte: colore ROSSO</li>
					</p>
				</div>
				<div class="contenuto-p8" id="Pagina8">
					<div class="titolo">
						<h2>Pagina 8</h2>
					</div>
					<div class="img-wrapper">
						<xsl:element name="img">
							<xsl:attribute name="src">
								<xsl:value-of select="//tei:graphic[@xml:id='Pag8']/@url"/>
							</xsl:attribute>
							<xsl:attribute name="id">frontepag8</xsl:attribute>
						</xsl:element>
					</div>
					<div class="trascrizione">
						<xsl:apply-templates select="//tei:text//tei:div[@n = '8']"/>
					</div>
					<div class="mostraRetro">
						<h3>Retro</h3>
						<input type="button" class="yes" id="pulsanteRetro" value=">>"/>
						<input type="button" class="no" id="nascondiRetro" value="-"/>
						<div class="no" id="retropag8"></div>
						<div class="img-wrapper">
							<xsl:element name="img">
								<xsl:attribute name="src">
									<xsl:value-of select="//tei:graphic[@xml:id='Pag8R']/@url"/>
								</xsl:attribute>
								<xsl:attribute name="id">retropag8</xsl:attribute>
								<xsl:attribute name="class">no</xsl:attribute>
							</xsl:element>
						</div>
					</div>
					<div class="traduzione">
						<h4>TRADUZIONE IN ITALIANO</h4>
						<input type="button" class="yes" id="pulsanteTraduzione" value="+"/>
						<input type="button" class="no" id="nascondiTraduzione" value="-"/>
						<div class="no" id="testoTraduzione"></div>
						<div class="no" id="testoTraduzione">
							<!--Traduzione-->
							<xsl:apply-templates select="//tei:text//tei:div[@n = '1']" mode="traduzione"/>
						</div>
					</div>
				</div>
				<div class="contenuto-p9" id="Pagina9">
					<div class="titolo">
						<h2>Pagina 9</h2>
					</div>
					<div class="img-wrapper">
						<xsl:element name="img">
							<xsl:attribute name="src">
								<xsl:value-of select="//tei:graphic[@xml:id='Pag9']/@url"/>
							</xsl:attribute>
							<xsl:attribute name="id">frontepag9</xsl:attribute>
						</xsl:element>
					</div>
					<div class="trascrizione">
						<xsl:apply-templates select="//tei:text//tei:div[@n = '9']"/>
					</div>
					<div class="mostraRetro">
						<h3>Retro</h3>
						<input type="button" class="yes" id="pulsanteRetro2" value=">>"/>
						<input type="button" class="no" id="nascondiRetro2" value="-"/>
						<div class="no" id="retropag9"></div>
						<div class="img-wrapper">
							<xsl:element name="img">
								<xsl:attribute name="src">
									<xsl:value-of select="//tei:graphic[@xml:id='Pag9R']/@url"/>
								</xsl:attribute>
								<xsl:attribute name="id">retropag9</xsl:attribute>
								<xsl:attribute name="class">no</xsl:attribute>
							</xsl:element>
						</div>
					</div>
					<div class="traduzione2">
						<h4>TRADUZIONE IN ITALIANO</h4>
						<input type="button" class="yes" id="pulsanteTraduzione2" value="+"/>
						<input type="button" class="no" id="nascondiTraduzione2" value="-"/>
						<div class="no" id="testoTraduzione2"></div>
						<div class="no" id="testoTraduzione2">
							<!--Traduzione-->
							<xsl:apply-templates select="//tei:text//tei:div[@n = '2']" mode="traduzione2"/>
						</div>
					</div>
				</div>
				<div id="Info">
					<h2>Informazioni</h2>
					<h3 id="elemTerm">Alcune parole chiave</h3>
					<div class="container-term">
						<xsl:apply-templates select="//tei:back/tei:list"/>
					</div>
					<div class="container-bibliog" id="Info">
						<h3 id="bibliografia">Bibliografia</h3>
						<xsl:apply-templates select="//tei:listBibl"/>
					</div>
					<div class="container-about">
						<h3 id="about">Riferimenti</h3>
						<xsl:apply-templates select="//tei:editionStmt"/>
						<p>Traduzione di: 
							
							<xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id='EF']"></xsl:value-of>
						</p>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
	<!-- Collocazione-->
	<xsl:template match="tei:settingDesc">
		<p>
			<xsl:value-of select="current()/tei:setting/tei:name"></xsl:value-of>
		</p>
	</xsl:template>
	<!--Suddivisione righe-->
	<xsl:template match="//tei:text/tei:body/tei:div/tei:ab/tei:lb">
		<xsl:for-each select="current()">
			<xsl:element name="ol"></xsl:element>
		</xsl:for-each>
	</xsl:template>
	<!--Terminologia-->
	<xsl:template match="//tei:back/tei:list/tei:label">
		<xsl:for-each select="current()/tei:term">
			<xsl:element name="ol"></xsl:element>
		</xsl:for-each>
	</xsl:template>
	<!--Colore elementi terminologici-->
	<xsl:template match="//tei:term">
		<span class="elemTerm">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--Colore parole da altre lingue-->
	<xsl:template match="//tei:mentioned">
		<span class="menzioni">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--Cancellazioni-->
	<xsl:template match="//tei:del">
		<span class="cancellazioni">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--Aggiunte-->
	<xsl:template match="//tei:add">
		<span class="aggiunte">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--Sostituzioni trascrizione-->
	<xsl:template match="tei:choice">
		<xsl:element name="span">
			<xsl:attribute name="class">choice</xsl:attribute>
			<xsl:element name="span">
				<xsl:attribute name="class">orig</xsl:attribute>
				<xsl:value-of select="tei:orig" />
			</xsl:element>
			<xsl:element name="span">
				<xsl:attribute name="class">reg</xsl:attribute>
				<xsl:value-of select="tei:reg" />
			</xsl:element>
		</xsl:element>
	</xsl:template>
	<!--Abbreviazioni-->
	<xsl:template match="tei:abbr">
		<span class="abbreviazioni">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--Espansioni-->
	<xsl:template match="tei:expan">
		<span class="espansioni">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--Bibliografia-->
	<xsl:template match="tei:listBibl">
		<xsl:for-each select="current()/tei:bibl">
			<xsl:element name="li">
				<xsl:for-each select="current()//tei:author">
					<xsl:element name="span">
						<xsl:for-each select="current()//tei:forename">
							<xsl:apply-templates />
						</xsl:for-each>
						<xsl:text></xsl:text>
						<xsl:for-each select="current()//tei:surname">
							<xsl:apply-templates />
						</xsl:for-each>
					</xsl:element>
					<xsl:text>, </xsl:text>
				</xsl:for-each>
				<xsl:element name="span">
					<xsl:element name="i">
						<xsl:for-each select="current()//tei:title">
							<xsl:apply-templates />
							<xsl:text>, </xsl:text>
						</xsl:for-each>
					</xsl:element>
				</xsl:element>
				<xsl:element name="span">
					<xsl:for-each select="current()//tei:pubPlace">
						<xsl:apply-templates />
						<xsl:text>- </xsl:text>
					</xsl:for-each>
				</xsl:element>
				<xsl:element name="span">
					<xsl:apply-templates select="current()//tei:date" />
					<xsl:text>. </xsl:text>
				</xsl:element>
			</xsl:element>
		</xsl:for-each>
	</xsl:template>
	<!--Riferimenti-->
	<xsl:template match="tei:editionStmt">
		<p>
			<xsl:value-of select="current()/tei:edition"></xsl:value-of>
		</p>
		<p>Progetto a cura di: 
			
			<xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='MP']"></xsl:value-of>
		</p>
		<p>Coordinato da: 
			
			<xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='prof']"></xsl:value-of>
		</p>
	</xsl:template>
</xsl:stylesheet>
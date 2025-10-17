
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
</head>
<body>

<div id="banner" style="background-color:blue">
	<div class="box1">
		<a href="/" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="/rss.asp"><img alt="RSS feed" src="/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="/images/facebook28x28.png" style="margin-left:2px"></a>
			</div>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
		<div id="loginbtn">
			
				<a href="/webbmail/login.asp" class="nodec">log in</a>
			
		</div>
		<div class="clear"></div>
		<div id="volunteer">
			<a href="/webbmail/username.asp" class="nodec"><b>Volunteer to edit the database</b></a>
		</div>
		<label for="srchchk" id="srchbtn">search</label>
	</div>
	<input type="checkbox" id="srchchk" style="display:none">
	<div id="srchblk" style="background-color:inherit;">
		<div class="box4">
			<!-- SiteSearch Google -->
			<form class="box4a" method="get" action="https://www.google.com/search">
				<input type="hidden" name="ie" value="UTF-8">
				<input type="hidden" name="oe" value="UTF-8">
				<input type="hidden" name="domains" value="Webb-site.com">
				<input type="hidden" name="sitesearch" value="Webb-site.com">
				<input type="text" class="inptxt searchws" name="q" maxlength="255" value="search Webb-site.com" onclick="value=''">
				<input type="submit" class="btnFont" name="btnG" value="search">
			</form>
			<form class="box4b" method="post" action="/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="/dbpub/orgdata.asp" method="get" name="f1">
				<p>Stock code</p>
				<input type="number" class="inptxt stockcode" name="code" min="1" max="99999" maxlength="5" pattern="[0-9]*" onclick="value=''"><br>
				<input type="submit" class="btnFont" name="Submit" value="current" onclick="f1.action='/dbpub/orgdata.asp'">
				<input type="submit" class="btnFont" value="past" onclick="f1.action='/dbpub/code.asp'">
			</form>
		</div>
	</div>
</div>
<div id="menubar" style="background-color:blue;">
	<div class="hnav">
		<input type="checkbox" id="menuchk" style="display:none">
		<ul>
		<li><a href="/">Home</a></li>
		<li><a href="/dbpub/">Database</a></li>
		<li><a href="/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="/webbmail/login.asp">Log in</a></li>
				
				<li><a href="/webbmail/join.asp">Sign up</a></li>
				<li><a href="/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="/articles/">Archive</a></li>
		<li><a href="/pages/tools.asp">Tools</a>
			<ul>
				<li><a href="/pages/howtovote.asp">How to vote</a></li>
				<li><a href="/library/">Reference library</a></li>
				<li><a href="/cg/">CG directory</a></li>
				<li><a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&OPT_01=1&OPT_02=1&OPT_03=1&OPT_04=1&OPT_05=1&OPT_06=1&OPT_07=1&OPT_08=1&OPT_09=1">Companies Registry</a></li>
				<li><a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&lang=EN&in=1">Dealing disclosures</a></li>
				<li><a href="http://www.hsi.com.hk">Hang Seng Index</a></li>
				<li><a href="http://legalref.judiciary.gov.hk/lrs/common/ju/newjudgments.jsp">Judgments</a></li>
			</ul>
		</li>
		<li><a href="/vote/">Polls</a></li>
		<li><a href="/pages/hallofshame.asp">Hall of Shame</a></li>
		<li><a href="/pages/stuff.asp">Other stuff</a>
			<ul>
				<li><a href="/HAMS/">HAMS proposal</a></li>
				<li><a href="/pages/electiondisclosures.asp">Election returns</a></li>
				<li><a href="/articles/PECSregister.asp">PECS register</a></li>
				<li><a href="/pages/loopholes.asp">Listing Loopholes</a></li>
				<li><a href="/books/">Webb-Books</a></li>
				<li><a href="/news/">Old newsletters</a></li>
				<li><a href="/dbpub/subject.asp?c=160">Laughing Stock</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page">Flight arrivals</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/departures/passenger.page">Flight departures</a></li>
				<li><a href="https://www.liveatc.net/search/?icao=HKG">Air traffic radio</a></li>
				<li><a href="https://www.hkemobility.gov.hk/en/traffic-information/live/cctv">Road traffic</a></li>
				<li><a href="https://www.weather.gov.hk/en/">Weather</a></li>
				<li><a href="/dbpub/idcheck.asp">HKID check digit</a></li>
				<li><a href="/dbpub/HKBRcheck.asp">HKBR check digit</a></li>
			</ul>
		</li>
		<li><a href="/pages/about.asp">About</a>
			<ul>
				<li><a href="/pages/aboutus.asp">About us</a></li>
				<li><a href="/photos/">Webb-Photos</a></li>
				<li><a href="/pages/mediaroom.asp">Media room</a></li>
				<li><a href="/dbpub/webbchips.asp">Webb-chips</a></li>
				<li><a href="/pages/privacypolicy.asp">Privacy policy</a></li>
			</ul>
		</li>
		<li><a href="/contact/">Contact</a></li>
		<li><a href="/pages/refer.asp">Tell a Friend!</a></li>
		<li><a href="/pages/hkradio.asp">Radio</a>
			<ul>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio1">RTHK 1</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio2">RTHK 2</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio3">RTHK 3 English</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio4">RTHK 4 Classics</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio5">RTHK 5</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio6">RTHK 6 CNR</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/pth">RTHK Putonghua</a></li>
				<li><a target="_blank" href="https://www.881903.com/live/881">Commercial Radio</a></li>
				<li><a target="_blank" href="http://www.metroradio.com.hk/Live/1044/">Metro Radio</a></li>		
				<li><a target="_blank" href="https://www.bbc.co.uk/sounds/player/bbc_world_service">BBC World Service</a></li>
			</ul>
		</li>
		<li><a href="/pages/TV.asp">TV</a>
			<ul>
				<li><a target="_blank" href="https://www.abc.net.au/news/newschannel/">ABC News (Australia)</a></li>
				<li><a target="_blank" href="https://www.aljazeera.com/live">Al Jazeera</a></li>
				<li><a target="_blank" href="https://www.bloomberg.com/live">Bloomberg</a></li>
				<li><a target="_blank" href="https://www.dw.com/en/media-center/live-tv/s-100825">DW-TV</a></li>
				<li><a target="_blank" href="https://www.france24.com/en/live">France 24</a></li>
				<li><a target="_blank" href="https://www.nasa.gov/nasatv/">NASA</a></li>
				<li><a target="_blank" href="https://hoy.tv/live">Hoy TV</a></li>
				<li><a target="_blank" href="https://news.now.com/home/live">Now TV News</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/tv">RTHK TV</a></li>
				<li><a target="_blank" href="https://news.tvb.com/tc/live/83">TVB iNews</a></li>
				<li><a target="_blank" href="https://www.viu.tv/ch">Viu TV</a></li>
			</ul>
		</li>
		</ul>
	</div>
</div>
<div class="clear"></div>
<div class="mainbody">

<script type="text/javascript">document.title="The right to remember";</script>

	<div class="summary">In the wake of ECJ's Google v Spain ruling, we publish a letter from the UK Information Commissioner regarding the sanctity of newspaper archives, and then look at the unintended and dangerous consequences of the ECJ's ruling. You really don't have a right to make other people forget, and you do have a right to remember.</div>

<h2 class="center">The right to remember<br>
<span class="headlinedate">20 June 2014</span></h2>
<p>You may have read about the surprising 
<a href="http://curia.europa.eu/juris/document/document.jsf?text=&amp;docid=152065&amp;pageIndex=0&amp;doclang=EN&amp;mode=lst&amp;dir=&amp;occ=first&amp;part=1&amp;cid=446809" target="_blank">judgment</a> of the 
<a href="http://curia.europa.eu" target="_blank">European Court of 
Justice</a> (<strong>ECJ</strong>) on 13-May-2014 in <em>Google v Spain</em>, which requires, in 
(un)certain circumstances, that search engines should on request remove links 
and extracts of public information about people in the European Union. We'll 
return to the idiocies of that judgment <a href="#GvS">later in this article</a>.</p>
<p>Against that background, it was heart-warming
<a href="http://www.pressgazette.co.uk/print/fraudster-loses-bid-make-newsquest-remove-report-spent-criminal-conviction-online-archive" target="_blank">
to read</a> in the UK's Press Gazette on 19-May-2014 (and in Pinsent Masons'
<a href="http://www.out-law.com/en/articles/2014/may/publisher-not-forced-to-delete-archived-article-on-mans-spent-conviction/" target="_blank">
Out-law.com</a> 2 days later) that a convicted fraudster 
had failed to persuade the UK Information Commissioner's Office (<strong>ICO</strong>) 
to require an online newspaper archive to remove a report of his &quot;spent&quot; 
criminal conviction.</p>
<p>In search of the original ICO assessment on this, we visited 
the <a href="http://ico.org.uk/" target="_blank">ICO web site</a>. We expected 
to find a press release or some kind of case note, suitably redacted to avoid 
identifying the complainant. After all, it is important for the UK public to 
understand how the ICO interprets the Data Protection Act (<strong>DPA</strong>).</p>
<p>But we found nothing on the case. So on 
1-Jun-2014 we wrote to their &quot;Press office&quot;, and a linguistically-challenged 
Lead Communications Officer called James Stanley replied:</p>
<blockquote>
	&quot;These assessments aren't publically (sic) published.&quot;</blockquote>
<p>Not good enough, we thought. Now, you will note that the UK call their person 
the &quot;Information Commissioner&quot; rather than Hong Kong's &quot;Privacy Commissioner&quot; 
title. That's because in the UK, as in many advanced societies, there is also a Freedom of Information Act (<strong>FOIA</strong>) 
alongside the Data Protection Act, and the ICO is responsible for both - while 
in HK, there is no such legislation, only a weak Code on Access to Information. 
Legislation would make it easier to hold HK's government accountable - which is 
probably why we don't have any, although the Ombudsman
<a href="ombudsmanfoi.asp">has called for it</a>.</p>
<p>So on 2-Jun-2014, Webb-site filed our first ever request under the 
UK FOIA, seeking information on the case, with the name of the complainant suitably 
redacted, so that this would not be a privacy issue in itself. And hey presto, 
after a holding response the next day, we received a full response on 
11-Jun-2014 from Steven Dickinson, Lead Information Governance Officer. The FOIA 
works. He sent us a suitably redacted
<a href="../codocs/NewsquestLetter.pdf" target="_blank"><strong>copy of the 
ICO's letter</strong></a> dated 26-Mar-2014 to 
<a href="http://www.newsquest.co.uk/" target="_blank">Newsquest Media Group Ltd</a>. The 
ICO explained the background to the letter to Webb-site:</p>
<blockquote>
	<p>&quot;This complaint has been dealt with by the ICO under the 
	terms of
	<a href="http://www.legislation.gov.uk/ukpga/1998/29/section/42" target="_blank">
	section 42</a> of the DPA, under which the ICO can make an assessment as to 
	whether it is likely or unlikely that a data controller's processing of personal 
	data complies with the requirements of the DPA.</p>
	<p>The ICO does not routinely publish the outcome of cases heard under s42 DPA; the outcome is in 
	the form of a letter to parties to the case, and any information contained is 
	likely to be the personal data of the complainant. It is also worth mentioning, 
	at this point, that an ICO assessment of this form is not binding on any party 
	and has no force in law, but simply reflects the Information Commissioner's view 
	on a particular matter, as presented to him.</p>
	<p>We consider that it is possible to disclose some of the letter for this particular case, but with 
	information which is the personal data of the complainant redacted.&quot;</p>
</blockquote>
<p>Incidentally, if we had not been satisfied, then we could have filed a 
complaint under the FOIA with, guess who, the ICO. That highlights a rather 
silly situation in which the ICO handles complaints about its own failures to 
deliver information wearing its other hat under the DPA. In other words &quot;you may 
complain about me to me&quot;. Fortunately, we were satisfied, but the UK 
Government should remove that conflict of interest by separating the roles of 
Privacy Commissioner and Information Commissioner.</p>
<h3>The ICO Analysis</h3>
<p>Turning to the assessment letter, the Case Officer analysed at length the 4 
conditions needed to satisfy
<a href="http://www.legislation.gov.uk/ukpga/1998/29/section/32" target="_blank">
Section 32</a> of the DPA, which exempts the &quot;special purposes&quot; (defined in
<a href="http://www.legislation.gov.uk/ukpga/1998/29/section/3" target="_blank">
Section 3</a>) of journalism, artistic and literary purposes from most of the 
DPA. Here are key extracts:</p>
<blockquote>
	<p>&quot;The first condition requires that personal data are 
	processed only for the special purposes. We take a fairly broad view on what 
	counts as 'processing only for the purposes of journalism' to properly protect [<a href="http://www.echr.coe.int/Documents/Convention_ENG.pdf" target="_blank">European 
	Convention on Human Rights</a>] Article 10, rights to freedom of expression. 
	<strong>If 
	something is done with the aim of disclosing information, opinion or ideas to 
	the public by any means, it will be for the purposes of journalism</strong>...I am 
	satisfied that the publication of the article within your archive appears to 
	have been made only for the purposes of disclosing information and opinion to 
	the public&quot; (our bold)</p>
	<p>&quot;The second condition requires that the processing is 
	undertaken with a view to the publication of journalistic material. Reporting, 
	publishing and then storing articles within [X] archives (either in paper or 
	electronic format) would appear to satisfy this criteria (sic), so we would 
	accept that this counts as publication of journalistic material.&quot;</p>
	<p>&quot;The third condition requires [X] to demonstrate that it 
	reasonably believed that publication would be in the public interest. Our main 
	focus here is in...ensuring that the decision in not obviously unreasonable, 
	i.e. no reasonable person could possibly agree. You have explained that 
	Newspaper archives have existed for hundreds of years and as previously stated, 
	were first kept physically as an historic and public resource. Details of the 
	report on [X] trial and conviction have been retained within your archive in 
	line with this practice and tradition and were already available for anyone 
	wishing to search the archives manually. ...it is my view that the article was 
	published and retained within [X] archives in line with standard industry and 
	[X] practice with a view to publishing in the public interest&quot;</p>
	<p>&quot;The fourth condition requires [X] to demonstrate that it 
	reasonably believed that compliance with each provision of the DPA was 
	incompatible with the purpose of journalism. This requires you to demonstrate 
	that [X] did not think that there was a more compliant way to get this 
	information into the public domain....You have explained that your guiding 
	principle is the need to maintain the integrity of the archives as far as 
	possible in order to preserve their value as a historical record, which 
	generally means keeping those archives indefinitely...On the basis of the above, 
	it is my view that [X] decision to publish this article complies with the fourth 
	condition of the DPA.&quot;</p>
</blockquote>
<p>The conditions having been satisfied, the ICO closed the case, and the report 
on the fraudster's conviction presumably remains in the archive.</p>
<h3>Satamedia</h3>
<p>The ICO's interpretation of the law isn't really surprising. The exemption in 
Section 32 of the DPA follows Article 9 of the EU
<a href="http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=CELEX:31995L0046:en:HTML" target="_blank">
Data Protection Directive</a> (the <strong>Directive</strong>) which states:</p>
<blockquote>
	&quot;Member States shall provide for exemptions or 
	derogations from the provisions of this Chapter, Chapter IV and Chapter VI for 
	the processing of personal data carried out solely for journalistic purposes or 
	the purpose of artistic or literary expression only if they are necessary to 
	reconcile the right to privacy with the rules governing freedom of expression.&quot;
</blockquote>
<p>The Directive drives legislation in the EU member states. The ECJ, in a
<a href="http://curia.europa.eu/juris/document/document.jsf?docid=76075&amp;doclang=EN" target="_blank">
previous ruling</a> on 16-Dec-2008 known as <em>Satamedia</em>, examined the 
issue of freedom of speech and the media. In Finland, tax data on individuals 
whose income exceeds certain thresholds is public information, and newspapers 
publish it in lists organised by municipality, name and income bracket. The same 
information was transferred by the newspaper publisher to a fellow subsidiary, 
Satamedia, and made available over SMS, for a fee. So you could key in a 
neighbour's name and check whether they were declaring a reasonable amount of 
income relative to the lifestyle you observe, or you could look up a potential 
tenant and find out whether he is likely to be able to afford the rent. 
Presumably the main purpose of disclosing the data by law was to deter tax 
evasion by increasing transparency.</p>
<p>The ECJ stated:</p>
<blockquote>
	<p>&quot;the exemptions and derogations provided for in Article 9 
	of the directive apply not only to media undertakings but also to every person 
	engaged in journalism...</p>
	<p>Secondly, the fact that the publication of data within 
	the public domain is done for profit-making purposes does not, prima facie, 
	preclude such publication being considered as an activity undertaken 'solely for 
	journalistic purposes'... A degree of commercial success may even be essential 
	to professional journalistic activity.</p>
	<p>Thirdly, account must be taken of the evolution and 
	proliferation of methods of communication and the dissemination of information. 
	As was mentioned by the Swedish Government in particular, the medium which is 
	used to transmit the processed data, whether it be classic in nature, such as 
	paper or radio waves, or electronic, such as the internet, is not determinative 
	as to whether an activity is undertaken 'solely for journalistic purposes'.</p>
	<p>It follows from all of the above that activities 
	such as those involved in the main proceedings, relating to data from documents 
	which are in the public domain under national legislation, may be classified as 
	'journalistic activities' if their object is the disclosure to the public of 
	information, opinions or ideas, irrespective of the medium which is used to 
	transmit them.&quot;</p>
</blockquote>
<p>The ECJ ruled that if the sole object of Satamedia's activities is the 
disclosure to the public of information, opinion or ideas, then it is 'solely 
for journalistic purposes' under Article 9. Whether this was the case (or 
whether Satamedia had other objects) was a matter for the national court to 
determine.</p>
<h3 id="GvS">Google v Spain</h3>
<p>Now we come to Google v Spain (or to be precise, the
<a href="http://www.agpd.es/portalwebAGPD/index-ides-idphp.php" target="_blank">
Spanish Data Protection Agency</a>, <strong>AEPD</strong>). The case was 
triggered by a Mr Mario Consteja Gonzalez, who had defaulted on his social 
security payments, and as a result the Government had put his real estate up for 
auction and published notices about it in 1998 in a newspaper,
<a href="http://www.lavanguardia.com/" target="_blank">La Vanguardia</a>. The 
proceedings were later fully resolved. He asked AEPD to require the newspaper to 
remove the notices, but AEPD declined, taking the view that the publication was 
legally justified, and presumably, as in the UK ICO's assessment on <em>
Newsquest</em>, that archives are OK.</p>
<p>He also asked AEPD to require Google to remove links to the web pages of the 
newspaper which contained these notices. On this, the AEPD agreed. Google went 
to the Spanish High Court, which referred key aspects of the case to the ECJ. On 
25-Jun-2013, before the ECJ ruling, the Advocate General to the court
<a href="http://curia.europa.eu/jcms/upload/docs/application/pdf/2013-06/cp130077en.pdf" target="_blank">
issued an opinion</a> that the Directive does <u>not</u> 
establish a general 'right to be forgotten'. He wrote:</p>
<blockquote>
	<p>&quot;A newspaper publisher's freedom of information protects 
	its right to digitally republish its printed newspapers on the internet. In my 
	opinion the authorities, including data protection authorities, cannot censure 
	such republishing. The
	<a href="http://hudoc.echr.coe.int/sites/eng/pages/search.aspx?i=001-91706" target="_blank">
	Times Newspapers Ltd v. the United Kingdom (nos. 1 and 2) judgment</a> of the 
	European Court of Human Rights demonstrates that the liability of the publisher 
	regarding accuracy of historical publications may be more stringent than those 
	of current news, and may require the use of appropriate caveats supplementing 
	the contested content. However, in my opinion there could be no justification 
	for requiring digital republishing of an issue of a newspaper with content 
	different from the originally published printed version. That would amount to 
	falsification of history.&quot;</p>
	<p>&quot;An internet user's right to information would be 
	compromised if his search for information concerning an individual did not 
	generate search results providing a truthful reflection of the relevant web 
	pages but a '<a href="http://en.wikipedia.org/wiki/Thomas_Bowdler" target="_blank">bowdlerised</a>' 
	version thereof.&quot;</p>
</blockquote>
<p>and he concluded:</p>
<blockquote>
	&quot;The rights to erasure and blocking of data, provided for 
	in Article 12(b), and the right to object, provided for in Article 14(a), of 
	Directive 95/46, do not confer on the data subject a right to address himself to 
	a search engine service provider in order to prevent indexing of the information 
	relating to him personally, published legally on third parties' web pages, 
	invoking his wish that such information should not be known to internet users 
	when he considers that it might be prejudicial to him or he wishes it to be 
	consigned to oblivion.&quot;
</blockquote>
<p>The ECJ basically disagreed with this conclusion. It wrote:</p>
<blockquote>
	<p>&quot;Article 12(b) and subparagraph (a) of the first 
	paragraph of Article 14 of Directive 95/46 are to be interpreted as meaning 
	that, in order to comply with the rights laid down in those provisions and in so 
	far as the conditions laid down by those provisions are in fact satisfied,
	<strong>the operator of a search engine is obliged to remove from the list of 
	results</strong> displayed following a search made on the basis of a person's 
	name links to web pages, published by third parties and containing information 
	relating to that person, also in a case where that name or information is not 
	erased beforehand or simultaneously from those web pages, and <strong>even, as 
	the case may be, when its publication in itself on those pages is lawful</strong>...&quot;</p>
	<p>&quot;when appraising the conditions for the application of 
	those provisions, it should inter alia be examined whether the data subject has 
	a right that the information in question relating to him personally should,
	<strong>at this point in time, no longer be linked </strong>to his name by a 
	list of results displayed following a search made on the basis of his name,
	<strong>without it being necessary</strong> in order to find such a right
	<strong>that the inclusion of the information in question in that list causes 
	prejudice</strong> to the data subject. As the data subject may, in the light of 
	his fundamental rights under Articles 7 and 8 of the Charter, request that the 
	information in question no longer be made available to the general public on 
	account of its inclusion in such a list of results, <strong>those rights 
	override, as a rule</strong>, not only the economic interest of the operator of 
	the search engine but also <strong>the interest of the general public in having 
	access to that information upon a search</strong> relating to the data subject's 
	name. However, <strong>that would not be the case if it appeared, for particular 
	reasons, such as the role played by the data subject in public life, that the 
	interference with his fundamental rights is justified by the preponderant 
	interest of the general public</strong> in having, on account of its inclusion 
	in the list of results, access to the information in question.&quot; (our bold)</p>
</blockquote>
<h3>The unintended consequences of Google v Spain</h3>
<p>The effect of <em>Google v Spain</em>, combined with the ECJ's earlier <em>
Satamedia </em>decision on journalism and freedom of expression, is that it is 
OK to have online archives (of accurate, truthful information) but it may not be 
OK for search engines to show you where these articles are by indexing them. 
Let's explore some of the unintended consequences:</p>
<h4>On-site search boxes</h4>
<p>What the ECJ apparently did not consider is that media sites themselves 
(including Webb-site) normally have an &quot;on-site&quot; search box that allows readers 
to find content, and the technology of on-site search engines is no 
different, just their scope. If you have a large media organisation with 
multiple publications and a long-running archive, then searching that archive could be almost as good as 
using Google. So why is it OK to search, say, the Guardian's archive on its 
site, but not Google?</p>
<h4>Chilling effect</h4>
<p>Or does the ECJ ruling mean that media sites also censor their search 
results, even when the articles are still legally retained in their archives? 
The chilling effect of this would be that many media organisations simply close 
their archives to public searching, because unlike Google, they don't have the 
financial resources to throw at vetting requests for exclusion of search 
results. The detrimental effect on transparency that archive closure would bring 
is far greater than the sum of the inconveniences or embarrassment of public 
data. Those who cannot learn from history are condemned to repeat it.</p>
<p>These days, perhaps the largest repository of public domain information is 
Wikipedia, which certainly has its own
<a href="http://en.wikipedia.org/wiki/Special:Search" target="_blank">search 
facility</a>, and most of the articles contain numerous links to source 
material, such as articles in online media archives! We see
<a href="http://techcrunch.com/2014/06/07/wales-on-right-to-be-forgotten/" target="_blank">
no chance</a> of Wikipedia, which is based outside the EU, acceding to pressure 
to censor its search results. Yes, people can edit and delete most of its 
content, but that is a whole different matter, because others can reinstate 
content.</p>
<h4>Aggregation</h4>
<p>It should also be relatively simple to build a web site which, although not a 
search engine itself, sends search requests to the web sites of multiple media 
archives in one go. If you could simultaneously send search requests to say, the 
BBC, New York Times, Guardian, Australian and a hundred other media outlets, 
then who needs Google to find old reports? This new site would not have any 
index of its own, no results to cull or censor, it would simply present results 
pulled in real-time from other media web sites.</p>
<h4>Repetition</h4>
<p>And what if a new article links to an older one and repeats content in 
it? When the new article is indexed by Google, the old article will be one hop 
away from the new one. Even if search engines are required to exclude known pages from their search 
results, that doesn't stop people who already know the information from creating 
new web pages which contain the same information. They are just exercising their 
freedom of expression. There's no easy, automated way to accurately catch those 
references, so search engines would then crawl those new pages and the results 
would pop up again. This means that the data subject would have an endless 
battle to suppress information.</p>
<p>So while we are at it, here are the links (which we found today on Google, 
still there) to the 1998 notices regarding Mario Consteja Gonzalez's property 
which started all this. 
The Webb-site server is not in the EU and nor are we, so if you are watching in 
the EU, then look away now. The notices are on
<a href="http://hemeroteca.lavanguardia.com/preview/1998/01/19/pagina-23/33842001/pdf.html" target="_blank">
19-Jan-1998</a> and
<a href="http://hemeroteca.lavanguardia.com/preview/1998/03/09/pagina-13/33837533/pdf.html" target="_blank">
9-Mar-1998</a>.</p>
<p>OK Europeans, you can look again now!</p>
<h4>Reputation cleansing</h4>
<p>If you are an EU citizen without a role in &quot;public life&quot; as the ECJ puts it, 
then you can write to search engines and have embarrassing information removed, 
but if you have a role in public life, for example as a politician, then there 
may be a public interest in rejecting that request. </p>
<p>But the ECJ appears not to have considered that many public figures (with the 
notable exception of royalty) are not born into public life but aspire to it, 
for example, as politicians. So they start off as private figures, when the 
ECJ's ruling benefits them.</p>
<p>So if you are thinking of running for office in your local government, 
perhaps later moving up to your national congress or even the presidency, then 
before you start, contact all search engines and clean up your record. Get rid 
of that report of a conviction for
<a href="http://seattletimes.com/html/politics/2008628347_apnanniesandtaxes.html" target="_blank">
employing an illegal immigrant</a>, or drunk driving, or not paying your council 
taxes. Erase the press reports of cheating on your first spouse or a messy 
divorce in which you hid your assets. Then run for office. Your electoral 
opponents will not be able to find any dirt on you.</p>
<p>It wasn't hard for us to find a good example of this. Take Councilman Stewart 
Chen, of Almeda, California, who has just been subject to scrutiny in local 
media in &quot;<a href="http://thealamedan.org/news/councilmans-fraud-conviction-surfaces" target="_blank">Councilman's 
fraud conviction surfaces</a>&quot;. Long live the
<a href="http://en.wikipedia.org/wiki/First_Amendment_to_the_United_States_Constitution" target="_blank">
First Amendment</a> of the US Constitution, and long live
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html" target="_blank">
Article 27 of HK's Basic Law</a> (when the Privacy Commissioner chooses to 
respect it). As China should know, without a free and open media, officials will 
be far less accountable.</p>
<h4>Knowledge is power</h4>
<p>On the other hand, those who already know the dirt, which is no longer 
visible in search results, will be able to use it against you once you are in 
public office by threatening to reveal it on public interest grounds. Google 
will even have to keep an index of that censored information, to tell its search 
engines not to crawl those pages again - so they will have a lot of valuable 
information that the electorate will not. Without realising it, the ECJ just 
made Google and anyone else who runs a search engine more powerful.</p>
<p>Indeed, with some resources, people could build private search engines 
(preferably outside the EU) to crawl the web and recover this information, 
making it available on subscription, or just using it for private leverage. If 
they publish it, then they may take the precaution of blocking the results from 
users on IP addresses in the EU, but citizens elsewhere in the world (and those 
with non-EU proxies) will be able to see it. So another unintended consequence 
of the ECJ's ruling is the &quot;Great Firewall of Europe&quot; where information that is 
available outside the EU will not be available inside it.</p>
<p>Even if the whole world followed the EU's decision, private search engines 
(and those run by Governments) could still crawl the web and collect the 
information. That puts those people in a position of knowledge and power that 
most of us cannot afford.</p>
<h4>Relevancy</h4>
<p>The ECJ judgment contains multiple instances of &quot;relevant&quot; or &quot;irrelevant&quot; in 
relation to search results. But the point the court really misses is that 
relevancy is not a matter for the data subject to determine, nor should it be a 
matter for a search engine. Relevancy is in the eye of each beholder, in all the 
circumstances, and in accordance with her own value judgments and beliefs.</p>
<p>A debt default that was eventually settled, or the fact that someone is a 
discharged bankrupt, may be irrelevant to some people, but relevant to others. 
Perhaps you are considering letting an apartment to this person. Perhaps you 
might think, as credit agencies do, that past defaults are a statistical guide 
to future defaults. A past conviction for drunk driving may be irrelevant to 
some readers, particularly if they have occasionally broken that law without 
conviction themselves, but to a reader who is a Mormon or Muslim, the fact that 
the person was drinking at all, let alone drink-driving, may affect their 
assessment of his character.</p>
<p>Of course, the irony of this is that if a data subject truly believed that 
information about them is irrelevant to all possible viewers, then they wouldn't 
care whether it was displayed in search results or not. The fact that they are 
going to the effort of having it suppressed in itself suggests that they think 
the information <u>will</u> be relevant to at least some viewers if made available to 
them.</p>
<h4>Practicality</h4>
<p>Like the
<a href="http://en.wikipedia.org/wiki/Entropy_(arrow_of_time)" target="_blank">
arrow of time</a>, public domain disclosure practically isn't reversible. Once 
you know something, you can't be forced to forget it, and you can't practically 
be stopped from repeating it, whether to a friend over coffee, or to the whole 
world on the web. Attempts to suppress the information, or make it harder to 
find, are really rather futile and as we have shown, dangerous to open society. 
You don't have a right to make other people forget, but you do have a right to 
remember.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2303807">Google LLC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2242652">HKSAR Privacy Commissioner for Personal Data</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
		</ul>
	<hr>
<p><a href="/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="#top">Back to top</a></p>
<hr>
</div>

</body>
</html>
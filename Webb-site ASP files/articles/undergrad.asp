
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

<script type="text/javascript">document.title="The Undergraduate";</script>

	<div class="summary">So the truth is out, and Richard Li has admitted that he did not graduate from Stanford, contrary to claims previously made in PCCW biographies and the group web site. In admitting this, the company took pains to emphasise that the claim was not made "in public disclosures filed by the Company in accordance with applicable legal requirements". That's true, as far as it goes... but Webb-site.com can reveal that the degree claim has been made in both the US and Singapore in legal filings of documents for which Richard Li was responsible - read on.</div>

<h2 class="center">The Undergraduate<br>
<span class="headlinedate">23 March 2001</span></h2>
<p class="revisedate">updated 24-Mar-01</p>
<p>Investors who (despite our warnings) bought stock in Pacific Century Cyberworks Ltd (<b>PCCW</b>)
during the heady days of early 2000 must now be wondering just what their
Chairman was made of. Many investors, particularly in the US, where the family
name is less important, may have drawn confidence from the often-stated
&quot;fact&quot; that Richard Li had a degree in computer engineering from
Stanford University, the prestigious university around which Silicon Valley
grew. </p>

<p>Indeed, public relations material previously distributed by the company and on its <a href="http://www.google.com/search?q=cache:www.pccw.com/about_the_company/management_content.html+pccw.com+graduated+stanford+computer+engineering&amp;hl=en" target="_blank">web
site</a> included a claim that Mr Li: </p>

<blockquote>

<p><i>&quot;graduated from Stanford University with a degree in
computer engineering&quot;</i>. </p>

</blockquote>

<p>Hats off to the <a href="http://www.iht.com/articles/14124.html" target="_blank">International
Herald Tribune</a> for checking this out with Stanford insiders and getting the
scoop. Journalists have spent years repeating the same falsehood about Mr Li's
degree without ever being corrected by the only person sure to know. Since
PCCW's general counsel claimed to the IHT that the release of Mr Li's academic
record without his consent would be a breach of a US privacy law, by the
company's own assertion, journalists had no independent way to verify the claim
themselves. </p>

<p>The myth persisted despite the fact that Mr Li's companies have
a crack team of public relations staff who monitor and report back on media
coverage, and have in the past written to the press to complain about other
aspects of coverage. Indeed, when <i>Webb-site.com </i>blew the cover on <a href="kroll.asp" target="_blank">the
investigation</a> by detective agency Kroll of our (and others') negative criticism of the
group's Cyberport property development in 1999, the spotlight immediately fell
on the group, which denied having &quot;assigned anyone to investigate the
Cyberport or criticism of it&quot;. </p>

<p>As a result of the IHT article, PCCW yesterday issued a <a href="http://www.pccw.com/press_room/2001/20010322.html" target="_blank">statement</a>,
which said in part: </p>

<blockquote>

<p>&quot;The Company emphasizes that this inaccuracy did not appear
in public disclosures filed by the Company in accordance with applicable legal
requirements.&quot; </p>

</blockquote>

<p>What on earth has that got to do with it? <i>Webb-site.com </i>believes
that any statements made by a company, whether or not they are filed with
regulators, should be made to the same standard of care, accuracy and
truthfulness. To place this &quot;emphasis&quot; on legal filings as opposed to
other statements brings into question the importance the group attaches to its
other public statements. </p>

<h3>Legally filed Documents</h3>

<p>The claim regarding legal filings is true as far as it goes. However,
<i>Webb-site.com</i> can exclusively reveal that the degree claim has been
made in legally filed documents for which Richard Li, as a director of the companies
concerned, was legally responsible. </p>

<p>Mr Li has been a director of Nasdaq-listed Indian portal <a href="http://www.rediff.com" target="_blank">
Rediff.com Ltd</a> since Apr-00, and in the prospectus dated 13-Jun-00, his
biography reads in part: </p>

<blockquote>

<p>&quot;Mr Li holds a B.S. degree in Computer Engineering from
Stanford University.&quot; </p>

</blockquote>

<p>That document was filed with the US Securities and Exchange
Commission in accordance with applicable legal requirements. In another case, Mr
Li was a director of Singapore-listed <a href="http://www.mediaring.com/" target="_blank"> Mediaring.com
Ltd</a> when it published an IPO prospectus on 11-Nov-99, which stated: </p>

<blockquote>
  <p>&quot;Mr Li graduated with a Bachelor of Science degree in Electrical
  Engineering from Stanford University.&quot;</p>
</blockquote>
<p><i>Electrical </i>engineering? Now we can't even seem to pin down the
subject. The degree claim was repeated in Mediaring's 1999 annual report which
is dated 24-Mar-00. Both documents were filed with the authorities in Singapore
as legally required. Indeed, the prospectus contains an explicit responsibility
statement which says:</p>
<blockquote>
  <p>&quot;This Prospectus <span class="highlight">has been seen
  and approved by the Directors and they individually</span> and collectively <span class="highlight">accept
  full responsibility for the accuracy of the information</span> given in this
  Prospectus and confirm, <span class="highlight">having made
  all reasonable enquiries, that, to the best of their knowledge and belief</span>,
  there are no other material facts the omission of which would make any
  statement in this Prospectus misleading and that this Prospectus constitutes <span class="highlight">full
  and true disclosure</span> of all material facts about the Invitation, the
  Company, the Group, the issued Shares and the Invitation Shares.&quot; (our
  highlighting).</p>
</blockquote>
<p>Now we know how long these documents can be, but surely the one of the first
things that most non-executive directors would do, when presented with a draft
of the document, would be to look at their own biography and confirm it?&nbsp;
We are not dealing with a novice director here - Mr Li lists dozens of
directorships in the Mediaring prospectus, and he must know what his duties are.</p>
<p>The prospectus clearly states that Mr Li (as a director) saw the prospectus
and approved it. We can only hope that he gives greater attention to documents
for which he is responsible in the future.</p>

<hr>
<h3>Stop press</h3>
<p>PCCW has put out a <a href="http://www.pccw.com/press_room/2001/20010323.html" target="_blank">statement</a>
regarding the filings (not one which would be legally required to be filed)
which tangentially refers to the two listings without naming them, and states:</p>

<blockquote>
<p>&quot;It appears that this situation arose principally because... information
for the filings was not processed by the relevant department within PCCW in
accordance with the same procedures established for the dissemination of
information by PCCW group companies.&quot;</p>

</blockquote>
<p>This does nothing to address whether Mr Li saw and approved the Mediaring
prospectus as the document claims in the responsibility statement highlighted
above. Either he did see it and approve it, or he didn't, in which case the
statement is false but he would still have been legally responsible.</p>

<p>Indeed,
section 50 of the Singapore Companies Act requires a copy of every prospectus to be signed
by every director or by his agent authorised in writing, which amounts to the
same thing in law. That copy is then filed with the Registrar of Companies where
anyone can inspect it.</p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=740">Li, Richard Tzar Kai</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=124">Degrees</a></li>
				
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
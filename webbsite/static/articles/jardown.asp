
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

<script type="text/javascript">document.title="What the UK should learn from Jardines";</script>

	<div class="summary">Jardine group is downgrading its UK Listing, lowering minority rights and governance standards. The controller can vote, sealing the deal for 4 companies, but minorities of Hongkong Land could save themselves from this fate. Once downgraded, full listing cancellation requires no vote. We make recommendations to London's FCA based on HK's successful 2002 reforms to avoid a Hobson's Choice of a low buyout offer or holding delisted shares.</div>

<h2 class="center">What the UK should learn from Jardines<br>
<span class="headlinedate">27 March 2014</span></h2>
<p>Along with its results on 6-Mar-2014, the Jardine group of 5 companies
<a href="http://www.jardines.com/assets/files/NewsAndEvents/corporate-press-releases/jardine-matheson/p140306.pdf" target="_blank">
announced</a> proposed downgrades to their UK listing status, which will 
reduce minority shareholder rights and governance 
standards. And guess what? The controlling shareholders can vote to approve this, so minorities have very 
little say in the matter, except in one case. </p>
<p>It is a popular misconception, because the majority of trading in the Jardine stocks 
takes place in Singapore, that they have a primary listing there. They don't. 
The Singapore listings are secondary listings, so Singapore plays no material 
regulatory role over the companies. What matters is the primary listing in 
London.</p>
<p>The group comprises <a href="../dbpub/orgdata.asp?p=646">Jardine Matheson Holdings Ltd</a> (<strong>JMH</strong>), 
which owns 82.5% of <a href="../dbpub/orgdata.asp?p=1214">Jardine Strategic Holdings Ltd</a> (<strong>JSH</strong>), which 
owns 77.6% of <a href="../dbpub/orgdata.asp?p=1210">Dairy Farm International Holdings Ltd</a> (<strong>DFI</strong>),&nbsp; 
73.5% of <a href="../dbpub/orgdata.asp?p=1213">Mandarin Oriental International Ltd</a> (<strong>MOI</strong>), and 50.01% 
<a href="../dbpub/orgdata.asp?p=506">of Hongkong Land Holdings Ltd</a> (<strong>HKL</strong>). All are incorporated in 
Bermuda. Crucially, JSH also owns 55.5% of JMH, making them 
subsidiaries of each other.</p>
<p>Under Bermudan law, subsidiaries can vote shares in their parents. If JMH and 
JSH were HK companies, they would be prohibited by
<a href="http://www.hklii.hk/eng/hk/legis/ord/622/s113.html" target="_blank">
section 113</a> of the Companies Ordinance from acquiring or voting shares in 
each other. The Bermudan cross-shareholding allows the boards of both 
companies to lock themselves in by voting the cross-shareholdings to re-elect the 
directors at any AGM. The cross-shareholding was established in late 1986 at 
lower levels, and since then, the Jardine group has been gradually swallowing its own tail, each of JSM and JSH 
increasing its stake in the other, partly by accepting scrip dividends, and JSH increasing its stake in DFI, MOI and 
HKL.</p>
<h3>Done deal, except for HKL</h3>
<p>All of the Special General Meetings to approve the listing downgrade will be 
held on 8-Apr-2014 in Bermuda. The JM circular
<a href="http://www.jardines.com/assets/files/NewsAndEvents/corporate-press-releases/jardine-matheson/p140306a.pdf" target="_blank">
is here</a>, the JSH circular
<a href="http://www.jardines.com/assets/files/NewsAndEvents/corporate-press-releases/jardine-strategic/p140306a.pdf" target="_blank">
is here</a>, the DFI circular
<a href="http://202.66.146.82/listco/sg/dairyfarm/press/p140306a.pdf" target="_blank">
is here</a>, the MOI circular
<a href="http://photos.mandarinoriental.com/is/content/MandarinOriental/corporate-2014-moil-transfer-listing" target="_blank">
is here</a> and the HKL circular
<a href="http://www.hkland.com/data/media_releases/investor_relations/2014/a140306a.pdf" target="_blank">
is here</a>. Each proposal is a Special Resolution which requires 75% of votes 
cast. But before you put on your shorts and jump on the plane, keep in mind that 
under current UK Listing Rules, the controlling shareholder is allowed to vote 
(but not for long - see below). That basically means that it is a done deal for 
JSH, DFI and MOI. It is also practically impossible to stop JMH, because by our 
reckoning, the Keswick family on the board have 9.21%, a &quot;1947 Trust&quot; which 
incentivises staff has 5.36%, and other directors have 0.43%. Add that to the 
cross-holding and you have 70.53%:</p>
<img class="center" alt="" src="../images/JMHholdings.gif">
<p>But for HKL, the story is slightly better, as JSH has only 50.01%, and its 
directors have only modest holdings totaling 0.16%, although there are probably 
other minor family holdings. Taking the figure of 50.17% control, if nobody else 
is in favour then it would take about 16.8% of the company, or about one-third 
of the independent shares, to stop the downgrade. <strong>Webb-site urges 
independent shareholders of HKL to vote against the listing downgrade. </strong>
Independent shareholders in the other companies should also vote against, but 
they won't win.</p>
<p>The circulars are full of disingenuous arguments about how &quot;Asian conditions&quot; 
are different, how the companies benefit from each other, and how good the total 
shareholder returns have been over the last decade (nothing to do with the 
property bubbles, of course) - but that really isn't the point. &quot;Trust us&quot; is 
not an acceptable alternative to the checks, balances and discipline that a 
Premium Listing brings. Trust, but verify. The current generation of management 
may turn out well, but they need proper oversight. It was only a generation ago 
that this group almost blew itself up in the bid for the land now under Exchange 
Square and then an
<a href="http://www.nytimes.com/1987/10/01/business/20-of-bear-stearns-to-be-sold.html" target="_blank">
abortive investment</a> in Bear Stearns before the 1987 crash.</p>
<h3>History</h3>
<p>All five companies were once listed in HK and were members of the Hang Seng 
Index, but they transferred their primary listing to London and
<a href="http://www.nytimes.com/1994/03/24/news/24iht-subjard.html?pagewanted=print" target="_blank">
then delisted</a> in 1994 after the regulators refused to allow them to 
downgrade their listing to a proposed &quot;trading only&quot; status ahead of the 
Handover of sovereignty. The 1991
<a href="../codocs/910909ConsNewListingStatus.pdf">consultation paper</a> on 
that is available on Webb-site. The delisting from HK has not changed the business presence in HK, where 
the group remains the biggest landlord in Central and one of the largest 
employers through various retail and service businesses. </p>
<p>Co-founder William Jardine, it should be remembered, persuaded the British 
Government to go to war with China in 1840 to protect the opium trade. The 
result of this First Opium War was the
<a href="http://en.wikipedia.org/wiki/Treaty_of_Nanking" target="_blank">Treaty 
of Nanking</a> on 29-Aug-1842 (full text
<a href="http://en.wikisource.org/wiki/Treaty_of_Nanking" target="_blank">here</a>) 
which ceded Hong Kong Island to Britain in perpetuity, without which we would 
not be writing this today, so thanks, Bill. Some 150 years later, 
there was really no reason to think that the change of sovereignty would result 
in regulatory retribution against the Jardine group, but perhaps this was a 
driving force in the group's decision to escape HK regulation.</p>
<p>A decade earlier, in 1984 during the Sino-British negotiations over HK's 
future, Jardines had led the way to shift their holding company from HK to Bermuda, perhaps 
fearing the imposition of global taxation on HK holding companies, rather than 
just taxing their HK profits as remains the case today. The shift of parent domicile 
to a tax haven remains a rational move, one which many HK companies have 
emulated. Today there are just 209 HK-listed companies incorporated in HK, or 
about 13% of the total, with 
75% incorporated in the Cayman Islands or Bermuda, both 
of which are British colonies. A breakdown of
<a href="../dbpub/domicile.asp">listings by domicile</a> is in 
Webb-site Who's Who.</p>
<p>Worldwide, it makes sense for companies to escape 
the tendency of their governments to seek to tax income from outside their 
jurisdiction. This problem is exemplified by the fact that many US-domiciled 
companies have cash stranded in their offshore subsidiaries because the US 
Government taxes dividend remittances.</p>
<p>William Jardine died unmarried. His sister Jean married one David Johnston, and 
their daughter Margaret Johnstone married Thomas Keswick (born Kissock). The 
couple spent some years breeding in New Brunswick, Canada before returning to 
the nest in Dumfriesshire, Scotland. They produced the line of male Keswicks that still runs the 
group. The current &quot;Taipan&quot;, <a href="../dbpub/natperson.asp?p=12165">Benjamin 
William Keswick</a>, has (we presume) the Y chromosome of his great-great-great 
grandfather Thomas Keswick, and Ben's 5 x great-grandfather Andrew Jardine was 
William's dad. Incidentally, the last will and testament of Will Jardine was an 
interesting exercise in early 1840s estate planning, and we'll get to that in a future 
article. </p>
<h3>The Listing downgrade</h3>
<p>Until now, the group has had a &quot;Premium&quot; listing in the UK. This used to be 
called &quot;Primary&quot;, with the alternative being &quot;Secondary&quot;. London has gradually 
morphed its rules over the years. It used to require that a company with a 
secondary listing must have a primary listing in another place, but that 
requirement was dropped in 2005. On 6-Apr-2010, Primary was renamed &quot;Premium&quot;, 
and &quot;Secondary&quot; was renamed &quot;Standard&quot; although a better 
term would be &quot;Bog Standard&quot;. Under a Standard Listing, a company only 
has to comply with the lowest common denominator set by the European Union 
through &quot;EU Directives&quot; - you know, the kind of governance that makes 
Spain and Greece so successful. Jardine group now wishes to downgrade from Premium to 
Standard.</p>
<p>The UK Premium listing rules are broadly similar to the HK Main Board Listing 
rules. There are requirements for minority shareholder approval of related party 
transactions above a certain minimum size, for pre-emptive rights, and to 
&quot;comply or explain&quot; against a Code on Corporate Governance. Soon, 
there may even be requirements on the UK Premium board for independent directors 
to be approved by non-controlling shareholders. Yes, we know this seems obvious, 
but it is something we have <a href="3wisemonkeys.asp">called for in HK forever</a>. These are not requirements of the 
UK Standard Listing. A comparison of Premium and Standard 
Listing requirements
<a href="http://www.londonstockexchange.com/companies-and-advisors/main-market/companies/primary-and-secondary-listing/premiumstandardandaimcomparison.pdf" target="_blank">
is here</a>.</p>
<p>The UK has also, with effect from 6-Oct-2009, allowed UK companies to obtain 
a Standard Listing rather than a Premium Listing. Previously, the secondary 
listing status was only allowed for foreign companies. Inclusion in the FTSE UK 
indices still requires a Premium Listing, but this paves the way for the UK to 
attract a whole new category of crappy companies to the Bog Standard who can claim that they are 
&quot;London Listed&quot;, glossing over the fact that this offers little protection.</p>
<h3>Getting out while they still can</h3>
<p>On 5-Nov-2013, the UK Financial Conduct Authority (<strong>FCA</strong>) 
launched a
<a href="http://www.fca.org.uk/news/cp13-15-enhancing-the-effectiveness-of-the-listing-regime" target="_blank">
further consultation, CP13/15</a>, on proposed changes to the Listing Rules to 
&quot;significantly enhance the protections for minority shareholders in premium 
listed companies&quot;. The cover of this document features a happy dude in a 
scarf, so it must be alright then.</p>
<p>The current requirement for a delisting from the Premium 
segment, introduced in Jul-2005, is significantly weaker than HK's. UK
<a href="http://fshandbook.info/FS/html/FCA/LR/5/2" target="_blank">Listing Rule 
5.2.5</a> normally requires approval of 75% of votes cast for a delisting from 
the Premium segment, but all shareholders can vote. That means, for example, 
that JMH could vote to delist JSH, and with 82.5%, it would succeed. The FCA 
writes:</p>
<blockquote>&quot;We are aware that stakeholders may feel that, in line 
with our other proposals, it is necessary to enhance shareholder protections 
where a controlling shareholder is present&quot;.</blockquote>
<p>You bet it is. In HK, the SFC dealt with this in 2002 after our 2001 article
<a href="hobsonschoice.asp">Hobson's Choice on Privatisations</a>, 
in which we pointed out that shareholders were often forced to choose between a 
low-ball buyout offer and being left with unlisted shares without any Listing 
Rule protections at all. So on 1-Feb-2002, the Takeovers Code was amended to 
require in
<a href="http://en-rules.sfc.hk/en/display/display_main.html?rbid=3527&amp;element_id=1598" target="_blank">
Rule 2.2</a> that a stock could only be delisted in a privatisation if the 
offeror had exercised compulsory purchase powers to acquire 100% of the company. 
Similarly, HK
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_6.pdf" target="_blank">
Listing Rule 6.12</a> mirrors the requirements for privatisations, requiring 75% 
of voted shares in favour, requiring controlling shareholders to abstain, and 
requiring that if more than 10% of all the independent shares vote against, then 
the stock will not be delisted.</p>
<p>Twelve years later, London is attempting to address the same problem. And 
guess who runs the FCA?
<a href="http://www.fca.org.uk/about/structure/executive-committee/martin-wheatley" target="_blank">Martin Wheatley</a>, former CEO of the SFC. So he should understand the problem. 
The FCA proposes adding a requirement that a simple majority of votes cast by 
independent shareholders must also be in favour for a delisting from the Premium 
segment. It's a half-measure, since you could still end up stranded in a 
delisted company or forced to accept a low-ball offer.</p>
<p>The FCA also noted that there is no requirement for shareholder 
approval on delisting from the Standard Listing (yes, really). So they said:</p>
<blockquote>&quot;We recognise the potential for circumventing 
cancellation provisions by transferring to the standard segment...So, we have 
proposed amending
<a href="http://fshandbook.info/FS/html/FCA/LR/5/4A" target="_blank">LR 5.4A4R</a> 
to ensure that the voting thresholds for transfers out of the premium segment 
are aligned to the cancellation provisions.&quot;</blockquote>
<p>In other words, if the rules are changed as proposed, then Jardines would 
need majority approval of independent shares voted in order to downgrade from 
Premium to Standard. Webb-site regards it as highly unlikely that outside 
shareholders would want to give up the protections of a Premium Listing. By 
doing it now, Jardines avoids the need for independent shareholders' approval. 
They are downgrading while they still can.</p>
<p>And once they are down to Standard Listing, the entire group could 
subsequently delist without any shareholder vote. This would certainly make it 
easier to squeeze out the remaining minority shareholders with a Hobson's 
Choice; take a low cash bid or keep delisted shares.</p>
<h3>Call to London</h3>
<p>It may be too late to stop most of Jardine group (except HKL) dropping to 
Standard Listing status, but Martin Wheatley and his FCA should get a grip on 
this problem, and change the rules to prevent companies delisting from the UK 
(Premium or Standard) 
unless they have been fully taken private (or have an equivalent listing 
elsewhere), following HK's example from 2002. The 
UK, Cayman Islands and Bermuda company laws, and many other commonwealth laws, 
provide methods to ensure that a successful offeror can get to 100% with either 
a compulsory purchase of the remaining minority (after 90% of the offer shares 
have been acquired) or with an all-or-nothing Scheme of Arrangement. So there is 
no need to force shareholders into a Hobson's Choice.</p>
<p><em>Disclosure: your editor David Webb is a Deputy Chairman of the Hong Kong SFC's Takeovers 
and Mergers Panel.</em></p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1210">DFI Retail Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=506">HONGKONG LAND HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=646">JARDINE MATHESON HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1214">JARDINE STRATEGIC HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1213">MANDARIN ORIENTAL INTERNATIONAL LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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
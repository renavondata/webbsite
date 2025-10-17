
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

<script type="text/javascript">document.title="Listing Rules Review Part 3: Count the Votes";</script>

	<div class="summary">In Part 3 of our review of the proposed Listing Rule changes, we look at shareholder democracy, Hong Kong style. Institutions we speak to are often surprised to hear that their votes are seldom counted. Companies persist in an easily-rigged show-of-hands system which hails from Victorian town halls. The Exchange fails to address this adequately. But we have a plan: if they don't fix it, then we will.</div>

<h2 class="center">Listing Rules Review Part 3: Count the Votes<br>
<span class="headlinedate">11 March 2002</span></h2>
<p>In our third instalment on the <a href="http://www.hkex.com.hk/library/listpaper/Corporate%20governance%20issues.pdf" target="_blank">consultation
paper</a> on the Listing Rules of The Stock Exchange of Hong Kong Ltd (<b>SEHK</b>),
we look at shareholder voting and general meetings. It is often a surprise to investors we speak
with, particularly overseas institutions, that the votes they thought they had
cast through their custodians are not normally counted.</p>
<p>Globally, perhaps the most famous battle going on at present is the HP-Compaq
merger, and whichever way the HP vote goes, everyone presumes without question
that their votes will be counted on the basis of one vote per share, and that
the results will be fully disclosed. However, if that vote had been taking place
in Hong Kong, then they would presume too much.</p>
<h3>Background</h3>
<p>In a typical Hong Kong listed company general meeting, all votes are normally
held on a show of hands. It's a system inherited from English company
law enacted in the 19th century. Back then, companies were often held by a small
number of local shareholders, and most could either attend a meeting or send
others as their appointed proxies. Nobody had computers, let alone electronic
calculators, so tallying of votes on a <b>poll</b>, where each share is counts for one
vote, was a tedious manual process. In those circumstances, it was normal and
practical for the Chairman of a meeting to dispense with the need for a poll if
the meeting was clearly either in favour or against a proposal on a show of
hands.</p>
<p>Ever since Britannia ruled the waves, the laws of the UK, Hong Kong, and
British territories like the Cayman Islands and Bermuda (where over 75% of Hong
Kong listed companies are domiciled) have allowed such voting procedures.</p>
<p>It doesn't matter how many shares you've got, you only have one hand. If you
feel strongly about this, then you can show up at the meeting and try to get a poll.
However, normally only the following people can demand a poll:</p>
<ul>
  <li>The Chairman; or</li>
  <li>Five shareholders present in person or by proxy (3 for Bermudan
    companies); or</li>
  <li>Shareholder(s) who together own 10% of the Company, present in person or
    by proxy.</li>
</ul>
<p>Often only 25% of the company (sometimes as low as 10% for large companies)
is in public hands, so it's unlikely that 10% will be present in the meeting.
The difficulty in demanding a poll is compounded by the fact that the vast
majority of the public shares are held through the Central Clearing and
Automated Settlement System (<b>CCASS</b>), often via your bank, broker or
custodian, because that is how they received the shares when they bought them,
and they have to be in the system to settle a sale.</p>
<p>CCASS is run by Hong Kong Securities Clearing Company Ltd (<b>HKSCC</b>), a
wholly-owned subsidiary of Hong Kong Exchanges and Clearing Ltd (<b>HKEx</b>),
which also owns SEHK. HKSCC is the monopoly clearing company and registers all
the shares it holds in the name of HKSCC Nominees Limited.</p>
<p>As a consequence, any public votes through CCASS normally boil down to a
single HKSCC employee, who shows up at the meeting and raises a hand in
accordance with the majority of votes on which CCASS has been instructed, either
in favour or against. Only if there is a poll will the shares count.</p>
<p> CCASS will not normally demand a poll, even if it has received
votes in respect of shares totalling more than 10% of the company. You would
have to make a special arrangement to get CCASS to demand a poll, in respect of
your shares alone, which would have to be at least 10% unless at least 4 other shareholders
(or 2 for Bermudan companies) at the meeting also demand a poll. Often there are
no genuine public registered shareholders who have the time to attend in person.</p>
<h3>How it goes</h3>
<p>Hong Kong shareholder meetings are almost always held behind closed doors,
out of sight of most public shareholders. No press, no cameras, no web streaming
of proceedings.</p>
<p>In practice, the votes of the public (on one hand) are nearly always
overwhelmed by the several hands of the company's employee shareholders
(non-directors) who each have a script and instructions on how to vote. As each
resolution is proposed, a young employee will stand up and say something like
&quot;Mr. Chairman, I have pleasure in seconding the resolution&quot;. Normally
each such employee shareholder holds only a small number of shares, but that
doesn't matter on a show of hands; there will be more of them than there are of
you, and they will win.</p>
<p>As SEHK itself wrote in 1999:</p>
<blockquote>
<p>&quot;Listed issuers may ensure that employee shareholders are present and cast their votes
accordingly, thus tending to result in the... transaction being approved.&quot;</p>
</blockquote>
<p>So next time you consider instructing your broker, custodian or bank to vote
at a meeting, remember - it probably won't count.</p>
<h3>SEHK's Proposal</h3>
<p> SEHK is well aware of this problem. After all, they are a fellow
subsidiary of HKSCC which goes through this voting charade almost every day. We
raised it several years ago, and after that the <a href="http://www.hkex.com.hk/library/listpaper/conpaper3.htm" target="_blank">Consultation
on the 1998/1999 Listing Rules Review</a> contained a proposal for a poll on
connected transactions (but not on other resolutions). The results of that
consultation vanished without
trace and the proposal was never implemented.&nbsp;The requirement did make it
into the first GEM Listing Rules in 1999.</p>
<p>No further progress has been made, and all that the SEHK now proposes
for the main board is:</p>
<blockquote>
  <p>&quot;to require voting by way of a poll for connected transactions and all
  resolutions requiring independent shareholders' approval (i.e. where
  controlling shareholders are required to abstain from voting).&quot;</p>
</blockquote>
<p>This is almost the same as the proposal as 1999. The SEHK writes that:</p>
<blockquote>
  <p>&quot;We recognise that voting by poll would serve as an effective means to
  ensure protection of shareholders' rights, particularly when dealing with
  matters which involve conflicts of interests or connected parties or have
  significant impact on companies and shareholders. However, taking into account
  the cost and time that may be incurred, such method of voting may not benefit
  the issuer and shareholders in the same way, if required for<b> less important
  matters</b>&quot;. (emphasis added)</p>
</blockquote>
<p>Wait a minute. Shareholders get consulted little enough as it is. They <b> own</b>
the company. If a resolution is important enough to require shareholders'
approval, then it is important enough to require the votes to be properly
counted, 1 vote per share. The <i>&quot;less important matters&quot;</i> to
which the SEHK refers would include:</p>
<blockquote>
<ul>
  <li>Major acquisitions and disposals of more than 50% of net assets</li>
  <li>Adoption of share option schemes</li>
  <li>Election of directors</li>
  <li>Appointment of auditors</li>
  <li>Amendments to the articles of association</li>
  <li>Approval of annual accounts and dividends</li>
</ul>
</blockquote>
<p>To suggest that such matters should be passed on a rigged show of hands, where
the public is reduced to a single hand, is an outrageous system beyond the
imagination even of Robert Mugabe. There is no practical
difficulty in conducting a poll. CCASS already knows how most of the public has
voted, and all that remains is to add up the votes of those few shareholders who
attend the meeting, and announce the total. Any minor expense and time incurred
is minimal in the context of effective shareholder governance.</p>
<p>A controlling shareholder with between 30% and 50% of the voting rights is by
no means certain of carrying all these proposals on a poll. Even if they have
more than 50%, the proposal may be a &quot;special resolution&quot; which
requires a 75% majority. And even if they have the requisite majority, it is in
the public interest that investors should know the extent of any opposition to
management proposals, and that the votes should be properly recorded and
announced.</p>
<p><b>The solution is simple. The Listing Rules should require that all votes in
meetings of shareholders should be held on a poll. The poll should be
scrutinised by the appointed auditor, who should certify the results. As a consequence, controlling
shareholders would think harder before trying to rip off minority shareholders.</b></p>
<p>The OECD has set out very basic <a href="http://www1.oecd.org/daf/governance/principles.htm" target="_blank">principles</a>
which should be followed to protect shareholders' rights. Principle I.C3 states:</p>
<blockquote>
  <p>&quot;Shareholders should be able to vote in person or in absentia, and
  equal effect should be given to votes whether cast in person or in
  absentia&quot;</p>
</blockquote>
<p>Principle II.A.3. states:</p>
<blockquote>
  <p>&quot;Processes and procedures for general shareholder meetings should
  allow for equitable treatment of all shareholders.&quot;</p>
</blockquote>
<p>Clearly, that is not something that SEHK, Hong Kong's for-profit regulator,
subscribes to.</p>
<h3>World Class City?</h3>
<p>On the subject of procedures, most of what we have described in general
meetings normally happens in either
Cantonese or (in the case of mainland or Taiwan-managed companies) Mandarin, in
either case without formal translation.</p>

<p>In the interests of making Hong Kong attractive to international investors,
who in most cases cannot read Chinese, SEHK goes to great length to require
bilingual (English and Chinese) announcements, financial reports and shareholder documents, but when
it ultimately comes to the shareholders' meeting, foreign investors face blatant
discrimination. When your editor attends such meetings, he usually gets a
sympathetic staffer from the company to sit next to him and poke him in the ribs
when it is time to vote (hopefully) in the right direction. For all we know, he
could be voting the wrong way.</p>

<p>Hong Kong cannot have it both ways - if you suck in foreign
investors by giving them information in a common language (English) as well as
the domestic language(s), then you must conduct shareholder meetings with
simultaneous and complete translation. If you want to limit the market to
Chinese-literate Chinese-speaking shareholders, and then require them all to
attend shareholders meetings if they want their votes to be properly counted,
then fine, go ahead, but don't aspire to be a world-class open financial centre.</p>
<h3>Fix it or we will</h3>
<p>We have a plan. If the SEHK persists with allowing the
show-of-hands system in its Listing Rules, then we will implement a fallback
system which targets 32 of the 33 companies in the Hang Seng Index (with the
exception of HSBC, which as a UK company holds its annual meetings in London),
comprising the bulk of Hong Kong's market capitalisation. We will establish 4
BVI companies and each of them and your editor will hold at least one registered
share in each company. All 5 of us will attend the general meeting of each
company and demand a poll on each resolution. So get those calculators ready.
One way or the other, you are going to have to get your acts together and count
the votes.</p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
				<li><a href="/dbpub/subject.asp?c=172">Poll voting</a></li>
				
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
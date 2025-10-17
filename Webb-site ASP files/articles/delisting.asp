
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

<script type="text/javascript">document.title="The Delisting Fiasco";</script>

	<div class="summary">Despite clear warnings of the consequences, HKEx on Thursday announced proposals to delist companies that fail to meet certain criteria of market cap, shareholders equity, profitability, clean audit reports or nominal share prices. The rational consequence was a crash in micro-cap stocks on Friday, followed by a hurried Sunday afternoon withdrawal of the proposals, for now at least. We give you the background.</div>

<h2 class="center">The Delisting Fiasco<br>
<span class="headlinedate">29 July 2002</span></h2>
<p>On Thursday 25-Jul-02, the Stock Exchange of Hong Kong Ltd (<b>SEHK</b>),
a wholly-owned subsidiary of <a href="../dbpub/articles.asp?p=9643" target="_blank">Hong Kong
Exchanges &amp; Clearing Ltd</a> (<b>HKEx, 0388</b>) <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020725news.htm" target="_blank">announced</a>
a <a href="http://www.hkex.com.hk/library/listpaper/HKEX%20Cover%20Jul.pdf" target="_blank">consultation
paper</a> with proposals for new initial listing criteria, continuing listing
eligibility and cancellation of listing procedures. </p>

<p>We'll deal with the initial listing criteria and cancellation
procedures in a later article, as these are not very controversial. What caused
calamity was the proposed criteria for continuing listing eligibility, better
described inversely as the &quot;delisting criteria&quot;. The proposed
delisting criteria include: </p>

<ul>
  <li>market capitalisation under HK$30m (US$3.85m) for 30
    consecutive trading days; or</li>
  <li>3 years of losses, with negative equity; or</li>
  <li>3 years of losses and a market cap under $50m for 30
    consecutive trading days; or</li>
  <li>winding up, receivership or liquidation of the listed
    company; or</li>
  <li>a total disclaimer of audit opinion or an
    &quot;adverse&quot; audit opinion (whatever &quot;adverse&quot; means); or</li>
  <li>a share price below $0.50 for 30 consecutive days.</li>
</ul>

<p>The result of the proposals was a panic sell-off of micro-cap
stocks on Friday, as investors quite rationally believed they were about to lose
both the market place for their shares and also the protection of the listing
rules, which require a certain level of financial reporting, corporate
disclosure and approvals of connected transactions. The Listing Rules may be
inadequate in many areas, but they are a lot better than no rules at all, which
is what you get with a delisted stock. </p>

<p>At <i>Webb-site.com</i>, we believe that once a stock has been
admitted to listing, HKEx has a duty to the public to provide a marketplace for
those shares, and such facility should only be withdrawn if either the company
has ceased business (in a winding up, receivership or liquidation) or it has
been privatised (100% acquired by its controlling shareholders). By all means,
tighten the initial listing criteria, but once a company is listed, you have to
live with it. </p>

<h3>Delisting would boost HKEx profits</h3>

<p>Under <a href="http://www.legislation.gov.hk/blis.nsf/e1bf50c09a33d3dc482564840019d2f4/58e31a74821ae381c8256483002915cd" target="_blank">Section
27</a> of the Stock Exchanges Unification Ordinance, SEHK has <i>&quot;the
exclusive right to establish, operate and maintain a stock market in Hong
Kong&quot;</i>. In other words, it is a legally protected monopoly. We believe
that with privilege comes responsibility to provide a universal service - just
as a monopoly electricity company cannot disconnect unprofitable customers.
Investors and listed companies have nowhere else to go in Hong Kong. </p>

<p>As we explained in <a href="listingchaos.asp" target="_blank">yesterday's
article</a>, the HKEx has a conflict of interest between being a regulator and a
for-profit company. Both buyers and sellers pay a trading fee of 0.005% on each
stock transaction as well as a CCASS settlement fee of 0.002% (subject to a
minimum of $2 and a maximum of $100). So overall it has income of at least
0.014% on each transaction, and it also gets listing fees from listed
companies.&nbsp; </p>

<p>Obviously, for similar velocities of turnover (the
percentage of a company's stock which changes hands in a given period),
micro-caps generate far less revenue for HKEx than blue-chips. Hutchison
Whampoa, for example, has a market cap of $238.75bn, which is almost 8,000 times
larger than the proposed $30m delisting criterion. Last month alone, it turned
over $9.19bn and generated income of at least $1.29m for HKEx. A typical blue
chip generates more income for HKEx in a single day than most micro-caps can generate in an
entire year. Indeed, the top 100 companies (by size) normally account for about
90% of market cap and turnover, and hence 90% of HKEx's trading and settlement
revenue. But it has to regulate the other 800 listed companies too. </p>

<p>On the expenses side of HKEx, the costs of regulating a
micro-cap are of course not 1/8000th the cost of regulating a blue chip. On the
contrary, regulating a
micro-cap often costs a lot more than regulating a blue chip, because micro-caps
tend to do more
corporate transactions which are large in relation to the size of the company,
and when they get into financial difficulty, they generate voluminous
restructuring proposals and documentation. </p>

<p>So it should be quite clear that these are loss-making
&quot;customers&quot; and HKEx has a direct financial interest in proposing to
delist them rather than regulate them. </p>

<h3>The reaction</h3>

<p>After the crash in micro-caps on Friday, HKEx initially put out
a <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/0207262news.htm" target="_blank">clarification</a>
announcement on Friday, then on Saturday <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020727news.htm" target="_blank">announced</a>
it would extend the consultation period from 31-Aug-02 to 31-Oct-02, and finally
on Sunday, in a press conference, HKEx Chairman Charles Lee <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020728news.htm" target="_blank">announced</a>
that HKEx would take out the whole of the section on the delisting criteria from
the consultation paper, and publish another version at the end of October. We
can hardly wait till Halloween. </p>

<p>It is extremely unusual to announce policy initiatives on a
Sunday, and this followed furious lobbying by &quot;market participants&quot;
(probably small brokers) with the Chairman of the SFC, the Chairman of HKEx and
Secretary for Financial Services Frederick Ma Si-hang (<b>Mr Ma</b>), who all
turned out in a variety of colourful Sunday shirts for the hastily arranged
press conference. Why the big hurry? Rumours suggest that a number of brokers
who have margin lending exposure against such stocks, or have used such stocks
as collateral for their own financing, may have faced financial difficulty if
the plunge had continued on Monday. </p>

<p>Alexa Lam, Executive Director of the SFC, told <i>Webb-site.com</i>
that: </p>

<blockquote>

<p>&quot;Based on the market movement of penny stocks on Friday, we
managed to identified (sic) brokers with potential FRR [Financial Resources
Rules] problems. We then contacted them individually to ascertain the latest
position and the results were satisfactory.&quot; </p>

</blockquote>

<p>So clearly the SFC had sufficient concern about certain brokers
to make enquiries. Whatever the reason, it appears that the HKEx felt this
couldn't wait until Monday morning. We can't help noticing that a few of the
worst affected stocks are ones which we believe have been manipulated and ramped
by syndicates, so they were bound to fall hardest. Other stocks, however, simply
suffered from being small and falling into the net. </p>

<h3>Self-fulfilling prophesy</h3>

<p>It should be obvious, but we'll say it anyway - whenever a
company gets remotely near fulfilling the delisting criteria, investors would
all start selling out at the same time, causing the market cap to crash and the
criteria to be fulfilled. If the limit for 3-year loss-makers is a market cap of
$50m, then you wouldn't find any with market caps of $51m or $52m for more than
a nanosecond, because as soon as they got down to about $70m, the price would
start to collapse. The only people that benefit in that situation are
controlling shareholders who might see it as an opportunity to force a delisting
and pick up all the minority stock on the cheap. It's like flying a spaceship
across the event horizon of a black hole - there is no way back and the gravity
will suck you in and crush you to a singularity. </p>

<h3>Accountability</h3>

<p>Today the finger-pointing began, with Financial Secretary Antony
Leung claiming that HKEx didn't consult the Government and failed to think
through the consequences. That just doesn't stand up to scrutiny. </p>

<p>Secretary for Financial Services Mr Ma either knew or should
have known what the proposals were. It's his job to know. The Government
appoints 8 of the 15 directors of HKEx, and so controls its board. In any case,
the proposals were foreshadowed at a press conference last Wednesday in which Mr
Ma <a href="http://www.info.gov.hk/gia/general/200207/24/0724211.htm" target="_blank">said</a>
<i>&quot;HKEx will shortly conduct a public consultation on a proposed framework
for continued listing and delisting arrangements&quot;. </i>At the same press
conference, it was Mr Ma who announced the new Listing regime which he had <i>&quot;jointly
reviewed&quot;</i> with the SFC and HKEx. It is quite clear that he was in a position
to know. And he would certainly understand what he was looking at - from years
of experience as a former
member of the GEM Listing Committee and former director of several listed
companies. </p>

<p>HKEx cannot have been unaware of the consequences, even if they
didn't figure it out for themselves. The SFC
Shareholders Group, of which your editor is a member, discussed this matter in a
meeting on 6-Mar-02. Your editor made clear that it was unacceptable to remove the market place of
minority shareholders so long as there is value in the shares. </p>

<p>Instead, your editor recommended that HKEx, through its
trading-screen system, should display a warning &quot;flag&quot; on listed
stocks which would not meet the listing criteria if they were applying for
listing. That would put them in the &quot;sick ward&quot; and give investors due
notice that the stocks may be riskier than normal. In fact, we already do this
for GEM stocks - all of which begin with the number &quot;8&quot; to denote that
they are on the GEM, which has lower entry criteria than the main board and is
meant to be a higher risk market. </p>

<p>The case for an alternative &quot;over the counter&quot; board
can only be made if investors have the same degree of protection as they get
under the listing rules, which in essence means that if the Stock Exchange won't
regulate them, then someone else must. But this should be an all-or-nothing
deal; either HKEx gets out of the regulatory business and hands it over to the
SFC, as we believe it should, or else it must provide regulation of any company
it has listed, both the winners and the losers. </p>

<p>No doubt the SFC forwarded the views of the SFC Shareholders
Group to the HKEx, which appears to have ignored them. </p>

<p>Time to test the Government's new accountability system - Mr Ma
and the HKEx owe Hong Kong an
explanation. Our bet is that Mr Kwong Ki-chi, Chief Executive of HKEx and a
former civil servant with no previous market experience, will be the fall guy. </p>

<h3>Quality of Markets</h3>

<p>HKEx should note that no such delisting criteria exist in the UK
Listing Rules - and yet the UK's quality of market is higher. In the
environmental sphere, the solution to air pollution is not to give everyone gas
masks, but to limit pollution in the first place and fine and jail polluters.
The same applies to listed companies - we need stronger listing rules, more
rigorous interpretation of them, statutory backing for them, and the ability to
punish offenders in a meaningful way to provide a deterrent to abuse of minority
shareholders. An effective means of compensation for abuse, through a
class-action system, would also help share the regulatory burden between
government and shareholders. </p>

<p>The HKEx is misleading both the public and itself if it thinks
that by delisting defrauded companies (and sweeping innocent but sick companies
into the waste bin with them), it will prevent more fraudsters coming to market.
It won't. You've seen the real reason - small companies are loss-makers for
HKEx. </p>

<h3>Consolidation</h3>

<p>Ironically, the proposal that has attracted the most media
attention is actually well-intended, to require companies with stock prices
below $0.50 to consolidate their shares (also known as a reverse stock split).
We support that requirement, because it would open the door to lower trading spreads (the
minimum gap between the bid and offer), as we explained in our article <a href="cutthespread.asp" target="_blank">Cut
the Spread</a>, on 6-Jan-02. Investors will have the same percentage of the
company (ignoring fractional shares) before and after consolidation, and the
market capitalisation will be theoretically unaffected. </p>

<p>In fact, this is nothing new. As we pointed out in January, <a href="http://www.hkex.com.hk/rulereg/listrules/app7a.doc" target="_blank">
paragraph 30</a> of the Listing Agreement already states: </p>

<blockquote>
  <p>&quot;Where
the market price of the securities of the Issuer approaches the extremities of
HK$0.01 or HK$9,995.00, the Exchange reserves the right to require the Issuer... to proceed with a consolidation or
splitting of its securities.&quot;
</blockquote>
<p>
<p>The Exchange has rarely enforced this, but the principle is there and all
they need to do is change &quot;$0.01&quot; to &quot;$0.50&quot; and actually
use the rule. However, a breach of this rule should be treated in the same way
as other breaches of the listing rules,
not by delisting, as this just penalises minority shareholders. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=38146">HKSAR Panel of Inquiry on Penny Stocks Incident</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
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
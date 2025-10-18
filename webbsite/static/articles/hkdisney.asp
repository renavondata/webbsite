
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

<script type="text/javascript">document.title="Disneyland Through the Looking Glass";</script>

	<div class="summary">We look at the governance and financial aspects of Hong Kong International Theme Parks Ltd, better known as Hong Kong Disneyland. We call on the Government to publish the company's accounts, the related agreements, and the identities of the independent directors it said would be appointed. And we ask, was this a good use of 280 hectares of land, and why was there no tender for the project?</div>

<h2 class="center">Disneyland Through the Looking Glass<br>
<span class="headlinedate">23 September 2005</span></h2>
<p>Now that the hoopla, if not the air pollution, has cleared, how much does it 
cost you to enter <a target="_blank" href="http://www.hongkongdisneyland.com">
Hong Kong Disneyland</a>? No, we don't mean the HK$295 week-day 
ticket price. Before you could enter, you had to build it. The vast majority of 
funding was public money, over $25bn, or $3,600 per resident. And if you 
take into account the value of the land for other uses, the opportunity cost of 
Disney is around $290bn, or about $42,000 for every HK resident.</p>
<h3>The History</h3>
<p>In then Financial Secretary Donald Tsang's
<a target="_blank" href="http://www.budget.gov.hk/1999/english/eindex.htm">
budget speech</a> of 3-Mar-99, the most interventionist and anti-competitive 
budget in decades, three no-tender projects were announced. They were:</p>
<ul>
  <li>the <a target="_blank" href="cybervillas.asp">Cyberport</a>, a residential and commercial property development on a 
  prime 24ha reclamation site in Telegraph Bay, Pokfulam, awarded to Richard Li 
  Tzar-kai, without tender;</li>
  <li>a cruise terminal and property development involving
  <a target="_blank" href="notagain.asp">Government land</a> near Oil Street, 
  North Point, to be awarded to a company controlled by Richard's father, tycoon 
  Li Ka-shing, again without tender, and later scrapped after the furore over 
  the Cyberport;</li>
  <li>a theme park development in Penny's Bay, Lantau, involving at least 280ha 
  of land, to be awarded without tender to the
  <a target="_blank" href="http://www.disney.com">Walt Disney Company</a>.</li>
</ul>

<p>The problem with no-tender projects is that you seldom get the best terms 
that are available, because you automatically exclude anyone who might be 
willing to offer them. It goes against the fair trade and free market principles that the 
Government claims to cherish, and investment in such projects also contradicts 
their purported &quot;big market, small government&quot; principles.</p>

<h3><em style="font-style: normal">The site</em></h3>
<p><em style="font-style: normal">The 200ha first phase of Penny's Bay 
reclamation, plus about 20ha of the former
<a target="_blank" href="http://www.cheoyleena.com/">Cheoy Lee Shipyard</a>, can be seen in this
<a target="_blank" href="../images/HKDisneyUnderConstruction.jpg">satellite 
photo</a>. Some of that land was used for a lake, transport and other infrastructure to 
support the project, while about 126ha was transferred to Hong Kong 
International Theme Parks Ltd (<b>HKITP</b>), the joint venture between the 
Government and Disney. That includes 70ha for the park itself, and land for 
three sea-front hotels, of which two have opened. Private hotel owners have to 
pay for their land, but HKITP did not, thereby distorting the hotel market.</em></p>
<p><em style="font-style: normal">HKITP has a 20-year option to purchase the 
60ha Phase 2 (currently
<a target="_blank" href="http://www.pennysbayreclamation.com/">under reclamation</a>) for the formation cost of 
$2.812bn, to be adjusted for inflation. It also has first refusal to buy any 
additional land reclaimed to the East of Phase 2, further eating up Lantau's 
natural coastline. </em>The total land area of HK is about 1,104 sq km, but only 
about 15% of it is urban area, so the 2.8 sq km reclamation is equivalent to 
about 1.7% of our entire urban area. It is also as big as the
<a target="_blank" href="../images/HKsciencePark.jpg">Science Park</a>, the 
three industrial estates in
<a target="_blank" href="../images/TaiPoIndustrialEstate.jpg">Tai Po</a>,
<a target="_blank" href="../images/YuenLongIndustrialEstate.jpg">Yuen Long</a> 
and <a target="_blank" href="../images/TKOIndustrialEstate1.jpg">Tseung Kwan O</a>, 
and the <a target="_blank" href="../images/Cyberport.jpg">Cyberport</a>, all put 
together.</p>
<p>What could you do with 280ha? Assuming an overall saleable plot ratio of 5 times 
on the total 280ha site, then you will have enough 
land for about 150m sq ft of gross floor area. Allocating 80% of that to 
residential development, it would produce around 120,000 homes with an average 
size of 1,000 sq ft each, housing upwards of 250,000 people.</p>
<p>If you parcel up the site and auction it off gradually, you should easily get 
$2,000 per sq ft of GFA, valuing the site at HK$300bn. Allowing $10bn to reclaim 
the land from the sea and supply it with basic infrastructure, that would give 
the Government a net income of $290bn, excluding the tax on developers' profits. 
That would be enough to run our bloated Government for 18 months without any 
other income, or to scrap salaries tax for the next 8 years.</p>
<p>Of course, not every piece of land and sea-bed in Hong Kong should be used 
for residential development. We only need so much living space, although most 
residents would agree, from the privacy of their tiny apartments, that more, 
larger homes would be nice. And compared with our estimated $300bn land value, 
when the Disney project was launched, the Government
<a target="_blank" href="http://www.info.gov.hk/gia/general/199911/02/1102137.htm">
claimed</a> that it would produce &quot;net economic benefit&quot; to Hong Kong of $148 
billion over 40 years, or about $3.7bn per year on average. A grand claim, but they never produced any 
proper calculations to back it up. We presume they meant the estimated increase 
in
<a target="_blank" href="http://www.info.gov.hk/censtatd/eng/statliteracy/edu_booklet/introtogdp/gdpgnpbop.htm">
Gross Domestic Product</a>. 
One thing's for sure - it was based on a huge surge in mass-market tourism, 
which is something that not all residents of this over-crowded city may wish to 
see.</p>
<p>Let's suppose though, for the sake of argument, that there was general public 
support for allocating 280ha of precious land to a theme park in Hong Kong. Then 
the correct action for the Government should have been to open it up to 
qualified bidders to achieve the highest price, not to go into a private joint 
venture with a single operator. Even worse, the budget-speech announcement came 
8 months before there was any firm agreement with Disney. Politically the 
Government then either had to reach a deal or incur a huge loss of face, so it 
strengthened Disney's hand in the negotiations.</p>
<h3>The Deal</h3>
<p>The result was a deal for Phase 1 in which Disney invested just $2.45bn to 
own an initial 43% of the shares of HKITP. The Government put in $3.25bn of your 
money for 57%, and lent HKITP a further $6.1bn on favourable terms. It seems 
clear that in the event of financial trouble, the outside bankers, who lent $2.3 
billion, would get their money back first. And if you are wondering why HKITP 
needed to borrow from the Government, it is because $2.3 billion is all that the 
market would bear. Or as the Government put it in a
<a target="_blank" href="http://www.legco.gov.hk/yr99-00/english/fc/fc/papers/f99-48e.pdf">
paper</a> to LegCo:</p>
<blockquote>
  <p>&quot;The reason for raising just over a quarter of the debt from the market is 
  that in the early years the project cash flows can only prudently cover loan 
  servicing of that amount.&quot;</p>
</blockquote>
<p>On top of the $9.35bn invested in HKITP, Government spent $13.6bn on 
reclamation and construction of facilities outside of the park. It also had no 
choice but to buy the land-locked 
<a target="_blank" href="http://www.pennysbaycontract2.com/">Cheoy Lee Shipyard</a> for $1.51bn, and then found 
the yard was contaminated with dioxins, necessitating a $450m clean-up involving 
controversial incineration. Then, to enable MTRC to justify to its 400,000 
shareholders its investment in the railway extension to Disney, the Government 
had to waive $798m of dividends on the stock. That takes the total to over $25bn 
of public money in the project, 10 times what Disney invested, or about $3,600 
per resident. For Disney, its investment was small change, about 0.7% of 
Disney's current market value, and about half what its Chairman and CEO Michael 
Eisner
<a target="_blank" href="http://www.forbes.com/lists/2004/04/01/cz_ph_0401opiniondisney.html">
earned</a> in 1998, including stock option gains.</p>
<h3>Secrecy, and missing INEDs</h3>
<p>The accounts of HKITP have never been published. Such poor transparency sets a bad example for a 
government which claims to be keen on better corporate governance. Indeed, in 
Jul-01, the Government-appointed Standing Committee on Company Law Reform
<a target="_blank" href="http://www.info.gov.hk/cr/download/scclr/Rpt_e.pdf">
proposed</a> to amend the law to require all private companies in Hong Kong to 
file their financial statements with the companies registry for public 
inspection, as is the case in other jurisdictions such as the UK and Singapore. 
If the proposal had not been abandoned, then the accounts of HKITP would now be 
public, as would the full Cyberport accounts, which <i>Webb-site.com</i>
<a target="_blank" href="cybersanitize.asp">tried and failed</a> to obtain under 
the Code on Access to Information, thereby demonstrating what a sham the code 
actually is.</p>
<p>Although the agreements between HKITP, Disney and Government have not been published, a 
source who was present confirms that a senior official briefed journalists just 
after the deal was signed. Reported figures, which Government has not denied, 
say that Disney gets a royalty of 10% of 
ticket sales just for being Disney, plus 5% on food, beverage and merchandise, 
an overall 2% management fee on gross revenue, plus incentive payments ranging 
from 2% to 8% of the operating profit. On top of that, you can bet that Disney 
still gets license fees from the manufacturers of all the Disney paraphernalia 
that are sold in the park.</p>
<p>In that LegCo paper, the Government said that two independent non-executive 
directors mutually agreed by the Government and Disney would be appointed to the 
board of HKITP, but the Government has never said who these people are. <i>Webb-site.com</i> 
searched the Companies Registry, and found that at least up to the annual return 
of 24-Sep-04, there were only 9 directors; 5 from Government and 4 
from Disney. No INEDs.</p>
<p>We call on Government to publish the key agreements and the accounts of HKITP 
and all the other Government-controlled companies. It's the least that the 
taxpaying public can expect. It's your money.</p>
<h3>Back to the Land</h3>
<p>As for that land, the first 126ha was transferred into HKITP in return for 4 
billion of what Government calls &quot;subordinated shares&quot;. The notional 
$4bn value put on the land (at $1 per share) is equal to its reclamation and 
formation cost. In the event that the company outperforms an undisclosed &quot;base 
case&quot;, then the Government would be allowed to gradually convert those shares 
into full-ranking ordinary shares, but subject to a cumulative conversion 
ceiling which rises at 5% per year, starting 5 years after the park opens and 
continuing for 20 years, with not more than 10% of the shares being 
converted in a single year, even if the profits are in Fantasyland.</p>
<p>That means that eventually, by 2030, and only if the park beats the forecast, 
then the Government could end up with 74.7% of HKITP, and Disney with 25.3%. The 
Government explained to LegCo:</p>
<blockquote>
  <p>&quot;[Disney's] forecast of the financial performance of HKD (the &quot;Base 
  Case&quot;)...showed that the project could cover the cash cost of building and 
  operating the theme park and related facilities, but could not cover the cost 
  of the land.&quot;</p>
</blockquote>
<p>Never mind the $300bn <i>value </i>of the land, by the time Disney had 
deducted all its fees from HKITP, and all the usual operating costs of the park 
and hotels, it expected that the project could not even cover 
the <i>cost </i>of dumping sand in the sea. No wonder Mickey Mouse was wearing 
such a big smile in this photo.</p>
<img class="center" alt="" src="http://www.info.gov.hk/gia/general/199911/02/ce.jpg">
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=43527">CHEOY LEE SHIPYARDS, LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=29477">HONGKONG INTERNATIONAL THEME PARKS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=43528">PENNY'S BAY INVESTMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=29478">Walt Disney Company (The)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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
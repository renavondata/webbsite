
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

<script type="text/javascript">document.title="Third Time Lucky for Harbour Centre?";</script>

	<div class="summary">Just days after denying any intentions, Wharf now says it is considering privatising Harbour Centre Development. Wharf hopes this is third time lucky - we take a look at the previous failed attempts, and reveal some information on  Harbour Centre's investment portfolio.</div>

<h2 class="center">Third Time Lucky for Harbour Centre?<br>
<span class="headlinedate">20 July 1999</span></h2>
<p>Wharf and Harbour Centre Development (HCD) yesterday confirmed that
they were in preliminary discussions to privatise HCD by way of a scheme of
arrangement. This follows hot on the heels of the privatisation of Lane Crawford
by Wharf's controlling shareholder, Wheelock. This was covered extensively in <a href="default.asp">
previous articles</a>. </p>

<p>We'll take you through the recent history of HCD, and reveal
some information on its investment holdings which we've pieced together from
public disclosures. </p>

<h3>Third attempt</h3>

<p>HCD was established in 1965 and listed on 15-Feb-71. Wharf has
tried to privatise HCD before. On 23-Apr-93 Wharf announced a proposed
privatisation of HCD at <b>HK$9.00</b> per share in cash. At the time, Wharf
held 57.54% of HCD. </p>

<p>The Independent Board Committee, consisting of Mr. Hui Sai Fun
and Mr. H.M.G. Forsgate, considered the terms to be &quot;fair and reasonable&quot; and
recommended shareholders to approve the deal. Mr. Hui was Deputy Chairman of HCD
and Chairman of private property group Central Development, owner of Central
Building and Central Tower in (you guessed it) Central. Mr. Forsgate was a
director of Wharf until his retirement in 1979, having joined the group in 1947. </p>

<p>However, after the first document went out proposing the scheme
on 21-May-93, it must have become clear to Wharf that the deal would not win
approval, because on 15-Jun-93, the date set for the meeting to approve the
scheme, the meetings were adjourned and Wharf announced an increase in its offer
to <b>$10.50</b> per share. </p>

<p>The net asset value of HCD had been quoted in the first document
(as of 19-May-93) at $10.12 per share and by the time of the second document (as
of 22-Jun-93) the value had risen to <b>$10.65</b> per share, due to increases
in the market value of its listed investments. So Wharf's second offer
represented an increase of 16.7% and a <b>1.4%</b> discount to net asset value.
The small discount probably just reflects market fluctuations in NAV and we
suspect the deal was struck with the opposing shareholders at NAV on 15-Jun.
Needless to say, the Independent Board Committee thought the increased offer was
also &quot;fair and reasonable&quot;. They were advised by Schroders Asia. </p>

<h3>Privatisation Failed</h3>

<p>In the end, the second privatisation did not achieve the
required 90% approval of the minority shareholders who voted on 12-Jul-93. Mr.
Hui resigned from HCD on 1-Oct-93. </p>

<p>We don't know who blocked the privatisation at either stage, but
we do know that Hongkong and Shanghai Hotels had a shareholding in HCD at the
time. At 31-Dec-92, they held 33,765,000 shares representing 10.72% of HCD. They
sold it progressively through 1993 and 1994, making an extraordinary profit of
$297m and achieving an average sale price of $11.08 per share, significantly
more than the Wharf offer. </p>

<p>It is reasonable to suppose that there were at least two
separate opposition groups, since the increase was probably designed to satisfy
one group, but the deal still failed. It is interesting to note that on
20-Oct-97, HCD disclosed an increase in Wharf's holding, by 4.02% from a
previous 57.61% to 61.63%. This is equivalent to 9.5% of the public float prior
to the purchase. Since the turn-out of shareholders at general meetings is
almost never as high as 95%, the 4.02% stake would have been enough to block the
privatisation. It therefor seems possible that the second blockage has been
removed.&nbsp; </p>

<h3>HCD, 1993-1998</h3>

<p>Since the 1993 offer, HCD has conducted a number of substantial
transactions. </p>

<p>In 1996, the company sold 3 hotels in Texas, part of the Omni
chain, for HK$1,055m, making a small profit of $24.2m. It also bought a site at
60 Victoria Road, Kennedy Town for $146m which is still held for a proposed redevelopment
into a 3 to 4-star 242 room hotel. </p>

<p>In 1997, the company sold its 23.95% stake in Furama Hotel
Enterprises during the takeover by Lai Sun Development. This was a well-timed
sale by the controlling Fu family, for cash at the top of the 1997 bull run,
when property values were at their craziest. </p>

<p>HCD benefited from the general offer, recording a profit of some
$1.15bn on its Furama stake. Unfortunately, they
turned around and put it all back into the HK and overseas stock markets. Total
purchases of listed investments for HCD in 1997 were $3.05bn, only $12m less
than they received from sales of investments, which included the Furama stake
sale of about $1.65bn. There must have been net losses on other transactions of
about $182m, reducing the exceptional profit on the Furama sale to $969m. </p>

<p>The 1997 results recorded a $336m provision for the reduction in
value of long term investments, and the resulting book cost exceeded market
value at 31-Dec-97 by a further $328m. In 1998, HCD made no changes to its
investment portfolio, and the market value declined by a further $189m. </p>

<p>At Webb-site.com, we believe listed companies should not use
shareholders' funds to play the stock market. This is poor corporate governance.
If a company has surplus funds, it should return the excess cash to
shareholders, who can then choose whether or not to put these funds back into
the stock market. </p>

<h3>The Investment Portfolio</h3>

<p>So what stocks did HCD buy? We don't know, but we do have a
clue. According to a disclosure made by Wheelock, on 4-Nov-97 the interest of
Barclays Private Bank &amp; Trust in Wheelock increased through a 1% boundary to
61.02% from a previously disclosed 60.16%. Of this interest, 1.00% was held by a
company called Hundred Tone Investments Ltd. That's equivalent to about 20.3m
shares of Wheelock. HCD's 1997 accounts show that Hundred Tone is a wholly-owned
subsidiary domiciled in the BVI. It's not possible to know the timing of the
purchase of these shares, but on 4-Nov-97 the Wheelock share price was about
$9.00. So perhaps about $180m was spent on Wheelock shares. </p>

<h3>Other Investments</h3>

<p>In 1997 HCD acquired interests in two associates. One, Hopfield
Holdings (20% owned) is the joint venture vehicle for the Kowloon Station
Package 2 development with the MTRC. The rest of this is held 20% by Wharf, 20%
by Wheelock, 20% by New Asia Realty &amp; Trust (NART), and 20% by Realty
Development Corporation (RDC), all of which are HK-listed. RDC is a 72.4%
subsidiary of NART, which in turn is a 74% subsidiary of Wheelock, which has a
48% interest in Wharf. Are you still with us? </p>

<p>HCD's other associate is a 50% interest in a company called
Gallaway Tune, which is recorded as a BVI investment holding company. We don't
know what investments it holds, but a glance at the Mar-98 accounts of RDC shows
that it owns the other 50%. </p>

<p>HCD's total investment in these associates in 1997 was $519m,
with no increase in 1998. </p>

<h3>Cross Holdings</h3>

<p>While we are on the subject of cross-holdings, note that RDC has
a similar 50% investment holding BVI associate called Diamond Heights
Investments. A glance at the Dec-98 accounts of Beauforte Investors Corporation
(BIC) shows that it owns the other half. BIC is listed and 49.9% owned by Wharf.
BIC also holds 8.7% of the Lane Crawford B-Shares for which it will shortly
receive $50.8m following the privatisation by Wheelock. </p>

<p>Given that Wheelock was once known as World International
(Holdings), this tangle of cross-holdings must be the original World-Wide Web. </p>

<h3>HCD Today</h3>
<p>HCD's main assets today are:</p>
<h4>Hongkong Hotel</h4>
<p>The Hongkong Hotel is in Canton Road, Kowloon. Completed in
1969, the hotel currently has 665 rooms and is in a prime location next to Star House, the
Star Ferry pier and the vast Ocean Terminal/Harbour City shopping complex. The
site on which the building stands has an area of 58,814 sf, allowing a potential
development of 882,210 sf with a plot ratio of 15 times. The land was originally
leased in 1864 for 999 years and was once part of the wharf and godown area. Old
leases like this contain no restrictions and thus no premium will be payable to
the Government if
a change of use is proposed on redevelopment.</p>
<p>As part of the hotel building, there is also 35,000 sf of office
space and 136,540 sf of retail space.</p>
<p>Wharf has recently disclosed plans to demolish the strip of
buildings which now stands hidden behind the Gateway 1 &amp; 2 complex, making
way for a 3.02m sf 100-storey tower. Interestingly, the Hongkong Hotel was the
only building in the strip not mentioned in the list of buildings that would be
demolished (comprising 4 office blocks and the other 2 hotels). Privatising HCD
will allow Wharf to include the Hongkong Hotel site in the project, and execute
it as a 100%-owned vehicle, rather than having to do a joint venture with HCD in
order to get hold of its land and consolidate the plots. As the owner of the
only plot of land on that strip that Wharf does not own, HCD could quite
reasonably demand a high price for co-operating with the plan.</p>
<p>The hotel and its retail/office portion were written down to
valuations of $1,918m and $816m respectively in the Dec-98 balance sheet,
valuing the combined building at $2,734m. This equates to an accommodation value
of about $3,100 psf based on a 15x plot ratio for redevelopment.</p>
<h4>Kennedy Town Site</h4>
<p>The site is still held for redevelopment at a carrying cost of
$155.1m and has been in the &quot;planning stage&quot; since 1996. The lease
expires in 2064.</p>
<h4>Associated Companies</h4>
<p>HCD has a 20% interest in the Kowloon Package 2 residential
project. If Wharf privatises HCD this will take Wharf's direct interest in the
project up to 40%. According to press reports, the group and MTRC recently
agreed a reduced land premium with the Government of HK$1,327 psf. This followed
the consortium's winning bid in the MTRC tender in Oct-97, just days before the
market crashed. The tender was for the right to co-develop the site with MTRC.
Developers typically offer the MTRC a profit share and sometimes property from
the&nbsp; project, and the MTRC picks the most attractive offer.</p>
<p>At the time of the tender, the land premium was not finalised,
opening the way for the subsequent reduction.&nbsp; MTRC is not taking such
chances these days, and has set premiums with the Government on the latest
project (Kowloon Package 3) before commencing the tender process.</p>
<p>We have no idea what HCD's 50% associate Gallway Tune's
investments are worth, since they are not visible in the balance sheet of HCD.</p>
<h4>Listed Investments</h4>
<p>We don't know what these are worth now, but the Hang Seng Index
has risen about 34% since 31-Dec-98, the year-end of HCD. As was the case with
Lane Crawford, it will be necessary for HCD to disclose the stock components of the
investment portfolio at the latest practicable date. The market value at
31-Dec-98 was $961.1m. As explained, we believe that part of this may be
Wheelock shares which have risen strongly this year.</p>
<h3>What is Fair and Reasonable?</h3>
<p>We see no reason why shareholders should be offered anything
less than current adjusted net asset value, nor should they receive much more.
HCD is basically a bundle of readily identifiable and easily-valued assets.
Unlike Lane Crawford, there is no debate to be had about the value of a retail
business and its stock in trade.</p>
<p>Net asset value must be adjusted to reflect the value of the
hotel building either in its current form or as a redevelopment site if greater,
and must also reflect the latest practicable valuation of the investment
portfolio and the value of the interest in the Kowloon Package 2 project.</p>
<p>Wharf's last attempt to privatise HCD (after a cheap opening
bid) was basically at net asset value, and they should save themselves the
effort and go straight to NAV to secure public approval of this deal.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=343">HARBOUR CENTRE DEVELOPMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=342">Wharf (Holdings) Limited (The)</a></li>
				
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
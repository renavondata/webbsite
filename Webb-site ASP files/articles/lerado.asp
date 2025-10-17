
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

<script type="text/javascript">document.title="Veto Lerado (1225) sale until they pay up";</script>

	<div class="summary">We call on Lerado shareholders to veto the sale of its core business unless and until the board increased the proposed special dividend from $0.30 to at least HK$1 per share. We would rather hold a stake in a real business than get trapped in another shell trading at a discount to its net cash. Management only owns 33%, so they had better listen to investors and revise the plan. David Webb holds just under 8%, and we need your support.</div>

<h2 class="center">Veto Lerado (1225) sale until they pay up<br>
<span class="headlinedate">1 September 2014</span></h2>
<p>We need your help! On 16-Jun-2014 <a href="../dbpub/articles.asp?p=7889">
Lerado Group (Holding) Co Ltd</a>, (<strong>Lerado</strong>, 1225) announced the 
proposed sale of its main business, making children's strollers and car seats, 
to <a href="http://www.dorel.com/" target="_blank">Dorel Industries Inc</a> of 
Quebec, Canada (listed in Toronto, DII.B), which owns a number of juvenile 
products
<a href="http://www.dorel.com/eng/juvenile-product-portfolio" target="_blank">
brands</a>, for a price (subject to adjustment) of HK$930m. This would leave 
Lerado with a huge pile of cash and a small remaining business which would allow 
it to retain its SEHK listing, manufacturing what it calls &quot;Medical products&quot; 
but is actually powered and non-powered mobility aids and wheelchairs (<a href="http://www.leradotech.com/" target="_blank">web 
site here</a>), and also a small plastic toy manufacturing business.</p>
<p>While the sale looks reasonable, it is currently ruined by the intention to 
hoard most of the proceeds, making it a bad deal for shareholders. As we explain 
below, Lerado would have post-deal net cash of about $1.39 per share, versus a 
current (29-Aug-2014) share price of $1.20, but proposes to pay out only $0.30 
per share and squat on the rest, far in excess of its requirements. <strong>We 
urge shareholders to vote against the sale unless the board announces a 
distribution of at least $1 per share, which will still leave Lerado ungeared 
with about half its net assets in cash.</strong> Webb-site founder David Webb 
holds just under 8% of Lerado. The circular for the deal
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0827/LTN20140827933.pdf" target="_blank">
<strong>is here</strong></a>. The meeting in on 16-Sep-2014.</p>
<h3>Net asset value and net cash</h3>
<p>At 31-Dec-2013, Lerado had 753,482,724 shares outstanding. Since then and up 
to 31-Jul-2014, options were exercised at $0.77 per share for 6.520m shares, and 
there were 3.274m options outstanding at the same exercise price. For the 
purposes of our calculation of distribution, we will assume complete exercise of 
the options, increasing the outstanding shares to 763,276,274 and raising 
proceeds of HK$7.54m.</p>
<p>The circular (p15) shows that the Remaining Group's factory premises 
are in the books at $53.2m but are worth HK$127.9m at 30-Jun-2014, an uplift of 
$74.7m ($0.098/share). To its credit in the past, Lerado has revalued its 
premises annually - we wish all companies would do this, to give a clearer 
picture of the balance sheet. We expect the 31-Dec-2014 accounts to reflect this 
increase and any subsequent adjustment by year-end. The Remaining Group also has 
a head office in Central, HK worth HK$54.4m, the same as its 2013 book value.</p>
<p>Taking the share options and the revaluation of premises into account, and 
using the pro forma balance sheet from Appendix III of the circular (p46) here 
is the pro forma net asset value calculation:</p>
<img class="center" alt="Lerado balance sheet" src="../images/leradobs.gif">
<p>These figures assume, as the circular does, that Lerado pays tax on the deal 
(in the PRC) of HK$76.36m, and transaction costs of HK$13.85m. Obviously there 
would be changes from the 2013 year-end position up to completion of the sale, 
but this is unlikely to make a material difference. On 29-Aug-2014, the day 
after the circular, Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0829/LTN20140829953.pdf" target="_blank">
announced</a> interim results to 30-Jun-2014, with net profit of $11.3m and net 
assets down by $7.3m due to foreign exchange differences.</p>
<p>The terms of the disposal call for US$10m 
(HK$78m) of the proceeds to be held in escrow for any material claims that may 
arise until 30-Apr-2015. So a breakdown of the cash is as follows:</p>
<img class="center" alt="Lerado cash" src="../images/leradocash.gif">
<p>As you can see, Lerado would be stuffed with cash of about $1.39 per share, 
of which about $1.29 is not subject to escrow. Of this, they propose to 
distribute only $0.30 per share, or about HK$229m. This would leave them with a 
war chest of about HK$830m ($1.09/share).</p>
<p>In our view, this allocation is completely the wrong way around. The 
remaining business had turnover of just HK$140m in 2013, of which $29m was the 
Plastic Toy Business and $111m was the so-called Medical Business. Even allowing 
for the possibility of capital expenditure to grow the business, Lerado should 
be more than comfortable with $200m of cash and no borrowings. If a commercially 
justifiable large acquisition comes along, they can always go back to 
shareholders with a rights issue, or issue shares as consideration.</p>
<p>Allowing for the fact that $78m of the cash will be tied up in escrow, this 
would still only justify a retention of HK$278m, or $0.36 per share. <strong>
This calls for a distribution of at least HK$1 per share, or $763m (assuming 
full exercise of options). </strong>Here is what the net assets would look like 
after that:</p>
<img class="center" alt="Lerado after $1 distribution" src="../images/leradoafter1.gif">
<p>As you can see, a $1 per share distribution still 
generously leaves the group with 42% of its net assets in cash (and another 15% 
in the escrow account) and no debt. At current market values it could even 
double the size of its factory premises (spending $128m) and still have $90m 
cash left over, and it would only do that if its business was growing massively, 
which would be a nice problem to have.</p>
<h3>Shopping list not credible</h3>
<p>The circular does include a $668m puffed up shopping 
list, namely $200m for expansion of the Medical Business (if and when the 
existing premises, of unspecified size, become too small), $280m for potential 
investment or acquisitions for the Medical Business (none has been identified), 
$120m for &quot;investment opportunities in other business sectors&quot; and $68m for 
working capital. This is only arrived at by taking the net proceeds of the sale, 
deducting the $299m proposed dividend and then allocating the remainder to this 
list. It also completely ignore the other net cash of $168m the group already has.</p>
<p>This is not a group to which you would want to write a 
blank check in the hope of some wonderful deals. Since listing in 1998 their 
deal-making has included a HK$21.1m investment in 2001 for 8% of a company which 
was developing genetically-engineered cows (yes, really). The investment was 
written down by $9.7m in 2004 - still, there's no point crying over spilt milk. Also in 
2001, they bought a 30% stake, still held, in
<a href="../dbpub/orgdata.asp?p=37844">Weblink Technology Ltd</a>, a maker of 
fibre-optic connectors now in the books as the &quot;associate&quot; at $5m. Incidentally
<a href="../dbpub/orgdata.asp?p=25466">Sandmartin</a> (0482), another 
Taiwanese-controlled company, owns 51% of Weblink. </p>
<p>Although they were small punts, neither of these 
investments had anything to do with the core business of strollers and car 
seats. Lerado also engaged (against our repeated advice at AGMs) in a 5-year 
frolic of retailing of children's products which was shut down in 2012 after 
cumulative segment losses of HK$127m on sales of $269m. Lerado repeatedly told 
us at AGMs for over a decade that its existing cash pile was needed for 
potential acquisitions, but it never made any and instead the hoard just diluted 
its return on equity and then got depleted by the retailing mess.</p>
<p>The skillset of manufacturers has almost no application 
to retailing, as we keep trying to explain to the board at AGMs of
<a href="../dbpub/articles.asp?p=2288">Kingmaker Footwear</a> (1170), another 
Taiwanese-controlled firm which is still blundering around in the retail space 
(run by the Chairman's daughter), detracting from its strong core manufacturing 
business. Kingmaker calls its retail brand &quot;<a href="http://www.fionasprince.com/" target="_blank">Fiona's 
Prince</a>&quot; but we call it &quot;Fiona's Frog&quot;. No amount of resuscitation is going 
to turn it into a prince. They will, eventually, shut it down, after burning 
through more of shareholders' money.</p>
<h3>Keep the business or give us the cash</h3>
<p>Although the Lerado disposal, at close to net asset value for a 
currently-difficult business, 
looks reasonable, this is more than offset by the fact that the board proposes 
to hoard the proceeds. If shareholders approve the deal in its current 
form, then they would be left with a cash shell with a small residual business, 
and the shares would be weighed down by this, likely trading below net cash per 
share. If you don't believe us, then look at fellow Taiwanese-controlled
<a href="../dbpub/articles.asp?p=32013">Yorkey Optical</a> (2788), or
<a href="yorkey.asp" target="_blank">Porky Yorkey</a> as we call it.</p>
<p>And this is why Lerado's shares currently (29-Aug-2014) are at $1.20, below 
the pro forma net cash of $1.39 before dividends.</p>
<p>We can and must act on this. The Lerado directors between them hold only 
33.02% of the issued shares. Webb-site founder David Webb holds just under 8%, 
so if another 25% votes against, and nobody else votes in favour, then the deal 
would be vetoed. We would rather keep a good (and clearly saleable) business, 
with management still incentivised by their holdings, than end up trapped in a 
cash shell.</p>
<p><strong>Unless the board announces an increase in the Proposed Special 
Dividend to at least HK$1 per share, David Webb will vote against the disposal, and we 
urge all shareholders to do likewise.</strong> The meeting is on 16-Sep-2014.
<strong>Vote AGAINST now</strong>, and send a message to management. If they 
change their mind, then they can announce the increased dividend, send out a 
short supplementary circular, and delay the meeting date to allow shareholders 
to change their vote in light of the new information.</p>
<p>Launching a public campaign was not our first choice. It seldom is. We 
reached out privately to the Board, when the deal was announced and again 
shortly before the circular was posted, advising them of our views, but they did 
not respond positively. Are you a shareholder? See our
<a href="../pages/howtovote.asp"><strong>voting guide</strong></a> or
<a href="../contact"><strong>
contact us here</strong></a>.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2288">KINGMAKER FOOTWEAR HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7889">Lerado Financial Group Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=25466">SANDMARTIN INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=32013">Yorkey Optical International (Cayman) Ltd.</a></li>
				
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
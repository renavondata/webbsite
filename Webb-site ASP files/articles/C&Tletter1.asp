
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

<script type="text/javascript">document.title="Open letter to the Board of C&T (0046) from investor David M Webb";</script>

<h2 class="center">Open letter to the Board of C&T (0046) from investor David M Webb<br>
<span class="headlinedate">24 April 2014</span></h2>
<p>Dear <a href="../dbpub/officers.asp?p=5450&amp;hide=Y" target="_blank">Directors</a>,</p>
<p>As you know, I disclosed in Jan-2014 that I hold over 5% of the issued shares of our company, 
<a href="../dbpub/articles.asp?p=5450">Computer 
and Technologies Holdings Ltd</a> (<strong>C&amp;T</strong>, 0046). That makes me 
the 
4th largest shareholder after your Chairman
<a href="../dbpub/positions.asp?p=5454">Ng Cheung Shing</a> (45.87%), Hutchison 
Whampoa Ltd (0013, <strong>HW</strong>, 11.94%) and one Hui Yau Man (10.97%).</p>
<p>As a former corporate finance professional and corporate governance expert 
who has successfully invested in HK small-caps for over 19 years, I seek to add 
value to my investees by offering free and sometimes unsolicited advice on their 
financial and governance arrangements. I don't tell them how to run 
their core business. While I can analyse its performance, running it is beyond 
my expertise, and I don't invest unless I believe that the core business is 
soundly run. I am a fractional owner of a business and its capital, and after 
years of accumulation I now own fractional interests of over 5% in 12 HK-listed 
companies and smaller interests in others.</p>
<p>Your business has been successfully transitioning from low-margin hardware 
and software installation (which the industry calls &quot;systems integration&quot;). You 
are no longer just shifting boxes. You have been moving into provision of 
software applications and services, which has more added value. This is 
reflected in the improving profit margin of your core business, and it also 
reduces the volatility of working capital, as you have less money occasionally 
tied up in receivables for systems integration projects.</p>
<p>You have a good core business,
<a href="http://www.ctil.com/index.php?option=com_content&amp;task=section&amp;id=2&amp;Itemid=25" target="_blank">
good customers</a> (including the HKSAR Government and various public bodies) 
and decades of valuable experience in your industry, but you have poor balance 
sheet management and a lack of focus on that core business, and this is diluting 
investor returns and the attraction of your stock.</p>
<p>Before I go on to my proposals, I will first recount the history.</p>
<h3>History</h3>
<p>You listed on 18-May-1998 after an offering of 55m shares (then 25% of C&amp;T) 
at $1.08 which raised HK$48.5m net of expenses. At the end of that year, you 
had net cash of $28.0m, net current assets of $52.5m and equity of $83.3m.</p>
<p>On 10-Dec-1999, as the dotcom boom was approaching its climax, you
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/1999/1213/LTN19991213031.HTM" target="_blank">
issued</a> 11m shares in a placing at $4.95, raising $54.2m net of expenses, &quot;to 
finance the development of E-business enabling technology and electronic 
procurement portal business...in the coming year&quot;.</p>
<p>A month later, on 17-Jan-2000, you
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2000/0118/LTN20000118032.HTM" target="_blank">
agreed</a> to issue about $230.3m of convertible bonds to HW. The 2-year bonds had a 6% interest rate and were 
convertible at $7.90 per share. HW also received a 2-year option to subscribe a 
further 17,489,362 shares at the same price. If the closing market price 
exceeded 165% of the conversion price for 20 consecutive days, then the bonds 
would convert automatically. The bond issue was completed on 21-Feb-2000, when 
the stock <a href="../dbpub/hpu.asp?i=1393" target="_blank">closed</a> at $23.30, and on 17-Mar-2000 the condition was satisfied, with 
the price at $20.50. So the bonds converted into 29,148,938 shares, then 11.1% 
of C&amp;T. The option was never exercised, and based on latest disclosures, HW 
still owns these shares, now 11.94% of C&amp;T.</p>
<p>Again, the stated purpose of the convertible bond issue was &quot;to help the Company accelerate 
its development and expansion, particularly in the e-business enabling 
technology and electronic procurement portal business&quot;.</p>
<p>Your shares reached a record daily closing high of $29.80 on 17-Feb-2000. 
That was just the nature of the dotcom bubble - 2 days earlier on 15-Feb-2000, 
shares of PCCW Ltd (0008) reached their all-time high of $131.75 ($26.35 before 
the subsequent 5:1 consolidation), which we
<a href="justhangup.asp" target="_blank">correctly called</a> on 
Webb-site. I don't blame you for raising the money on such overvalued terms, but I do 
blame you for keeping it.</p>
<p>As a result of the bond conversion and the placing, you ended 2000 with net 
cash of $234.9m, net current assets of $306.6m and shareholders' equity of 
$390.0m, or 4.7 times as much equity as 1998. This was far more capital than C&amp;T needed, 
and that has remained the case ever since. The money has never been utilised 
other than partially in 2003-2004 as extended customer credit in the systems 
integration business, but that segment has now shrunk as noted above.</p>
<h3>Bloated balance sheet</h3>
<p>Your balance sheet has become increasingly bloated. In the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0414/LTN20140414359.pdf" target="_blank">
annual report</a> at 31-Dec-2013, you had net cash, stocks and bonds of $375.0m, 
or $1.54 per share, compared with net tangible assets of $383.2m. The vast 
majority of this cash is idle, sitting in the bank or on time deposit, and as a 
result you have been tempted to speculate in the stock market, with poor 
results, thankfully not on a large scale, but it is the principle that counts. 
C&amp;T is not a professional investment manager and has no expertise in that area. 
To an experienced investor, there are few sights more unattractive than a 
company which speculates with his money.</p>
<p>At its height, you held $20.1m of equities at the end of 2011. I 
calculate that, over the 14 years since you began trading stocks, you have made 
a total net gain, including dividends, of only HK$1.4m, and in the 2 worst 
years, 2008 and 2011, you lost $4.6m and $5.0m respectively. This just added 
volatility to the group's earnings. <strong>Please stop punting the stock market 
and make a public commitment not to do this any more</strong>.</p>
<p>I also note that you have been betting on the RMB, even though the vast 
majority of your business is now in HK. (your largest customer is the HKSAR 
Government, at 24.9% of sales in 2013). 86% of sales were in HK in 2013, but you 
had the equivalent of HK$256.5m in RMB cash and time deposits, most of which I 
would guess is in HK banks in trade finance accounts. While the RMB appreciation 
and interest rate has padded your earnings in recent years, this is not a 
one-way bet. Recent moves have demonstrated this: since the end of 2013, the RMB 
has lost 2.8% against HKD. Again, this does not excite shareholders - if we 
wanted to put our money in the bank, in HKD or RMB, then we would do it 
ourselves.</p>
<p>This corporate obesity weighs down the company, diluting return on equity and 
reducing the impact of any earnings growth the core business can achieve. Just 
as a fat person cannot run fast, a business with an overweight balance sheet 
cannot deliver a high rate of return on equity. The growth of this hoard can be 
seen in the 10-year breakdown of the net tangible assets (excluding goodwill) 
attributable to shareholders, per share, is as shown below:</p>
<img class="center" alt="" src="../images/C&Tnta.gif">
<h3>Call for special distribution</h3>
<p>I urge you to make a one-time special distribution to slim down the balance 
sheet and return excess equity to shareholders so that they can invest it 
themselves. What is the surplus? We start by working out what you need to keep. 
Based on the last 10 years of trading, I consider that very ample working 
capital for a business of this type and size would be HK$100m, equivalent to more than 
your entire cost of sales last year.</p>
<p>This is also reasonable when you consider that in 1998, the year of your IPO, 
you had sales of $181m and ended the year with net current assets of $52.5m and 
a non-current bank loan of $6.5m. You made a clear statement in the prospectus 
dated 5-May-1998 that, taking into account the IPO proceeds and available 
banking facilities, you were of the opinion that the Group had sufficient 
working capital. I agree.</p>
<p>In 2013, you had similar sales of $187m but you ended the year but you 
ended the year with net current assets of $314.3m, plus the non-current portion 
of bonds worth $12.5m, for a total of <strong>$326.8m</strong>! So by cutting 
that back to $100m, I am proposing almost double the working capital that you 
thought was sufficient when you listed. I must be getting soft in my old age. 
Maybe you need less.</p>
<p>You have already proposed final and special dividends for 2013 of $0.09/share 
or $21.6m, which still leaves $305.2m. <strong>So you should be able to 
distribute&nbsp; a further $205m, or $0.84 per share</strong>. That will leave 
our company with net current assets (after selling its non-current bonds) of $100m.</p>
<p>From a legal perspective there is no impediment to this. Although the parent 
company (C&amp;T itself) has only small distributable reserves, the subsidiaries 
have retained profits which can be distributed up to the parent for distribution 
to C&amp;T shareholders, and if necessary a capital reduction can be effected at the 
subsidiary or parent levels. There is absolutely no doubt that the group will 
still be comfortably capitalised with no borrowings after the distribution.</p>
<h3>Investment properties</h3>
<p>C&amp;T is not a property investment company and has no expertise or economies of 
scale in that area, but by inertia you have fallen into it. At your 1998 IPO, 
you owned and occupied 3 units in Westlands Centre, an industrial building in 
Quarry Bay, as your head office, with a gross floor area of 7,128 sq ft. In 2001 
you moved out, so they were reclassified as investment properties, and sometimes 
leased out, and are now in the books at $45m ($6313/gsf). I note that most of 
the leases expire within a year, as note 33(a) of the 2013 report shows that you 
have $1506k due this year and only $293k due after 2014.</p>
<p>As you clearly don't need these properties for your core business, you 
should sell them and distribute the proceeds. If your shareholders want to 
invest in industrial buildings then there are plenty of listed companies or 
REITs in which they could invest with more expertise and scale in that area. By 
the way, your valuation appears conservative, as Unit 5 of 2,309 gsf on 8/F was 
sold on 17-Mar-2014 for $8150/gsf, which would value our units at about $58m, or 
about <strong>$0.238 per C&amp;T share</strong>.</p>
<p>To avoid Double Stamp Duty (or any stamp duty at all), you could sell
<a href="../dbpub/orgdata.asp?p=149235">C&amp;T (Hong Kong) Investment Ltd</a>, the 
BVI company that owns the units, after transferring any other assets out of it. 
This would increase the potential proceeds. As a preparatory move you could 
transfer the 3 units into 3 BVI subsidiaries. Intra-group transfers are exempt 
from stamp duty so long as the transferee is not disposed of for 2 years 
afterwards, so this would allow you flexibility to sell the 3 units separately 
if you still own them after 2 years. Let's face it, you got lucky in the latest 
asset bubble. Don't push your luck.</p>
<p>You also still hold 2 minor office units in mainland China worth $5.14m at 
31-Dec-2013. Unless you plan to reoccupy them, you should sell them. </p>
<h3>Share award scheme</h3>
<p>I am pleased to note that in 2008 you
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2008/0417/LTN20080417525.pdf" target="_blank">
adopted</a> a restricted share award (<strong>RSA</strong>) scheme, to 
incentivise employees. Shares are purchased in the market at company expense and 
held by a trustee until vesting conditions are met. This is a far better system than share options because:</p>
<ul>
	<li>No new shares are issued, so there is no dilution of existing 
	shareholders</li>
	<li>The incentive effect remains even if the share price falls after the 
	grant, unlike share options which can quickly go &quot;out of the money&quot;</li>
	<li>The cost of the shares purchased in the market for the scheme is 
	equivalent to a cash bonus, so it is tax deductible as a cost of employment, 
	unlike the theoretical value of a share option grant</li>
</ul>
<p>I note that the trustee is not permitted to vote the shares held for the 
scheme. This is good, because it prevents the company from influencing its own 
shareholder votes. The shares are, in effect, treasury shares until they are 
vested and transferred to the employee. As at 31-Dec-2013, the scheme held 
1,924,000 shares, or about 0.8% of C&amp;T.</p>
<p>Unfortunately, after adopting the RSA scheme, you subsequently passed a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/1101/LTN201211011210.pdf" target="_blank">
new option scheme</a> in 2012 after the old scheme expired, although no options 
have been granted under the new scheme. <strong>I urge you not to use the new 
option scheme, and to terminate it</strong> at the next AGM to remove the risk 
and increase investor confidence. The old scheme resulted in the issue of about 
15.63m shares, or about 6.4% of the current outstanding shares, diluting 
investors.</p>
<h3>General issue mandate</h3>
<p>The last thing you should be doing, with so much surplus equity, is diluting 
shareholders with more issues and without even offering them the discounted 
shares. You probably ask for this mandate (to issue up to 20% new shares, at up 
to a 20% discount, without offering them to existing holders) just because you 
can under the lowest allowable governance set by the Listing Rules, but it is 
completely inappropriate. Giving people loaded guns does not make the world a 
safer place.</p>
<p>So at the AGM on 20-May-2014, <strong>please withdraw the proposed issue 
mandate</strong> (<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0414/LTN20140414347.pdf" target="_blank">resolutions 
5 and 7</a>), and next year adopt the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0415/LTN20140415753.pdf" target="_blank">
best practice</a> (p10) set by <a href="../dbpub/orgdata.asp?p=2666">Arts 
Optical International Holdings Ltd</a> (1120),
<a href="../dbpub/articles.asp?p=2949">Allan International Holdings Ltd</a> 
(0684) and others, to limit cash placements to 5% of existing shares at a 
maximum discount of 5%, but allow up to 20% new shares for non-cash purposes 
(principally as consideration for acquisitions), and with no extension of the 
mandate to include repurchased shares. I hold more than 5% of Arts Optical and 
Allan too.</p>
<p>As long as you have sufficient authorised but unissued share capital (which 
you do), the Listing Rules still allow you to make a 1 for 2 rights issue 
without shareholders' approval if there is a future urgent need for new equity.</p>
<h3>Share buybacks</h3>
<p>You 
<a href="../dbpub/buybacks.asp?i=1393&amp;sort1=datedn&amp;freq=y" target="_blank">commenced share buybacks</a> on 16-Sep-2005, and you have repurchased 31.584m 
shares since then at a total cost of about $33.6m, most recently on 10-Apr 2013 at $1.80. This has reduced the 
outstanding shares to about 244.19m and enhanced earnings per share, but you cannot do much more, because of the 
25% free float requirement in the Listing Rules. Those who hold 10% or more, 
plus the directors, amount to 169,182,938 shares (69.28%) and do not count 
towards the float. Therefore, you could only buy approximately 18.62m shares 
(7.62% of existing shares) to reduce the float to 25%. At the current price of 
$2.37 that would only absorb about $44.1m of cash.</p>
<p>Also, as your Chairman holds 45.87%, being between 30% and 50%, the 
buybacks cannot accrete his holding by more than 2% in any rolling 12 month 
period under the &quot;creeper rule&quot; of the Takeover Code without triggering a 
mandatory offer obligation upon him, so that limits repurchases to about 4.18% 
per year at present.</p>
<p>Finally, unless buybacks are more tax-efficient (as they may be for PRC 
enterprises who are subject to dividend withholding tax), they are not the best 
way to return cash to the market, because they involve the company implicitly 
taking a view on its own share price. It is preferable to distribute the cash to 
shareholders and let them determine the share price without that interference.</p>
<h3>Dividend policy</h3>
<p>After the one-time special distribution has returned the balance sheet to a 
normal state, you should regularly determine dividends based on the projected 
cash requirements of the group. A mistake that many companies make is to fixate 
on a payout ratio of accounting earnings. This confuses the income statement 
with the balance sheet. Efficient capital allocation calls for companies to 
raise and retain only the equity capital that they need, in order to maximise 
their return on that equity, and not to squat on surplus funds when those 
capital requirements change.</p>
<p>For example, when you sell your investment properties, whether or not that 
makes an accounting profit, you should return the proceeds to shareholders 
unless they are needed for your core business. Never forget that if you treat 
the equity market well, then it will treat you well, with a higher share price 
which can be used as a currency for acquisitions or to raise equity if and when 
it is needed in future. A lean balance sheet also discourages customers from 
demanding excessive credit.</p>
<p>A good stock market reputation, with better governance, will improve customer 
confidence too. On the other hand, if you develop a reputation for ignoring the 
reasonable demands of your investors, then your customers won't have confidence 
either. I look forward to receiving your response to this letter and to meeting 
all the directors at the AGM if not before.</p>
<p>Yours sincerely,</p>
<p>David M. Webb</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=5450">COMPUTER AND TECHNOLOGIES HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
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
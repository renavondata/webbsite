
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

<script type="text/javascript">document.title="Henderson Investment, Round 2";</script>

	<div class="summary">Here we go again. It doesn't seem like three years ago that Henderson Land tried to privatise Henderson Investment at $7.60 per share. Now they are back with a higher, paper-only offer, valued at $12.90 tonight. We give our views.</div>

<h2 class="center">Henderson Investment, Round 2<br>
<span class="headlinedate">10 November 2005</span></h2>
<p>Three years ago, Henderson Land Development Ltd (<b>HLD</b>, 0012) 
tried to buy-out the minority owners of Henderson Investment Ltd (<b>HI</b>, 
0097) at HK$7.60 per share, increased from an
<a target="_blank" href="lobidforhi.asp">initial offer</a> of $7.35. We <a target="_blank" href="paintedcorner.asp">urged</a> investors to reject 
that deal, and they did, <a target="_blank" href="hivictory.asp">blocking</a> it 
by the narrowest of margins, just 0.036% of the issued shares. Back in 2002, we 
estimated HI was then worth about $12.26 per share. Investors who voted against 
the deal have been vindicated by the subsequent performance.</p>
<h3>What is HI?</h3>
<p>As of 30-Jun-05, HI owned 37.15% of local piped gas monopoly
<a target="_blank" href="http://www.hkcg.com/">The Hong Kong and China Gas Co Ltd</a> (<b>HKCG</b>, 
0003), 31.33% of <a target="_blank" href="http://www.hkf.com/">Hong Kong Ferry (Holdings) Co Ltd</a> (<b>HKF</b>, 0050) and 44.21% 
of <a target="_blank" href="http://www.miramar-group.com/">Miramar Hotel &amp; Investment Co Ltd</a> (<b>Miramar</b>, 
0071). HI also owns 1.96m sq ft of investment properties including Eva Court, 
where the big boss lives, as well as the Newton Hotels in
<a target="_blank" href="http://www.newtoninn.com/">North Point</a> and
<a target="_blank" href="http://www.newtonkln.com/">Mongkok</a> and some 
operating rights to mainland toll-roads and bridges through unlisted 64%-owned 
China Investment Group Ltd. HI also has a small chain of department stores known 
as <a target="_blank" href="http://www.hld.com/english/associate/citistore/">
Citistore</a>, and one-third of a commercial and office building called 
Hollywood Plaza on Nathan Road, Kowloon - the rest being owned by Hang Lung 
Properties Ltd and Sun Hung Kai Properties Ltd in equal shares. </p>
<p>The investment properties and hotels were valued at $5.0bn and $0.77bn in the 
Jun-05 accounts. Highways and bridges were held at amortised cost of $0.97bn but 
may be worth more - the infrastructure segment made a profit contribution of 
$152m in the latest year. HI also had net current assets, mostly cash, of about 
$2.9bn. It had long-term liabilities of $1.1bn but about half of that was 
deferred tax which mostly will never be payable as it relates to investment 
properties. Capital gains on disposal of investment properties are not taxable.</p>
<p>Together with HKCG, HI is in the final stages of privatising
<a target="_blank" href="http://www.hendersoncyber.com">Henderson Cyber Ltd</a> 
(<b>HC</b>, 8023), the balance sheet of which consisted mostly of cash raised 
from the 2000 IPO. After completion, HI will owns 78.7% of it, and HKCG the 
rest. That privatisation was fair and reasonable for the HC shareholders, and we 
said so at the time. Investors get back $0.42 per share in exchange for net 
assets of $0.15. Of course, this doesn't make up for the inflated Jul-00 IPO 
price of $1.25 (for a bunch of net assets worth $0.20, mostly being the IPO 
cash), but nobody had to buy it and we certainly didn't. Mr Lee had got on board 
the dotcom bandwagon after seeing fellow property tycoons do the same with 
Tom.com and Sunevision, but he was a bit late and the IPO was a flop.</p>
<p>Anyway, HKCG is by far the largest asset of HI. The stake is worth <b>$34.7bn</b> 
at market price, ignoring any control premium that the stake would attract if it 
is ever sold.</p>
<p>Although HKCG is trading on a 2004 P/E of 30.9, management appears to believe 
that the stock is undervalued because HKCG has spent about $1.65bn so far this 
year buying back 104.46m shares, or about 1.9% of the company, of which 62.3m 
were purchased in October at up to $16.20. The buybacks have the effect of 
increasing HI's percentage stake in HKCG, which we estimate is currently 37.6%. 
Their enthusiasm is presumably driven by the prospects for their ventures on the 
mainland as well as the latent value of their various gas-related property sites 
in HK. After decades of being a misnomer, they have begun to put the &quot;China&quot; 
back in HKCG.</p>
<p>HKCG also has a number of existing property developments, including 15% of
<a target="_blank" href="http://www.ifc.com.hk/">IFC</a> (which is 35% owned by 
HLD), a planned 1.1m sq ft redevelopment of the
<a target="_blank" href="../images/MaTauKokGas.jpg">Ma Tau Kok Gas Works</a>, 
and 50% of the <a target="_blank" href="../images/GrandPromenade.jpg">Grand 
Promenade</a> on the old ferry concourse at Sai Wan Ho, on the Eastern end of HK 
island, which they won by
<a target="_blank" href="http://www.info.gov.hk/gia/general/200012/14/1214237.htm">
tender</a> in Dec-00. The other 50% of the project is of course owned by HLD.</p>
<p>HKF is basically just a property investor and developer of its old 
shipping-related sites, including the
<a target="_blank" href="../images/MetroHarbourView.jpg">Metro Harbour View</a> 
project which is 50% owned by HKF and 50% by HLD, on the former shipyard of 
subsidiary The Hong Kong Shipyard Ltd, which was relocated to Tsing Yi when the 
West Kowloon reclamation took away its waterfront. HKF also owns the quaint
<a href="http://www.resort.com.hk">Silvermine Beach Hotel</a> in Mui Wo, Lantau 
which is managed by Miramar. Despite its name, HKF doesn't operate many ferries 
any more - just <a target="_blank" href="http://www.cruise.com.hk/">harbour 
cruises</a> and the <a href="http://www.hkf.com/hyf/">D</a><a target="_blank" href="http://www.hkf.com/hyf/">angerous 
Goods Vehicular Ferry Service</a> which gets petrol tankers across the harbour 
without blowing up the road tunnels, and occasionally goes to Mui Wo. HI's stake 
in HKF is worth only HK$1.04bn at market price, excluding control premium.</p>
<p>Similarly, the stake in Miramar, with its eclectic mix of Hong Kong and 
Californian property, is worth about $2.65bn without a control premium. This is 
not the focal point of the deal.</p>
<h3>The Offer</h3>
<p>Now, HLD is offering 1 share in HLD for every 2.6 shares in HI. Based on 
tonight's closing price of $34.15 per HLD share, less the pending HLD dividend 
of $0.60, that values the offer at <b>$12.90</b> per HI share, a premium of <b>
69.7%</b> over the 2002 offer. HI shareholders also get to keep the $0.15 final 
dividend per HI share, which they've earned. HI has 2,817m shares in issue so 
the offer values the company at $36.3bn.</p>
<p>But how much better is this offer, in relative terms? Since 31-Dec-02, the 
last trading day before the vote on the previous offer, HKCG has gained <b>65.8%</b> 
from $10.10 to $16.75, HKF has gained <b>63.2%</b> from $5.70 to $9.30, and 
Miramar has gained <b>79.3%</b> from $5.80 to $10.40, on the back of the 
mainland tourist boom and the recovery of the retail and property sector. In the 
same period, the Hang Seng Index has gained <b>57.0%</b> from 9,321 to 14,633. 
We exclude dividends in each case to keep it simple.</p>
<p>So in the light of this, the market prices of the portfolio which comprises 
the bulk of HI's assets have gone up by about 67% but the offer is increased by 
about 70%. This amounts to only a 2% relative increase (1.70/1.67), and many 
investors are likely to find that disappointing. And this offer is in paper, not 
cash, so it carries additional closure risk. The offer value of $36.3bn is only 
$1.6bn more than the market value of the stake in HKCG, without any control 
premium added.</p>
<p>In terms of recent share performance of HI, the offer value, plus the final 
dividend, is only 11% more than the $11.75 at which the shares closed as 
recently as 3-Aug-05. Again, disappointing.</p>
<h3>What's it worth?</h3>
<p>As a rough guide, take the balance sheet, strip out the associates, include 
the market value of the stakes in HKCG, HKF and Miramar without any premium for 
control of those companies, add back the deferred tax on investment properties, 
and you get about $47bn, or about <b>$16.7</b> per HI share. That puts the 
offer, including the dividend, at a 22% discount to fair value.</p>
<p>As we mentioned, we don't include control premiums on those stakes in our 
valuation, but one of the benefits of this deal for HLD and its controlling 
shareholder is that it gets to increase its economic interest in all 3 companies 
without triggering a bid under the Takeover Code. For example, HLD's economic 
interest in HKCG goes up from 27.6% to 37.6%. Under the Takeover Code, 
controlling stakes between 30% and 50% can only increase at 2% per annum. And if 
HI were to dispose of any of those stakes in a block, it would almost certainly 
get a premium which would benefit all HI shareholders.</p>
<h3>Recommendation</h3>
<p>One of the difficulties with this recommendation is that as an investor, <i>
Webb-site.com </i>is a bear on the local property market. We believe that we are 
in a property bubble, and that the recent declines in residential property 
prices of around 5% from the highs of the summer are just a taste of things to 
come. So if you agree with us, then you probably don't own HLD or HI in the 
first place. However, if you do hold HI, then you apparently believe that the 
property market is not overheated, or that the future of the gas business 
offsets the downside risk on the property element. Alternatively, you may have 
hedged out the risk and are just looking to make a quick buck on the takeover.</p>
<p>It is notable that HLD has not ruled out an increase in its offer. If it had 
done so, then it would have been prohibited from making an increase under the 
Takeover Code. This indicates that they have something in reserve. It is also a 
fact that the last time they tried this, they low-balled the offer and the 
minority who rejected it were vindicated by the subsequent performance of the 
assets. Finally, investors should note that the new shares in HLD would increase 
the number of shares in its free float by over 38%, so this may lead to some 
selling pressure on HLD, lowering the value of the offer further. So they need 
to make an increase to be confident of winning this deal. </p>
<p>So shareholders of HI who believe in the valuation of the property market 
should reject this deal and hold out for a better exchange ratio. However, if 
you take our view on the property market, then you shouldn't be holding the 
shares in the first place.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=413">HENDERSON INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=412">HENDERSON LAND DEVELOPMENT COMPANY LIMITED</a></li>
				
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
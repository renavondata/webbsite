
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

<script type="text/javascript">document.title="Ex-chaos trading: Zhongtian proves point";</script>

	<div class="summary">Zhongtian (2379) yesterday demonstrated why we should not trade ex-entitlements before they are approved by shareholders: a 10:1 rights issue at a 97% discount was vetoed. HKEx launched a consultation in December, and  <b>we need your support</b>. We also repeat two outstanding problems which HKEx has failed to address, on expropriation of passive shareholders' value, and on the discounts on open offers.</div>

<h2 class="center">Ex-chaos trading: Zhongtian proves point<br>
<span class="headlinedate">27 January 2011</span></h2>
<p><a href="../dbpub/orgdata.asp?p=22383">Zhongtian International Ltd</a> (<strong>Zhongtian</strong>, 
2379) yesterday provided us with a classic and timely demonstration of why 
shares should not be allowed to trade ex-entitlements until shareholders have 
approved any necessary resolutions in general meeting. Timely, because after 
Webb-site has raised this point several times with regulators over the years, 
they are finally doing something about it, in the form of a
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2010123.pdf" target="_blank">
consultation paper</a> published by HKEx on 17-Dec-2010 (announcement
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2010/1012172news.htm" target="_blank">
here</a>). But they need to do more, in two other areas we once again raise - 
the treatment of passive shareholders, and the discount on open offers.</p>
<h3>Zhongtian case study</h3>
<p>On the evening of Sunday 19-Dec-2010 (but dated 17-Dec-2010), Zhongtian
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101219/LTN20101219021.pdf" target="_blank">
announced</a> a proposed rights issue of 10 new shares for every share held, at 
$0.03 per share, a 96.7% discount to the previous market price of $0.90. The 
deal was underwritten by chairman Chen Jun (<strong>Mr Chen</strong>) who owns 
62.79% of Zhongtian.</p>
<p>The prior market capitalisation was just HK$162.8m. The stated reason for the 
rights issue, which would raise HK$54.26m gross, was 40% for &quot;general working 
capital&quot; and 60% &quot;to finance the Group in establishing a new line of business in 
trading of precious metals and coal&quot;, with no acquisitions planned. Being larger 
than 1 for 2, the issue was subject to independent shareholders' approval. There 
was a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110109/LTN20110109011.pdf" target="_blank">
circular</a> dated 10-Jan-2011 convening a meeting for yesterday, 26-Jan-2011.</p>
<p>There was no particular reason for such a massive discount. The
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100901/LTN20100901831.pdf" target="_blank">
interim report</a> shows net tangible assets at 30-Jun-2010 of CNY95.58m (then 
HK$109.6m), or about&nbsp; HK$0.606 per share. So this was not a bubble stock, 
and was trading at a modest premium to NTAV which reflected its potential as a 
back-door listing shell at only HK$53.2m over book value - much less than shells 
are worth these days.</p>
<p>That NTAV included CNY50.4m of vacant investment office properties in 
Qingdao, CNY27.5m of cash, and CNY34.1m of equity investment, being a 2.14% 
stake in unlisted Qingdao Huafeng Rural Cooperative Bank Ltd. There were no 
borrowings. We note that the front cover has a photograph of a grade-A office 
tower and hotel in Pacific Place, Admiralty, Hong Kong, with which Zhongtian has 
no connection.</p>
<p>Turnover in the stock picked up substantially on the news, with the shares 
rising to a daily high of $2.16 on 3-Jan-2011, as shown by our
<a href="../dbpub/hpu.asp?i=4349">market data</a>. We should note that it 
was very volatile intra-day during that period. On 18-Jan-2011, the day before 
it went ex-rights, the stock closed at $1.71. So the theoretical ex-rights price 
(<strong>TERP</strong>) was ($1.71+10*$0.03)/11=$0.183. In theory, the bulk of 
the value of each share in the company, $1.527 per share, had been transferred 
to the 10 nil-paid rights which had yet to be distributed. The pro forma net 
asset value was $0.082 per share.</p>
<p>When the stock went ex-rights on 19-Jan-2011, trading volume exploded, with 
the price ranging from $0.315 to $0.96, closing at $0.88 with a volume-weighted 
average of $0.708. Turnover that day was 69.96m shares, or 104% of the free 
float of 67.29m shares. The closing price of $0.88 was a gain of 380% over the 
TERP. Clearly, some investors were betting that the rights issue would not 
proceed, otherwise, they were paying almost 5 times the previous day's adjusted 
price, and 10.7x the pro forma net asset value. Volume the next day was 51.93m 
shares, with the price averaging $1.331 and closing at $1.50.</p>
<p>At the EGM yesterday, held in Qingdao at 10:00, independent shareholders
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110126/LTN20110126477.pdf" target="_blank">
vetoed</a> the rights issue by 71.2% to 28.8%, with a turnout of 35.7% of the 
free float shares eligible to vote. Consequently, the rights issue is cancelled. 
Mr Chen was prohibited from voting, because rights issues larger than 1 for 2 
require independent shareholders' approval. Zhongtian could have done a 1 for 2 
right issue at $0.60 to raise exactly the same proceeds, without the requirement 
for a shareholder meeting, but it did not.</p>
<p>With the rights issue cancelled, the stock rose this morning, closing for 
lunch at $1.45, up 26.1%.</p>
<p>During the 5-and-a-bit trading days ex-rights, the average price was $1.017, 
trading in a huge range from $0.315 on 19-Jan to $1.52 on 20-Jan. The investor 
who sold at $0.315 probably thought he was doing well to get a premium to the 
TERP, but in fact he suffered an 81.6% discount to the previous day's closing 
price. Those who bought during the ex-rights trading last week, at the average 
of $1.017, are up 42.6% this morning.</p>
<p>Previous examples of rights issues which were vetoed after ex-rights trading 
include a
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20090618/GLN20090618035.pdf" target="_blank">
rights issue</a> by <a href="../dbpub/orgdata.asp?p=11385">Tai Shing 
International (Holdings) Ltd</a> (8103), 2 for 1 at $0.10, an 84% discount to 
the cum-rights price of $0.62. The stock went ex-rights on 30-Jun-2009, and the 
deal was
<a href="http://www.hkexnews.hk/listedco/listconews/gem/20090707/gln20090707045.pdf" target="_blank">
vetoed</a> by independent shareholders on 7-Jul-2009.</p>
<h3>Ex-entitlement trading</h3>
<p>The Zhongtian case provides a perfect example of the chaotic trading that 
results when a share starts trading ex-entitlements before the meeting to 
approve the entitlement, whether it is a capital distribution, a regular 
dividend, a demerger, a rights issue or anything else that affects the value of 
the shares.</p>
<p>We've made this point several times to regulators. There was a 
consultation in 2009 on the timing of rights issues and open offers, and we 
published an <a href="openoffers.asp">article</a>, conducted an 
opinion poll, and made a <a href="submn090930.asp">submission</a> 
with the results. Although that consultation did not cover ex-entitlement 
trading, we included the point and in the poll we asked readers whether trading 
ex-entitlement before meetings to approve entitlements should be banned. The
<a href="../vote/result.asp?p=34">opinion</a> of 206 respondents was 174 in 
favour, 20 against, and 12 undecided. That's <strong>overwhelming support, from 
90% of those who expressed a view</strong>, with 10% opposed.</p>
<p>The
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2010123.pdf" target="_blank">
consultation paper</a> published on 17-Dec-2010 proposes that there should be at 
least one day of trading after a shareholder meeting before shares start trading 
ex-entitlement. We support that, because it provides the market an opportunity 
to establish the market value of the shares after the uncertainty of the 
shareholder meeting has been removed. This is important in determining the fair 
adjustment to the terms of convertible bonds and share options resulting from 
the discount in the rights issue or open offer.</p>
<h3>Other problems with HK rights issues and open offers</h3>
<p>Please refer to the sections of our <a href="openoffers.asp">
article</a> of 7-Sep-2009, titled &quot;You snooze, you lose&quot; (on rights issues and 
open offers) and &quot;Dilution damage calls for discount limit&quot; (on open offers). We 
won't repeat the details here, but HKEx has still not addressed these problems.</p>
<p>If the Zhongtian rights issue had gone ahead, then any shareholder who 
failed to take up their rights or sell them would have seen a massive dilution 
in their share value, from $1.71 (the day before ex-rights) to the TERP of 
$0.183, a loss of 89.3%. The beneficiaries would have been those active 
shareholders who applied for &quot;Excess Rights&quot; in the issue. <strong>Hong Kong 
must end this unfair way of treating passive shareholders, and instead require 
that unsubscribed shares be sold in the market after the issue closes, and any 
premium over the issue price should be paid to the holders of those entitlements 
rather than confiscated</strong>. That is the way to run a fair market, not 
penalising people who, for whatever reason, do not subscribe their entitlements. 
The shareholder may be ill, on holiday, dead, in jail, or simply not hear about 
the issue. The regulators have a duty to protect passive shareholders from 
expropriation of their shareholder value.</p>
<p>The &quot;Excess Rights&quot; system is also something which is wide open to abuse by 
controlling shareholders and directors. They are in a position to know, from the 
registrar, how many applications for excess rights have been received, and to 
scale up their own applications just before the closing deadline in order to get 
an extra allocation of unsubscribed shares at a big discount to market. Also, 
some investors may own as little as 1 share and make applications for millions 
of excess rights, which are allocated proportionate to the application size 
rather than to the number of shares held. It is far fairer to sell the 
unsubscribed shares in the market and pass the premium to holders of those 
entitlements. </p>
<p><strong>For the same reason, open offers should be limited to a discount of 
10%, as they are in the UK under </strong>
<a href="http://fsahandbook.info/FSA/html/handbook/LR/9/5" target="_blank">
<strong>Listing Rule 9.5.10</strong></a><strong>, because shareholders have no 
opportunity to sell their entitlements.</strong></p>
<p>Again, when we <a href="../vote/result.asp?p=34">polled</a> on those two 
points in 2009, there was over whelming support. 83% of those who expressed a 
view said that the premium on sale of unsubscribed entitlements should be paid 
to their holders. 90% of those who expressed a view said that there should be a 
discount limit on open offers. 87% said the discount limit should be 10%. It is 
disgraceful that HKEx has yet to address these points.</p>
<p>This article, with the poll results of 2009, constitutes our submission to 
HKEx on these points and on the very narrow consultation on ex-entitlement 
trading. <strong>Readers: please support our efforts by writing to </strong>
<a href="mailto:response@hkex.com.hk?cc=contact@webb-site.com&amp;subject=Consultation%20Paper%20on%20Ex-entitlement%20Trading%20and%20Shareholder%20Approval">
<strong>response@hkex.com.hk</strong></a>.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22383">China Clean Energy Technology Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11385">hmvod Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=38563">Chen, Jun (1972)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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
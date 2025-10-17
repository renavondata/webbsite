
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

<script type="text/javascript">document.title="HKEx rights issue & open offer proposals";</script>

	<div class="summary">We need your help! HKEx proposes changes to rules on open offers and rights issues. Some of the changes are against investor interests. HKEx also fails to propose a limit on open offer discounts or to bring the treatment of unsubscribed entitlements up to international standards. Give us your opinions!</div>

<h2 class="center">HKEx rights issue & open offer proposals<br>
<span class="headlinedate">7 September 2009</span></h2>
<div class="pollbox">
	
	<ul class="navlist">
		<li id="livebutton">Poll</li>
		<li><a target="_blank" href='../vote/result.asp?p=34'>Results</a></li>
		<li><a href="../vote/">More polls</a></li>
		
			<li><a href="../webbmail/login.asp">Log in</a></li>
			<li><a href="../webbmail/join.asp">Sign up</a></li>
		
	</ul>
	<div class="clear"></div>
	<h3><b>Poll: Rights issues & open offers</b></h3>
	<p><b>Please <a href='../webbmail/login.asp'>log in</a> to see how you voted, if you did. </b></p>
	
			<p>	
			Poll closed: 18:00:00 25-Sep-2009
			</p>
		
		<script type="text/javascript">
		function NoEnter(e)
		{
			var key;
			if(window.event)
				key = window.event.keyCode;     //IE
			else
				key = e.which;     //firefox
			if(key == 13)
				return false;
			else
			return true;
		}
		</script>
		<form method="post" action="/articles/openoffers.asp">
			<hr>
			<p class=''>1. Do you agree that there should be a discount limit on open offers, to reduce dilution?</p><p class=''><select name='127' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>2. If so, then what should the discount limit be?</p><p class=''><select name='128' class=''><option value=''>Select</option><option value='91'>10% (UK limit)</option><option value='92'>20%</option><option value='93'>More than 20%</option></select></p><p class=''>3. Should we keep at least 7 business days to sell shares before they go "ex" an open offer?</p><p class=''><select name='169' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>4. After a rights issue or open offer closes, should any net premium from sale of unsubscribed entitlements be paid to their holders?</p><p class=''><select name='170' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>5. Should HKEx allow trading "ex" an entitlement even before shareholders have approved it?</p><p class=''><select name='171' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p>
			<p>
			
			</p>
		</form>
	
</div>
<p>On 31-Jul-09, HKEx
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2009/090731news.htm">
announced</a> a 
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/cp200907_e.pdf">consultation</a> on proposed amendments to the Listing Rules on the 
timetable of rights issues and open offers. The main proposals are:</p>
<ul>
	<li>Shorten the notice period for book closure for rights issues and open 
	offers from 14 calendar days to five business days with at least two 
	uninterrupted trading days for trading in securities whose holders are 
	entitled to the subscription rights.</li>
	<li>Amend the minimum subscription period for rights issues and open offers 
	from 14 calendar days to 10 business days.</li>
</ul>
<p>Taking these in reverse, <em>Webb-site.com</em> supports the second proposal, 
which resolves problems when bank holidays fall in the middle of the offer 
period, shortening the effective decision time.</p>
<p>As for the first proposal, we support it in relation to rights issues, but 
not for open offers. In making this proposal, HKEx failed to take account of the fundamental 
difference between a rights issue and an open offer. Both are offers of new 
shares proportionate to existing shareholdings, usually at a discount to 
market price at the time of the announcement, but in a rights issue, the 
shareholder can choose either to subscribe for his entitlement, or to sell his 
rights in the market. This allows him to recover the value of the discount at 
which shares are offered, if he chooses not to invest more cash in the 
company. In an open offer, the entitlements cannot be separated from the existing 
shares. The holder must either put up the cash or suffer dilution from 
the discount at which the shares are issued to other shareholders or to the 
underwriters. The only way out of this is to sell his shares before the open 
offer starts, and even then, the anticipated weight of hostages rushing for the 
exit may crush him on the way out.</p>
<p>Now, the HKEx proposal makes this problem even worse. At present, you 
normally have at least 7 business days in which to sell your shares before they 
start trading without the entitlement to the new shares, or &quot;ex-entitlement&quot;. 
Once the shares trade ex-entitlement, the share price will reflect the full impact of 
the discount in the open offer or rights issue. For a rights issue, this is OK, 
because <em>ceteris paribus</em> (all other things being equal) the value lost 
in the share price is matched by the value of your rights, which you can sell in 
the market. But for an open offer, that's the end of the game. <strong>Under 
HKEx's proposal, you might have only two trading days in which to rush for the 
exit and sell your shares before they go ex-entitlement for the open offer.</strong></p>
<h3>Dilution damage calls for discount limit</h3>
<p>Because of the dilution damage caused by deep-discount open offers,
<a target="_blank" href="http://fsahandbook.info/FSA/html/handbook/LR/9/5">UK 
Listing Rule 9.5.10</a> limits the discount to 10% to market price. <strong>Hong 
Kong continues to disrespect shareholder rights and the consultation paper makes no 
proposal to limit the discount on open offers</strong>, even though we have been
<a href="openripoffers.asp">making this point</a> since 1999. Until this 
changes, HK 
shareholders will continue to be held hostage to the discount gun of open 
offers. A few years ago, HK even introduced a 20% discount limit for placings 
under the general mandate, a feeble step in comparison to the 5% limit in the 
UK, but still there is no limit whatsoever for open offers.</p>
<p>You might think that you would still have some forewarning of an open offer, 
because the company would need to call a shareholders' meeting first. Think 
again. A HK-listed company can launch a rights issue or open offer involving an 
increase of up to 50% in the number of issued shares (or 1 new share for every 2 
shares held) without shareholder approval, provided that it has sufficient authorised 
but unissued share capital, as most do.</p>
<h3>You snooze, you lose</h3>
<p>The paper also fails to address another problem with HK rights issues and 
open offers, namely 
that companies do not have to account to holders for the value of their 
entitlements 
which are not subscribed. So in a HK rights issue, if you snooze, you lose. 
Someone else will take your rights, and you won't be paid for them. In HK, the 
unsubscribed rights either go straight to the underwriter (even if a premium 
could have been obtained in the market) or are allocated by the board to 
so-called &quot;excess applications&quot;.</p>
<p>By 
comparison, HSBC, which is bound by the UK Listing Rules,
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090406/LTN200904061124.pdf">
paid holders</a> (including HK holders) the value of their unsubscribed rights. The 172.7m shares were 
placed in the market at 448p/HK$51.83, and the difference from the 254p issue price 
was paid to the rights holders, worth about GBP335m (HK$3.88bn) less expenses. 
This is an important protection if you are unaware of the rights issue or open 
offer or missed a deadline.</p>
<h3>Trading ex-entitlements which may not come</h3>
<p>There's one more thing. In HK, the stock exchange still allows shares to be 
traded ex-entitlements even before a shareholder meeting to approve the 
distribution, whether it is a dividend, rights issue, open offer or demerger. 
The implication is either that the Exchange thinks shareholder meetings in a 
controlled-company environment are a trivial formality and nearly-certain to 
approve things, or the Exchange is reckless in allowing people to sell their 
shares without knowing whether they will get the entitlement they think is 
coming to them. The uncertainty of trading ex-entitlements when an entitlement 
might be voted down creates the risk of disorderly markets. For example, if a 
company proposes a special dividend conditional on a connected transaction being 
approved, then independent shareholders might buy the shares ex-dividend and 
then vote down the deal, benefitting from the company's retention of its cash. </p>
<p>For a buyer ex-entitlements, this is like buying an empty home and then 
discovering that that the previous owner has left it fully-furnished, against 
his wishes.</p>
<p class="center"><strong><a href="../vote/poll.asp?p=34">Take the opinion poll</a></strong></p>
<p class="center"><strong>
<a href="mailto:response@hkex.com.hk?subject=Rights%20issues%20and%20open%20offers">
Respond directly to HKEx</a></strong></p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=382">HSBC HOLDINGS PLC</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
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
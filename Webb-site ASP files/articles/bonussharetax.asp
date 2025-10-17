
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

<script type="text/javascript">document.title="BoCom's bonus-share tax hit";</script>

	<div class="summary">BoCom (3328) found a nasty wrinkle in China's taxes that resulted in an effective 60% tax rate on its final dividend, because of a tax on bonus shares. Webb-site calls on the Chinese Government to clarify its tax treatment of bonus issues so that there will be no withholding tax, because they are not a distribution of value. Further, it would be better and fairer to abolish the distortive dividend withholding tax and raise corporate tax rates instead.</div>

<h2 class="center">BoCom's bonus-share tax hit<br>
<span class="headlinedate">29 September 2011</span></h2>
<p><a href="../dbpub/orgdata.asp?p=5606">Bank of Communications Co., Ltd.</a> (<strong>BoCom</strong>, 
3328) has recently demonstrated a nasty wrinkle in China's tax code which other 
listed companies based in the mainland (whether incorporated in the PRC or 
elsewhere) should beware of. With its final results for 2010, BoCom announced a 
dividend of CNY0.02 per share and a 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110512/LTN20110512197.pdf" target="_blank">bonus issue</a> of 1 new share for every 10 
shares held but, as we will explain, shareholders received only 40% of the 
declared dividend and lost the rest to taxation.</p>
<p>As many investors will know, China now operates a dividend withholding tax, 
normally at 10% on the amount of distributed profits. Since 1-Jan-2008, this 
applies to any &quot;Tax Resident Enterprise&quot; (<strong>TRE</strong>) regardless of whether it is 
incorporated in the PRC or elsewhere. This withholding tax is reason enough not 
to pay dividends but instead to make share repurchases in the market, where 
there is no withholding tax (unless China charges the company for distributing 
its profits in this way). Companies which continue to pay dividends rather than 
return cash by share repurchases are subjecting their investors to avoidable tax 
and thereby reducing net returns. If profits are instead distributed by share 
repurchases, then shareholders who want cash flow from their investment could 
instead sell a few shares in the market each year rather than get taxed on 
dividends.</p>
<p>But that's not the main topic of this article. The problem is with BoCom's 
&quot;bonus issue&quot;, which was also taxed. Bonus issues normally have absolutely no 
impact on the economic value of an investment, other than the logistical costs 
of making them, such as printing a circular and share certificates. They are 
equivalent to stock splits - for example a bonus issue of 1 new share for each 
share held is equivalent to a 2-for-1 stock split, as the number of outstanding 
shares doubles in both situations and the share price halves, leaving the 
investment value unchanged and making the whole thing rather pointless, as we 
said on our article <a href="bonusplit.asp">Truly pointless bonuses 
and splits</a> (27-Dec-2010).</p>
<p>In the BoCom case, there are now 11 shares for every 10 shares which existed 
prior to the bonus issue. On the balance sheet, there is an internal transfer 
from the distributable profit to the &quot;share capital&quot; line, but the amount of 
that depends on the &quot;par value&quot; of the shares which has nothing to do with the 
market value of the shares. Put simply, &quot;bonus issues&quot;, despite their name, are 
not a bonus at all. More traditionally, this type of bonus issue is known as a 
&quot;capitalisation issue&quot;, because of the internal transfer from retained profits 
to share capital. There is no <u>external</u> transfer of 
value. Some companies instead make an internal transfer from &quot;capital reserve&quot; 
(also known as share premium) to share capital, without touching the retained 
profit account. It appears that China has not been taxing bonus issues made from 
capital reserves, so BoCom could have done that. One example is the 10 for 10
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110415/LTN20110415684.pdf" target="_blank">
bonus issue</a> by China National Building Material Co Ltd (3323).</p>
<p>But BoCom has interpreted the tax code to mean that each shareholder actually 
&quot;received&quot; a distribution worth the par value or CNY1 for each bonus share. 
Since the bonus ratio was 1:10, that equates to CNY0.1 for each existing share. 
So BoCom deducted a 10% tax of CNY0.01 from the dividend on each existing share, 
in addition to the CNY0.002 tax on the cash dividend. Altogether then, the tax 
was CNY0.012 on a cash dividend of CNY0.020, which amounts to a <strong>60% tax 
on the dividend</strong>, leaving shareholders with just CNY0.008 per share. 
Indeed, if BoCom had not paid a cash dividend, it would not have had any way to 
&quot;charge&quot; shareholders for the tax on the bonus issue.</p>
<p>BoCom had 56.26bn shares outstanding before the bonus issue, so the result is 
that <strong>additional tax of up to CNY562.6m has been paid</strong> to the 
Government. The Government is also the largest shareholder, holding 26.52% 
through the Ministry of Finance, so it benefits from this arrangement - the more 
bonus shares it causes the bank to declare and issue (through its representation 
on the board), the more tax it collects - an obvious conflict of interest. BoCom 
made a net profit of CNY39,042m in 2010, so that is equivalent to a 1.44% 
reduction in earnings. The exact amount of excess tax cannot be determined, 
because TREs who are shareholders 
are exempt from the withholding tax on received dividends and instead have to 
pay it when they distribute dividends to their non-TRE shareholders, and so on 
up the chain.</p>
<p><strong>Webb-site calls on the Chinese Government to clarify its tax 
treatment of bonus issues, to state that there will be no withholding tax on 
bonus issues, because they are not a distribution of value</strong>, whether 
they are achieved by an internal transfer from capital reserve or retained 
profits. In the meantime, we urge all Tax-Resident Enterprises to stop declaring 
bonus issues of shares out of their profits, because these bonus issues destroy 
shareholder value by paying unnecessary tax to the Government.</p>
<p>China's policy on taxing dividends in general is misguided - not a single 
Yuan of GDP is created by dividend distributions, and companies which either 
retain their profits or use them to make share repurchases or acquisitions will 
never have to pay the tax. Using the cash to make repurchases is sub-optimal for 
capital allocation because it results in companies participating in the market 
for their own shares by their repurchases, when it would be better to just 
distribute dividends and let investors determine the market price and reinvest 
their dividends as they wish. Taking a typical company which pays out 40% of its 
post-tax profits in dividends, the 25% corporate tax rate and the 10% dividend 
withholding tax are equivalent to a 28% tax rate on pre-tax profits 
(0.75*40%*10%=3%). <strong>It would be better and fairer for China to set its 
corporate tax rate at 28%, or thereabouts, and abolish dividend withholding tax</strong>.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=5606">Bank of Communications Co., Ltd.</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=192">Tax & budget</a></li>
				
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
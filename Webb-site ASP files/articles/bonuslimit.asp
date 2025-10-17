
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

<script type="text/javascript">document.title="SEHK tackles bonus issues, misses the obvious";</script>

	<div class="summary">The Stock Exchange, in a guidance letter tonight, says it will reject listing of bonus issues of 200% or more, because they tie up too much of the float between the ex-date and distribution date. They propose stock splits as an alternative, but they omit the faster and better way to reduce board lot value, which HKEx itself used in 2008.</div>

<h2 class="center">SEHK tackles bonus issues, misses the obvious<br>
<span class="headlinedate">27 April 2016</span></h2>

<p>The Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>), which has been 
running the statutory monopoly stock market in HK for nearly 30 years, has at 
last understood that when a company declares a bonus issue, then 
between the dates on which its shares begin trading "ex-entitlement" and when 
the bonus shares are actually issued, there is a reduction on the effective free 
float of the stock. For example, when you do a 9 for 1 bonus issue, then on the 
ex-date, the stock price should drop 90%, and if the free float was previously 
25% of the company then it is reduced to 2.5%. A given dollar amount of buying or 
selling then has a magnified effect on the share price.</p>
<p>Tonight SEHK has published a
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2016/160427news.htm" target="_blank">
guidance letter</a> saying that it "may not grant listing approval for 
large-scale bonus issues" and "Generally, the Exchange is likely to raise 
concern...when a company proposes a bonus issue of 200 per cent. or more of its 
existing shares".</p>
<p>In other words, a bonus ratio of 2 new shares for each existing share, or 
higher, is likely to be rejected by SEHK. This is a step in the right direction, 
although it is clumsily worded. If you want a limit of 200%, then you say "not 
more than 200%". What they will now get is companies proposing bonus issues 
which are close to 200% but cause odd lots of shares to be allotted, such as 9 
for 5 (180%), 19 for 10 (190%) or 39 for 20 (195%) and so on. A board lot of 
shares is the unit in which shares are traded on SEHK. Fractional board lots are 
harder to sell and attract a discount. Hopefully the Exchange will discourage 
the creation of odd lots of shares, leaving the only option as 1 for 1, because 
any other bonus issue would create an odd lot for someone.</p>
<p>Webb-site has a
<a href="/dbpub/splits.asp?m=b&amp;t=bonus&amp;s=adjuup" target="_blank">
database of bonus issues</a> over the last 30 years. There have been 70 which 
exceeded 2 for 1 (200%), and another 45 which were 2 for 1. </p>
<p>The guidance letter says nothing about providing proper reasons for the bonus 
issue, rather than the <a href="../dbpub/subject.asp?c=102">usual baloney</a> 
about "providing a return to the shareholders" (it doesn't). Cutting a pizza 
into more slices doesn't give you a bigger Pizza, and creates crumbs which are 
wasted.</p>
<p>There is really no good reason for a bonus issue, and in many cases of 
H-share issuers, they are downright harmful beyond the transaction costs, 
because they also have a tax impact. The PRC, in its financial backwardness, 
regards any bonus shares whose par value is transferred from retained profits as 
a dividend and slaps a withholding tax on it. We called out another example 
recently: <a href="/dbpub/artlinks.asp?s=11466">Dalian Port (PDA) Co Ltd</a> 
(2880), which is proposing a 3 for 10 issue of so-called "Dividend Bonus Shares" 
which will likely hit many shareholders with a 10% withholding tax on the par 
value, increasing the effective tax on the parallel cash dividend from 10% to 
50%.</p>
<p>The guidance letter points to the alternative of a stock split, which is not 
as disruptive, as trading in all shares in the clearing system continues 
seamlessly on the ex-date. So if issuers are concerned that their board lot has 
become to large in dollar terms to be accessible to smaller investors, then they 
can do that. However, that still involves the expense of a shareholder circular 
and meeting.</p>
<h3>If your board lot is too heavy, cut it up</h3>
<p>There is a third option, which SEHK missed in its Guidance Letter: 
simply reduce the lot size. If you do so by a factor of the original board lot, 
then nobody who has whole board lots will get odd lots. That doesn't need a 
circular or a meeting. You don't even need the archaic "parallel trading" 
system, which was supposed to have been abolished anyway in 2008 but was
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080723news.htm" target="_blank">
delayed</a> indefinitely.</p>
<p><a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing 
Ltd</a> (<strong>HKEx</strong>, 0388), the listed parent of SEHK, did this itself on 5-Mar-2008, when 
it
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2008/0305/LTN20080305232.pdf" target="_blank">
announced</a> a cut in its board lot from 500 to 100 shares. Recommending that 
solution was one of the last acts of your editor as an HKEx INED before he quit. One announcement, 
no circular, no shareholder meeting, no fuss. HKEx's share price then was HK$141.0, so that cut 
the board lot from HK$70,500 to a sensible $14,100.</p>
<p>Note that a sensible board lot is determined by typical minimum brokerage 
charges. If a broker charges a minimum of say $50, then that amounts to a 0.5% 
commission on a $10,000 trade, so you don't really want to get a 
partially-filled order below that transaction size. SEHK has an outdated 
guideline of $2000 per board lot, with
<a href="../dbpub/mcap.asp?e=a&amp;t=s&amp;s=ltvup" target="_blank">over 600 stocks</a> below that 
level. A $50 minimum is then 2.5%. The guidance should be increased to $10,000. 
HKEx has a selfish reason not to do that - as we explained at the end of our
<a href="votingwindow.asp">article on 18-Apr-2016</a>, HKEx makes 
money per board lot by charging "scrip fees" in the clearing system.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=102">Bonus issues and stock splits</a></li>
				
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
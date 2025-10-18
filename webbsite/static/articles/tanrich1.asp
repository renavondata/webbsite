
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

<script type="text/javascript">document.title="Tanrich and the Pay Loophole";</script>

	<div class="summary">We tell you how the Chairman and controlling shareholder of a listed futures firm received a 381% pay rise just 8 months after the IPO. It's a classic exploitation of the pay loophole in the Listing Rules, and there is nothing you can do about it until the rules are amended to allow minority shareholders' approval of excessive pay increases.</div>

<h2 class="center">Tanrich and the Pay Loophole<br>
<span class="headlinedate">17 March 2004</span></h2>
<p>Tanrich Financial Holdings Ltd (<b>Tanrich</b>, 0812) was listed 
on the main board on 30-Jan-02 in an IPO sponsored by Platinum Securities Co Ltd 
of 50m shares (representing 25% of the company) at HK$1 each, raising just $37m net 
of expenses.</p>
<p>Tanrich's largest business at IPO was providing agency services 
for investors in Hong Kong in trading futures contracts on the
<a target="_blank" href="http://www.tge.or.jp/">Tokyo Grain Exchange</a> and the
<a target="_blank" href="http://www.tocom.or.jp/">Tokyo Commodity Exchange</a>, 
together representing 79.1% of Tanrich's turnover in the year to 30-Jun-01. The 
trades are booked through brokers in Japan who are members of the two exchanges.</p>
<p>Tanrich also had trading rights on the Hong Kong Futures and 
Stock Exchanges, and its prospectus contained 3 pages of <i>&quot;technical 
non-compliances and/or non conclusive findings&quot;</i> as a result of <i>&quot;periodic 
reviews&quot;</i> by the SFC and the two exchanges, as well as 4.5 pages of connected 
transactions.</p>
<p>In the track record period of three financial years ending 
30-Jun-01, the group paid dividends totalling $105m compared with total profits 
of $95.43m, plus a special dividend of $10m on 21-Aug-01.</p>
<p>The results for the year ended 30-Jun-01 included a $34.20m gain 
on disposal of 2.286m shares of HKEx (0388), which the group had presumably 
received during the demutualisation of the Stock and Futures Exchanges which 
formed HKEx. Without that, net profit would have been only $21.655m, up only 
5.7% on the previous year, which in turn was up 7.3% on financial 1999. As of 
30-Jun-03, the firm still owned 1.306m shares of HKEx and had acquired 1.089m 
shares in BOC Hong Kong (Holdings) Ltd (2388).</p>
<p>The Chairman and controlling shareholder is Mr Yip Man Fan, also 
known as Yip Tak Wah, Edward (<b>Mr Yip</b>). After the IPO, his family trust 
owned 60%, while his wife, Ms Tang Yuk Lan, held 3.75% and Mr Toru Tsunoyama (<b>Mr 
Tsunoyama</b>), an executive director, owned 11.25%, for a total of 75%.</p>
<h3>Remuneration</h3>
<p>The prospectus stated that Mr Yip and the Deputy Chairman and 
CEO, Mr Kwok Kam Hoi, had each entered into a two-year service agreement 
commencing on the listing date under which they would get a respective monthly 
&quot;compensation&quot; of HK$120k and $100k, subject to review by the board of Directors 
from time to time. They would each be entitled to an additional month's payment 
for each completed period of 12 months, and in respect of each financial year, a 
year-end bonus equal to 10% and 5% respectively of the consolidated net profits 
after tax of Tanrich.</p>
<p>The aggregate of the bonuses to all executive directors would 
not exceed 25% of the consolidated net profits after tax.</p>
<p>In the last year before the IPO, total directors' remuneration 
was $1.5m, while in the year to 30-Jun-02, the total excluding bonuses would be 
$2.86m (being 13 months times $220k), which implies that the new salaries had 
been in effect since 1-Jul-01.</p>
<p>Now whatever you think of those arrangements, they were fully 
disclosed in the prospectus, and as such, we have no problem with it, because 
investors knew before they bought the shares what they expected the company to pay its 
management.</p>
<h3>A post-IPO 381% pay raise</h3>
<p>However, on 4-Oct-02, it was revealed in an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021004/LTN20021004078.pdf">
announcement</a> that Mr Yip's compensation had been increased by 50% with 
effect from 1-Jul-02 to HK$180k per month. Furthermore, Tanrich had signed a 
supplemental agreement, from 1-Oct-02, to provide Mr Yip with accommodation at 
18 Henderson Road, Jardine's Lookout, at a monthly rent of HK$430k. This boosted 
his total basic remuneration, excluding bonus, to $7.5m per year, and 
represented a <b>381% increase since the listing just 8 months earlier</b>.</p>
<div class="rightpicbox" style="max-width:320px">
	<img alt="" src="../images/tanrich1.JPG">
</div>
<p>We're not talking about any old apartment here. The 3-storey stand-alone mansion (plus 
basement car port) is on a site area of 15,910 sq ft and has a total gross floor 
area of 13,500 sq ft. The rental amounts to about $32 per sq ft.</p>
<p>The property was owned by Union Light Investment Ltd, and guess 
who owned that? After 2 layers of holding companies, Mr Yip had an effective 
interest of 90.5%, his wife had 5% and Mr Tsunayama had 4.5%.</p>
<p>Because of Mr Yip's ownership interest in the house, it was 
treated as a connected transaction, but happily, the 21-month term of the lease 
involved a total rent of $9.03m, which was below the threshold of $10m in the 
Listing Rules and hence no minority shareholders' approval was required. But if 
he had not owned the house, then an increase in his remuneration would not have 
even required an announcement, and you would not know these details.</p>
<p>Tanrich said that the supplemental service agreement was entered 
into <i>&quot;in view of the positive financial results&quot;</i> for the year ended 
30-Jun-02, citing an increase in operating profit before tax of 42.1%, and <i>
&quot;in view of [Mr Yip's] contribution to the Group&quot;</i>. However, to put this in 
absolute terms, operating profit had gone up by $11.32m, but Mr Yip's basic 
package had just gone up by $5.94m per year, so he was taking more than half of 
the increase for himself. And don't forget, he was already entitled to a bonus 
of 10% of net profit, so why should he be further rewarded for an increase in 
profits, beyond the bonus disclosed in the prospectus?</p>
<h3>Profits impacted</h3>
<p>The impact of this began to be felt in the results for the year ended 
30-Jun-03, when net profit plunged to just $10.22m, and total executive 
directors' remuneration was $12.74m, which of course only included the first 9 months' 
rent.</p>
<p>Oh, and for the first time, the two &quot;independent non-executive 
directors&quot; had been paid, receiving remuneration totalling $360k, or an average 
$180k each, which is at the high end of fees for INEDs in HK (your editor gets 
$100k per year as a director of HKEx, a company with a somewhat larger 
market value).</p>
<p>Investors in Tanrich may be interested to know who are the INEDs 
who have been looking after their interests so diligently since the IPO. They 
are Andy Lam Siu-wing (<b>Mr Lam</b>) and Andrew Ma Chiu Cheung (<b>Mr Ma</b>).</p>
<p>Mr Lam is a qualified accountant and was an executive director 
of UBA Investments Ltd (0768) from 23-Nov-99 to 9-Oct-00, and was also an 
executive director of Ezcom Holdings Ltd (0312, then Lamex Holdings Ltd) from 
16-Dec-98 to 8-Aug-01. He is also a member of the Board of Review (Inland 
Revenue Ordinance) and an adjudicator of the Obscene Articles Tribunal - perhaps 
this will come in handy when he looks at Mr Yip's pay increase.</p>
<p>Mr Ma is an accountant and director of Andrew Ma DFK (CPA) Ltd, 
presumably his own firm. We are not aware that he has any other listed-company 
directorships.</p>
<h3>Tax Benefits</h3>
<div class="leftpicbox" style="max-width:320px">
	<img alt="" src="../images/TanrichAir.JPG">
</div>
<p>Apart from 
demonstrating what in our view is appalling governance, this case 
study also handily illustrates the  Housing Loophole we described in last 
week's article <a target="_blank" href="tax1.asp">Tax Benefits</a>, from which 
anyone who receives part of their pay as housing can benefit. Under the law, Mr Yip's housing 
will only be deemed to be worth 10% of his cash compensation. We don't know what 
his bonus will be, so ignoring that, his housing would be deemed to be worth 10% 
of his annual salary of $2.34m, or $234k. That is just 4.5% of the $5.16m that Tanrich is actually paying in rent. So even if Mr Yip reaches the maximum rate 
of tax of 16%, the effective tax rate on his housing benefit will be just <b>0.72%,
</b>excluding bonus effects.</p>
<h3>The Pay Loophole</h3>
<p>Under the Listing Rules, minority shareholders have no control 
over how much a listed company may pay its Chairman or other directors, even if 
the Chairman is also a substantial shareholder of the company. If he were to 
engage in any other transaction with the company, such as an asset sale or 
purchase, or to borrow money from it, then that would be a connected 
transaction, but variations in pay are not. It is one of the easiest ways for a 
controlling shareholder to take as much as he likes before leaving any profits 
for outside shareholders.</p>
<p>So paradoxically, if a 
controlling shareholder attempts to sell an empty cardboard box to his company 
for $20m, then it is a connected transaction subject to independent 
shareholders' approval, and would be voted down, but if he simply awards himself 
a $20m bonus as a director, then nothing stops him. And since he controls the 
company, removing him as a director is not an option for shareholders.</p>
<p>For sure, a board of directors has to approve changes in this 
pay, but if the Chairman also has the ability to elect or remove any director, 
including the independent directors, then they can hardly be expected to stand 
in his way, particularly if they are paid well for their own job. Forming a 
remuneration committee would not help the situation so long as all the directors 
are elected by the controlling shareholder. Selling your shares is not a remedy 
either, because by then the share price will already reflect the negative impact 
of the pay increase on future profits.</p>
<p>We have <a target="_blank" href="rulesroundup.asp#Pay">called in 
the past</a> for the introduction of a Listing Rule which takes account of the 
control structure of Hong Kong by requiring that if the total remuneration of 
any director is to increase by more than 20% compared with the previous year, 
then it should be subject to approval in advance by minority shareholders, 
excluding anyone associated with any of the executive directors from the vote.</p>
<p>As investors, we don't mind paying good money for good people to 
run our companies, but there should be some check and balance which stops them 
awarding themselves massive pay increases and treating the pay packet as a 
preferential dividend to be taken out of shareholders' profits without our 
approval.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15211">Southwest Securities International Securities Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=20066">Yip, Man Fan</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=125">Directors' remuneration</a></li>
				
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
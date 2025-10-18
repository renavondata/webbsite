
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

<script type="text/javascript">document.title="Henderson's Lesson for Kerry";</script>

	<div class="summary">As the market climbs higher, Kerry Properties' privatisation bid is increasingly detached from reality. The latest announcement, at worst, indicates an April NAV of $16, even after allowing for $1 of deferred tax liabilities that may never crystallise, leaving a gaping offer discount. If Kerry wishes to avoid the fate of the Henderson Investment bid, it will have to increase the bid substantially.</div>

<h2 class="center">Henderson's Lesson for Kerry<br>
<span class="headlinedate">16 June 2003</span></h2>
<p>Time to take another look at the ongoing offer by Kerry Holdings Ltd, 
controlled by Robert Kuok Hock-nien (<b>Mr Kuok</b>), to privatise
<a target="_blank" href="http://www.kerryprops.com/">Kerry Properties Ltd</a> (<b>KP</b>, 
0683).</p>

<p>What a difference 6 months makes. On 2-Jan-03, minority shareholders of 
Henderson Investment Ltd (<b>HI</b>, 0097)
<a target="_blank" href="hivictory.asp">blocked</a> a HK$7.60 per share 
privatisation bid by Henderson Land Development Co Ltd (<b>HLD</b>, 0012) by a 
slim margin.</p>

<p>Clifford Lam, an analyst at Merrill Lynch, was quoted in the <i>South China 
Morning Post</i> the next day as saying in relation to the share price: <i>&quot;It 
will fall to below HK$6 per share and never rebound [to the same level as HLD's 
offer]&quot;.</i></p>

<p>Well, he was wrong on both counts. HI reached a low of $6.20 after the offer 
was vetoed, and closed today at $7.60 per share - and it has paid a dividend of 
$0.11 since the offer was vetoed, for a total return of $7.71. Meanwhile, since 
2-Jan-03, the Hang Seng Properties Sub-Index has fallen 3.0%, so HI has actually 
out-performed the index in that time. As the market price is now back at the 
offer price, anyone who disagreed with our opposition and thought it was a fair 
offer, but didn't sell in the market before it was vetoed, can now get that same 
price in the market, and keep the dividend. But if HLD were to try again to 
privatise HI today, it would obviously have to offer a higher price. Minority 
shareholders have been vindicated in their decision to reject the offer.</p>

<p>Now back to KP, which on 14-May-03
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030514/LTN20030514086.pdf">
announced</a> a massive 37-day delay to the posting of the offer document, which 
normally has to be posted within 21 days of announcement. The stated reason was
<i>&quot;due to additional time required to accommodate the court process to convene 
the court meeting&quot;</i>, but don't blame it on Bermuda, because the real reason 
was that KP needed more time to prepare the offer document and in particular the 
valuation reports, including properties in HK and the mainland.</p>

<p>In this morning's papers, but dated Friday 13-Jun-03, KP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030616/LTN20030616020.pdf">
announced</a> that it had obtained new valuations of its property and 
infrastructure projects as at 30-Apr-03. These showed:</p>

<ul>
  <li>a devaluation in investment properties, hotel properties and other 
  freehold and leasehold land and buildings, resulting in a charge against the 
  income statement for the 4 months to 30-Apr-03 of $914m</li>
  <li>a provision for unsold properties at Constellation Cove (a residential 
  development project) of $55m</li>
  <li>a provision for decline in the carrying value of associated companies of 
  $137m</li>
</ul>

<p>These non-cash items total $1,106m, or about <b>$0.93</b> per share (at 
30-May-03 there were about 1,184,5m shares in issue). In addition, due to the 
introduction of a revised accounting standard
<a target="_blank" href="http://www.hksa.org.hk/professionaltechnical/pronouncements/handbook/volume2a/2_112a.htm">
SSAP 12</a> in Hong Kong, KP will accrue for deferred taxation even though it is
<i>&quot;not expected to crystallise in the foreseeable future&quot;</i>, and is making an 
additional provision of about HK$1.2bn retrospectively for the liability as of 
31-Dec-02, reducing the net asset value accordingly by about <b>$1.01</b> per 
share.</p>

<p>We accept that KP must abide by accounting standards, but don't be fooled 
into thinking that this amount represents an unavoidable liability. The figure 
of $1.2bn, at 2002 tax rates of 16% in HK, would imply a total contingent 
taxable profit of $7.5bn, or about one-third of net asset value of $21.0bn at 
31-Dec-02.</p>

<p>The way in which deferred tax liabilities are computed under SSAP12 is 
extremely complicated, but it basically boils down to providing for the tax on 
the difference between the carrying amount and &quot;tax base&quot; of an asset, on the 
assumption that the entire carrying amount will be realised in the form of 
future revenues over the lifetime of the asset and that the corresponding profit 
will be taxable. But life is not that simple, because firms have a habit of 
financing these assets with borrowings, paying interest on those borrowings, 
which reduces the taxable profit. So the liability is almost certainly 
overstated.</p>

<p>Furthermore, insofar as these deferred tax liabilities relate to fixed assets 
such as investment properties and hotels, if KP were ever to sell them, then the 
remaining deferred tax liability would probably simply vanish. KP would likely 
sell the subsidiary which owns the property, but even if it directly sold the 
property, in Hong Kong, disposals of fixed assets, or what the taxman calls 
&quot;capital assets&quot; are not assessable to profits tax. So the accounting standards 
require KP to record an asset at valuation together with a corresponding 
deferred tax liability that may disappear if that valuation is ever realised in 
a sale.</p>

<h3>The Henny Penny approach</h3>

<p>It is standard practice in privatisation proposals for listed companies to 
look for every possible way of reducing their apparent value and talking down 
their prospects. The controlling shareholder is of course the munificent 
benefactor who is seeking to buy all the shares not because he thinks the 
company has any prospects, but he just wants to help the little minority 
shareholder avoid a loss.</p>

<p>We call it the
<a target="_blank" href="http://www.rickwalton.com/funstuff/skyfall.htm">Henny 
Penny</a> approach to investor relations, from the children's fairy tale. In the 
case of KP, we estimate the total deduction of the asset devaluation and the 
deferred tax provision to amount to $1.94 per share.</p>

<p>The original NAV of $17.94 per share at year end has also been diluted to 
about $17.73 per share due to the issue of shares for the scrip dividend. 
However, we'll make an educated guess that the company has also booked $250m of 
profit for the 4-month period, or about $0.21 per share, which cancels out the 
dilution.</p>

<p>Overall then, KP is likely to claim a 30-Apr-03 net asset value of around 
$16.00 per share when its privatisation document finally sees the light of day, 
after deducting that $1.01 of newly introduced deferred tax liabilities. KP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030616/LTN20030616021.pdf">
announced</a> today that it will delay posting for another 10 days until on or 
before 30-Jun-03 <i>&quot;in order to give all the parties involved time to assess 
the impact&quot;</i> of today's announcement.</p>

<p>There's a subtext there. If they were simply going to stay at the current 
offer level, then they would have posted the document and started the ball 
rolling. However, by delaying, they give time to negotiate with investors who 
are seeking a higher offer, and to come to a deal which is acceptable to all.</p>

<p>Ironically, by taking so long to get its offer document ready, KP has missed 
the deepest doldrums of the market. The war on Iraq is practically over, SARS is 
practically gone, and markets have climbed strongly around the World, which is a 
more confident place than when the first offer of $8.50 was made on 23-Apr-03. 
Take a look at this table:</p>

  <table class="numtable center">
    <tr>
      <th></th>
      <th><i>23-Apr-03</i></th>
      <th><i>16-Jun-03</i></th>
      <th><i>Change</i></th>
    </tr>
    <tr>
      <td class="left">Hang Seng Property Sub-Index</td>
      <td>8,841</td>
      <td>10,728</td>
      <td>+21.3%</td>
    </tr>
    <tr>
      <td class="left">Hang Seng Index</td>
      <td>8,520</td>
      <td>9,862</td>
      <td>+15.8%</td>
    </tr>
    <tr>
      <td class="left">Offer for KP</td>
      <td>8.50</td>
      <td>9.50</td>
      <td>+11.2%</td>
    </tr>
    <tr>
      <td class="left">New SARS cases</td>
      <td>24</td>
      <td>0</td>
      <td>-100.0%</td>
    </tr>
  </table>

<p>As you can see, although Kerry Holdings has increased its offer for KP by 
11.2% since it first announced the privatisation plan, by comparison with other 
property stocks in the HS Property Sub-Index and with the HSI, it has not kept 
pace.</p>

<h3>Our view</h3>

<p>At this offer level, the chance of success is close to zero. Even if you 
accept the estimated revised NAV figure of $16.00 per share after deducting 
deferred tax liabilities which were <i>&quot;not expected to crystallise in the 
foreseeable future&quot;</i>, if ever, then the offer at $9.50 still represents a 
discount of 40.1%. If you look at it on the old basis, before the deduction of 
deferred tax, then you are talking about NAV of $17.01 and a discount of <b>
44.2%</b>.</p>

<p>Whether this bid follows the same fate as the bid for Henderson Investment is 
now entirely up to Kerry Holdings. Mr Kuok will either have to make a 
substantial increase in the offer or expect to be voted down. <i>Webb-site.com
</i>editor David Webb is a shareholder of KP.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=809">KERRY PROPERTIES LIMITED</a></li>
				
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
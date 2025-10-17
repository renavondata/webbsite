
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

<script type="text/javascript">document.title="Cut the Spread!";</script>

	<div class="summary">We need your help! Please use our form to support the reduction of minimum bid-offer spreads on HKEx. This will improve market efficiency and make it easier for buyers and sellers to meet. If you don't support it now, it will be many years before you have another chance.</div>

<h2 class="center">Cut the Spread!<br>
<span class="headlinedate">4 October 2004</span></h2>
<p>Back in Jan-02, <i>Webb-site.com</i>
<a target="_blank" href="cutthespread.asp">called</a> on the Hong Kong Exchanges 
and Clearing Ltd (<b>HKEx, </b>0388) to cut the &quot;spread table&quot; which determines 
the prices at which bids and offers can be posted in our order-driven market. 
For example, if a share is priced at $0.51, then under current rules the next 
price up is $0.52 and the next price down is $0.50. This minimum &quot;spread&quot; of 
$0.01 equates to 2% of the price. We won't repeat all the arguments in this 
article, please read the <a target="_blank" href="cutthespread.asp">original 
article</a> if you need convincing that free markets work better when there is a 
minimum of artificial barriers to trade.</p>
<p>Since that article was published, momentum for change has gathered. Your 
editor was <a target="_blank" href="HKExAGM2003results.asp">elected</a> by 
shareholders to the board of HKEx in Apr-03, and one of his few successes in 
that capacity has been to help persuade the company to push for greater 
liberalisation of the spread table. On 6-Aug-04, HKEx
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2004/040806news.htm">
announced</a> a market consultation to reduce the spread table in two phases.
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/24010607(e).pdf">
Click here</a> to download the consultation paper. <b>We need your help -
<a href="../forms/spreadSubmit.htm">click here</a> to jump to our submission 
form</b>, or read this article first.</p>
<p>In Phase 1, spreads would be cut only for stocks above $30, of which there 
are only a dozen or so with primary listings in Hong Kong. There are also 7 
NASDAQ stocks such as Starbucks which are quoted here under a misconceived
<a target="_blank" href="http://www.hkex.com.hk/prod/uspilot/nasdaq.htm">pilot 
scheme</a> but almost never trade.</p>
<p>In Phase 2, two options are presented. Option &quot;2A&quot; would cut spreads for all 
stocks above $2, and Option &quot;2B&quot;, which we favour, would make cuts for all 
stocks above $0.25. You can't do anything for stocks below that price, because 
they already have a spread size of $0.001, which is the smallest increment that 
the trading system can handle.</p>
<p>The reason <i>Webb-site.com</i> prefers Option 2B is on the grounds of 
fairness and uniformity. If we went with Option 2A, then the market would be 
segmented into the more efficiently-priced stocks in a &quot;supermarket&quot; above $2, 
while the rest would trade in the wider-spread &quot;flea market&quot; below $2. We see no 
reason to discriminate against investors in companies priced below $2 when 
providing market facilities.</p>
<p>Even with Option 2B, which adopts a minimum spread of $0.001 below $1, this 
still leaves us with the problem of stocks which trade below 50 cents where the 
spreads widen progressively from 0.2% to as much as 10% (when the price is at 
the system-minimum of $0.01). The only way out of that is for companies to 
consolidate their shares. The Stock Exchange actually has the power under 
current Listing Rule 13.64 (formerly in the Listing Agreement) to require 
companies to do this, but has seldom, if ever, used it.</p>
<p>So here is what the spread table will look like if <b>Option 2B</b> is 
adopted:</p>
  <table class="numtable center">
    <tr>
      <th>Prices<br>
        from<br>
        $&nbsp;</th>
      <th>Tick<br>
      size<br>
        $</th>
      <th>Max<br>
      spread<br>
        %</th>
      <th>Min<br>
      spread<br>
        %</th>
    </tr>
    <tr>
      <td>0.01</td>
      <td>0.001</td>
      <td>10.00%</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td>1.00</td>
      <td>0.002</td>
      <td>0.20%</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td>2.00</td>
      <td>0.005</td>
      <td>0.25%</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td>5.00</td>
      <td>0.01</td>
      <td>0.20%</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td>10.00</td>
      <td>0.02</td>
      <td>0.20%</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td>20.00</td>
      <td>0.05</td>
      <td>0.25%</td>
      <td>0.05%</td>
    </tr>
    <tr>
      <td>100.0</td>
      <td>0.1</td>
      <td>0.10%</td>
      <td>0.05%</td>
    </tr>
    <tr>
      <td>200.0</td>
      <td>0.2</td>
      <td>0.10%</td>
      <td>0.04%</td>
    </tr>
    <tr>
      <td>500.0</td>
      <td>0.5</td>
      <td>0.10%</td>
      <td>0.05%</td>
    </tr>
    <tr>
      <td>1000</td>
      <td>1</td>
      <td>0.10%</td>
      <td>0.05%</td>
    </tr>
    <tr>
      <td>2000</td>
      <td>2</td>
      <td>0.10%</td>
      <td>0.04%</td>
    </tr>
    <tr>
      <td>5000<br>
      to 9,995</td>
      <td>5</td>
      <td>0.10%</td>
      <td>0.05%</td>
    </tr>
  </table>
<p>There is a rather obvious &quot;1-2-5&quot; pattern in this proposal which makes it 
much easier to remember than the current table. You may notice that there is a 
discontinuity (a missing $50 boundary) in the $20-$100 range, after which the 
maximum spread reduces to 0.10%. This is so that a handful of very large 
companies with stocks priced above $50 can have narrower spreads. We don't 
object unless they do, in which case it would be possible to shift the 
categories above $50 to retain the same percentage range as below $50.</p>
<h3>Speak now!</h3>
<p>We need your help to get this through. There is bound to be a lot of 
opposition to reform from vested interests (particularly from brokers who like 
front-running against their clients or to make a spread by standing in the 
middle). The review of minimum spreads has only happened once in the last 
decade, so if we fail to get it right now, you will be dealing in a less 
efficient market for a long time to come.</p>
<p>Whether you prefer Option 2B or something else (in the words of Hamlet, 2B, 
or not 2B, that is the question...), please <b>
<a href="../forms/spreadSubmit.htm">click here to submit your views</a></b> 
through our on-line form. The deadline (unless extended) is this Wednesday, 
6-Oct-04, so act now!</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=122">Dealing costs</a></li>
				
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

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

<script type="text/javascript">document.title="HSBC Compounds the Errors";</script>

	<div class="summary">We show you how HSBC has been compounding the errors in its recent promotional literature for long term savings.</div>

<h2 class="center">HSBC Compounds the Errors<br>
<span class="headlinedate">21 March 2003</span></h2>
<p>In a slight detour from corporate governance, we take a look at misleading
financial advertising. We received an amusing <a href="../codocs/compounding.PDF" target="_blank"> brochure</a> from
The World's Local Bank
the other day, preaching the benefits of lending them money (which banks
euphemistically call &quot;saving&quot;). We just couldn't resist sharing our
mail with you. </p>

<p>The article in the HSBC brochure <i>Investment Frontier</i> was entitled <i>&quot;Achieving
your financial goals - become a millionaire by saving just HK$3,000 a
month&quot;</i>. Of course, the fast way would be to convert that into an even
funnier currency like the Indonesian Rupiah or Turkish Lira, but let's assume we stay in
the Hong Kong dollar to get our seven digits. </p>

<p>The bank offers us a <i> &quot;Case Study for Financial Planning&quot;</i>,
comparing Simon, aged 22, and Peter, aged 32, both of whom start saving $3,000
per month. Peter keeps saving till he is 57, while Simon stops at age 32. The
bank tells us: </p>

<blockquote>

<p>&quot;Peter, who has not recognised the importance of saving early, starts
saving HK$3,000 a month at the age of 32 for a period of 25 years - that is 15
years longer than Simon...at the end of which his total contributions will be
HK$900,000, an amount that's two and a half times greater than Simon's.&quot; </p>

</blockquote>

<p>Then the bank shows us this table: </p>

  <table class="numtable center">
    <tr>
      <td class="left">&nbsp;</td>
      <td><i>Simon</i></td>
      <td><i>Peter</i></td>
    </tr>
    <tr>
      <td class="left">Age commenced saving</td>
      <td>22</td>
      <td>32</td>
    </tr>
    <tr>
      <td class="left">Age stopped saving</td>
      <td>32</td>
      <td>57</td>
    </tr>
    <tr>
      <td class="left">Monthly contributions</td>
      <td>$3,000</td>
      <td>$3,000</td>
    </tr>
    <tr>
      <td class="left">Total contributions</td>
      <td>$360,000</td>
      <td>$900,000</td>
    </tr>
    <tr>
      <td class="left">Cumulative savings at age 57<br>
        (with interest return)</td>
      <td>$2,206,124</td>
      <td>$2,089,376</td>
    </tr>
    <tr>
      <td class="left" colspan="3"><i>Assuming yearly return rate of 6%</i></td>
    </tr>
  </table>

<p>This is what the bank says: </p>

<blockquote>

<p>&quot;Most people would think that by saving for 15 years longer than Simon
at the same rate of return, Peter's cumulative savings over 25 years would
amount to more than Simon's savings over 10 years. </p>

<p>The reality, however, is quite different. The critical factor is that Simon
started saving when he was younger. This, together with compound interest and
good financial planning, puts Simon way ahead even though Peter has been saving
for 15 years longer.&quot; </p>

</blockquote>

<p>We find that grossly misleading. As we shall show, Simon is in reality not &quot;way ahead&quot; of Peter
- in fact, it is the other way around. HSBC is trying to persuade impressionable young savers that by
saving for just 10 years, you will be better off at retirement than someone who
saves for 25 years and has contributed 2.5 times as much. This is simply not
true. </p>

<p>For the mathematicians among you, the formula for total return from investing a fixed
amount $M per month at the beginning of each month for N months with a monthly
interest rate of R is: </p>

<p class="center">M * [(1+R)^(N+1)-1-R] / R </p>

<p>The three key errors in HSBC's advertorial are: </p>

<ol>
  <li>
    <p style="margin-bottom: 6">To get the above tabled returns, you need R=0.5%
    per month which, with compounding, is equivalent to an annual interest rate of about 6.17% - that's
    more than the <i>&quot;yearly return rate of 6%&quot;</i> stated in the
    example. It may sound like a small difference, but over 25 years that
    compounds to a difference of 4.28% in returns.</li>
  <li>
    <p style="margin-bottom: 6">The bank fails to point out that Simon retires
    10 years later than Peter - so by comparing the amount they each have when
    aged 57, they are not comparing the same dollars. When Peter retires in
    2028, a dollar he puts in the bank (at the same interest rate) will compound
    to $1.819 ten years later (at aged 67), when Simon retires.</li>
  <li>
    <p style="margin-bottom: 6">The bank fails to point out that
    the real value of contributions decreases over time. If one can get 6% in
    the bank, then a contribution of $3,000 payable a year from now can be funded
    by depositing $2,830 in today's money. So comparing the total contributions
    of $360,000 from Simon and $900,000 from Peter is meaningless, as they are
    not shown in current dollars.&nbsp;</li>
</ol>

<p>So let's look at what the table should have showed, to be fair: </p>

<table class="numtable center">
    <tr>
      <td class="left">&nbsp;</td>
      <td><i>Simon</i></td>
      <td><i>Peter</i></td>
    </tr>
    <tr>
      <td class="left">Age commenced saving</td>
      <td>22</td>
      <td>32</td>
    </tr>
    <tr>
      <td class="left">Age stopped saving</td>
      <td>32</td>
      <td>57</td>
    </tr>
    <tr>
      <td class="left">Cumulative savings in 2028 when Peter retires<br>
        (with interest return)</td>
      <td>$1,212,558</td>
      <td>$2,089,376</td>
    </tr>
    <tr>
      <td class="left">Cumulative savings in 2038 when Simon retires<br>
        (with interest return)</td>
      <td>$2,206,124</td>
      <td>$3,801,404</td>
    </tr>
    <tr>
      <td class="left" colspan="3"><i>Assuming monthly return rate of 0.5%, 
        or about 6.17% per annum</i></td>
    </tr>
</table>

<p>What this shows is quite simple. Simon stops saving after 10 years, while
Peter carries on for another 15, so he has 72.3% more money than Simon in 2028, and the
differential is maintained after a further 10 years. He is &quot;way ahead&quot;
of Simon, not the other way around. The only trace of truth in HSBC's advertorial is that you have more time to
save if you start young. That doesn't mean you can stop when you get to 32 and
live happily every after. </p>

<p><i>Webb-site.com</i> calls on the HK Monetary Authority to clamp down on this kind of deceptive advertising. </p>

<p>All this is pretty sad coming from a bank which
currently pays 0.01% on savings accounts (up to $1m), or about 1.3% below HIBOR
(the inter-bank rate). In fact, this 0.01% is probably less than the annual
default risk of the bank - it implies that such a bank would only go bust once
in 20,000 years if you get half your money back when it fails. If it were not
for the need to make electronic payments and the risk of robbery, it would be
logical to take the cash out of the bank. This is why rates cannot go negative -
people would simply rent bank deposit boxes and put the cash in there instead. </p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=382">HSBC HOLDINGS PLC</a></li>
				
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
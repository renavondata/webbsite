
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

<script type="text/javascript">document.title="CCASS and the eIPO";</script>

	<div class="summary">With all the recent attention on the "eIPO" process in Hong Kong's MTRC offer, you might think we are on our way to a paperless market. Hong Kong's clearing monopoly, HKSCC, still has a long way to go, as Webb-site.com explains in the first of two articles.</div>

<h2 class="center">CCASS and the eIPO<br>
<span class="headlinedate">2 November 2000</span></h2>
<p>When Hong Kong's <a href="../dbpub/articles.asp?p=11569" target="_blank">MTR
Corporation</a>, the monopoly underground railway system, went public last
month, there was a large spotlight on the share application process, following
the chaotic scenes in March when half a million people queued up to apply for
bubble-stock <a href="../dbpub/articles.asp?p=10265" target="_blank">Tom.com</a>. </p>

<p>For the first time in a major IPO, the receiving bankers
promoted a so-called &quot;eIPO&quot; system, whereby the public could submit
applications through the internet. That's good as far as it goes - but what did
you get in return? </p>

<ul>
  <li>First, a paper share certificate through
    &quot;snail-mail&quot; post. Some people even got two with the same serial
    numbers - but that's an old story.</li>
  <li>Second, a few days later, a paper refund cheque for the
    difference between the final offer price and the amount applied for.</li>
  <li>Finally, a letter from Central Registration, the company
    registrar (which is 50% owned by HSBC), asking you to mail in a sample of
    your signature because otherwise there would be no way to recognise your
    signature on a transfer form if you ever sell.</li>
</ul>
<p>So much for a paperless process. What you probably don't know is
that <a href="http://www.hkclearing.com.hk/" target="_blank">Hong Kong
Securities Clearing Company Ltd</a> (<b>HKSCC</b>) has since Nov-99 been offering a
much more paperless type of eIPO which avoids all of the above problems, for investor participants of
CCASS. </p>

<h3>What is CCASS?</h3>

<p>The Central Clearing Automated Settlement System (<b>CCASS</b>) is run by HKSCC, which is now a wholly-owned subsidiary of <a href="http://www.hkex.com.hk/" target="_blank">Hong
Kong Exchanges and Clearing Ltd</a> (<b>HKEx</b>). </p>

<p>HKSCC used to be a not-for-profit independent entity which
invested surpluses in its infrastructure and in reducing the fees charged to its
users (stock settlement fees were cut by 80% from 1992 to 1999). However, this all changed when
HKSCC was gifted to HKEx to increase the
value of the small brokers' memberships and persuade them to vote in favour of
the merger with the Futures Exchange last year (but that's <a href="uturn.asp" target="_blank">another
story</a>). </p>

<h3>Pass the Parcel</h3>

<p>Hong Kong does not have a &quot;scripless&quot; trading system -
CCASS is one step back from that, a <u>demobilised</u> system. </p>

<p>In the years BC (Before CCASS), as shares were sold and re-sold,
messengers would run around town in a &quot;pass the parcel&quot; fashion
between brokers and custodians.
Indeed, you could not be an SEHK member firm without an office in Central. </p>

<p>The messengers carried share certificates attached to a
&quot;transfer deed&quot; with the signature of the original owner and a blank
transferee. That made them effectively bearer documents until a dividend was
declared, then whoever still held the parcel would rush it to the registrar, and
get onto the share register in time to collect the dividend. Otherwise, the
cheque would be sent to the previous owner. The registrar would issue a new
share certificate in the name of the new owner. </p>

<p>Nowadays, almost all trades are settled through CCASS. The shares are registered in the name of HKSCC Nominees Ltd, and the
certificates are held in a giant vault. CCASS then keeps a &quot;book
entry&quot; (actually, a computer entry) system which records which
&quot;participants&quot;&nbsp; own what. Trades between participants are settled
by debiting one account and crediting another. </p>

<p>Brokers liked this system for several reasons: </p>

<ul>
  <li>They made a nice profit
    holding on to your certificates for you (often registered to their own nominee company)
    and charging you collection fees on
    dividends and mark-ups on &quot;scrip fees&quot; which are charged by
    registrars whenever new share certificates are issued.</li>
  <li>When you decided to sell, they've
    got your certificates, so they get the commission.</li>
  <li>Depending on the client agreement,
    they asked you to put up cash for future settlements, and benefit from the
    interest on cash balances.</li>
  <li>Finally, a lot of clients had
    signed &quot;margin account&quot; agreements which would allow brokers to
    pledge the client's stock as collateral for the broker's own financing, even
    when the client had little or no borrowings against the stock. This
    is one of the things that made the 1998 collapse of C A Pacific such a
    nightmare for liquidators to unravel.</li>
</ul>
<p>Many of these motives still exist under
the CCASS system - just substitute &quot;shares in broker's CCASS account&quot;
for &quot;certificates&quot;.&nbsp;</p>
<h3>Keeping the Clients Out</h3>

<p>So when CCASS was set up in 1992, you can imagine the brokers' concerns.
If the public were given their own accounts, then they would be in direct charge
of their own shares - good for clients, bad for brokers. </p>

<p>This calamity was avoided by initially limiting membership of
CCASS to brokers and custodians. It was several years before even a &quot;<b>Stock
Segregated Account</b>&quot; was launched. This service, still available, allows
the beneficiary to get his broker to hold stocks in a special CCASS sub-account
with the client's own name on it. At the very least, you should make sure this
happens. For just <b>HK$10 per month</b>, you will get a written statement with
your own name on it and a list of your shareholdings, plus mailed confirmation
of each movement in the account. If your broker ever goes bust, at least you'll
be able to show the judge which shares belong to you. </p>

<p>The Stock Segregated Account does not, however, give you direct
control over the movement of your shares. In short, they could still be stolen.
For that reason, we recommend the Investor Participant account </p>

<h3>Investor Participation in CCASS</h3>

<p>In May-98, after much twiddling of thumbs, HKSCC finally
launched a direct public participation system under which any individual or Hong
Kong company (and more recently, BVI company) can open a direct Investor
Participant (<b>IP</b>) account in CCASS. </p>

<p>We've been using an IP account ever since - it ain't perfect,
but it works. We stopped paying a broker 0.50% to send us a dividend cheque, and
instead pay CCASS 0.12% to put them straight into our bank account. We stopped
paying a broker $2.50 per board lot of scrip fees, and pay $1.50 per lot to
CCASS instead. With many small-caps having a board lot valued at around $500 or
less, that $1 makes a saving of 0.2% on each purchase, certainly worth having.
And with CCASS, we sleep well at night. </p>

<p>CCASS charges IP account holders the same fees it would charge
your broker, so unless you broker is willing to subsidise, you can be sure that
you don't pay more at CCASS. </p>

<p>An IP account holder gets an account number and a personal
identification number (PIN). He or she designates a HK bank account which will
be used to pay for shares and receive proceeds of sales and dividends. Whenever
a trade is done, the broker gives CCASS details of the trade, and then the
client has to &quot;affirm&quot; the trade using the CCASS phone system. After
that, the settlement is automatic, and you get a printed statement from CCASS
telling you what happened. </p>

<p>It's just like phone banking, except that it's not open 24
hours a day. Remember, we are dealing with a monopoly here. The system is only
open for settlements from 10 a.m. to 3.45 p.m., Monday to Friday. That makes
28.75 hours a week, or just <b>17% availability</b>. </p>

<p>You must remember to affirm your trades within 2 days, because
if you don't, then your trade will &quot;bounce&quot; under the &quot;T+2&quot;
settlement rule, and any stock you were buying will be dumped in the market,
while anything you were selling will be bought back by CCASS. </p>

<p>Clearly, making CCASS available on a 24-hour basis would make it
less likely that you would fail to affirm a trade. Your broker would have more
time to contact you and remind you to press the button. </p>

<h3>CCASS eIPO</h3>

<p>Despite all the excitement about the &quot;eIPO&quot; of MTRC,
CCASS has been operating a more paperless eIPO system of its own since the IPO
of T S Telecom on GEM in Nov-99. Under this system, you can
instruct CCASS to apply for IPOs on your behalf, and have the stock credited
directly to your CCASS IP account. All this can be done without pen or paper, just
use the phone system. </p>

<p>Great, we thought - if we apply for the MTRC, we'll do it
through our IP account. But again remember, we're dealing with a monopoly here.
HKSCC wrote to all IPs and told us that if we applied through CCASS, we would
not be entitled to the loyalty shares or the retail discount on the IPO. You
will recall that if you hold your stock in MTRC for a year, you get bonus
shares, and some more after 2 years. </p>

<p>We suspect that they simply didn't have the software in place to
track whether we had held the stock continuously for the 1st and 2nd year needed
to get the bonus shares. HKSCC had plenty of time to figure this out as the MTRC
trundled down the IPO track, and it would have been possible to use the MTRC offer to
promote wide scale adoption of the Investor Participant system, but instead they
let the opportunity pass, and we all ended up with printed certificates. </p>

<p><a href="http://www.centralregistration.com/" target="_blank">Central
Registration</a>, which is half owned by HSBC, the sponsor
of the IPO, gets lots of work out
of this but it does the public no good and runs risks of certification errors.
That is exactly what happened when 1508 duplicate certificates were dispatched. </p>

<h3>CCASS on the Internet</h3>

<p>After over 2 years of operation, at 31-Aug-00 CCASS still has
only 7,345 Investor Participants. We attribute this to: </p>

<ul>
  <li>Brokers do not want to promote the service and make
    investors more independent, for the reasons stated above</li>
  <li>Inadequate marketing and investor education by HKSCC</li>
  <li>Restrictive operating hours of CCASS (17% availability)</li>
  <li>A cumbersome telephone interface</li>
</ul>

<p>CCASS will not truly &quot;fly&quot; until an easy, graphical
interface is available, 24 hours a day, on the net. Internet banking in HK
is taking off at a rapid rate and CCASS can be the same. In <a href="ccass2.asp"> tomorrow's
article</a>,
we'll tell you about their first over-cooked attempt to make it happen. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11569">MTR CORPORATION LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=108">CCASS</a></li>
				
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
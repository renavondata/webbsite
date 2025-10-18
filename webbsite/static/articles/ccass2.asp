
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

<script type="text/javascript">document.title="e-Certifiable";</script>

	<div class="summary">Concluding a 2-part series, we look at the over-cooked attempt of HKSCC, the HKEx's monopoly settlement system, to introduce an internet access system for investor participants.</div>

<h2 class="center">e-Certifiable<br>
<span class="headlinedate">3 November 2000</span></h2>
<p>In <a href="ccass1.asp"> yesterday's article</a>, we gave you the history of HKSCC's
efforts to bring investors into direct participation in the clearing system,
giving control over the custody and settlement of their shares, using a
phone-based system similar to phone-banking to affirm trades and authorise
settlement. </p>

<p>So much for the phone system. CCASS has notched up only 7,345
Investor Participants in over 2 years of trying. Net-savvy readers of <i>Webb-site.com</i>
must be wondering if you can deal with CCASS via the web. The good news is that
on 3-Oct-00 an interactive site was launched. The bad news is that it's one of
the least user-friendly systems you will ever see. </p>

<p>In order to use the site, you need more than a PIN. That's good
enough for the banks, where your money is, but not for HKSCC, which has
over-engineered the solution. Instead, they insist on an electronic digital certificate or
&quot;e-Cert&quot; from the <a href="http://www.hongkongpost.gov.hk/" target="_blank">Hongkong
Post</a> office. So far, this is the only Certification Authority recognised by
the Government under the Electronic Transactions Ordinance, which became law
this year. When you remember that Kwong Ki-chi, now head of HKEx, was the head
of the <a href="http://www.info.gov.hk/itbb/" target="_blank">Information
Technology and Broadcasting Bureau</a>, which sponsored the law, then you can
see why he would be keen to use this system. </p>

<p>A digital certificate is basically an electronic ID card.
Indeed, to get one, you have to trot down to the post office with a real ID
card, where a clerk, after recovering from shock, will eye-ball you and start
filling in forms and give you (guess what) a sealed PIN number, a thick
instruction guide and a CD-ROM. If you are a Mac user - forget it. For now, only
a Windows 95 or later PC will do. One monopoly supporting another, you might
think. </p>

<p>You have to sign a long agreement and provide your e-mail
address. A couple of days later you get an e-mail from the postman telling you
that your e-Cert is ready for collection. Find the CD-ROM, follow the instruction
guide, run the setup program
and then go to the post office web site and pick up the certificate, providing your PIN
number. The software on the CD-ROM allows you to generate your own
&quot;keys&quot;. You
should always choose this option, rather than the &quot;central key generation
service&quot; because otherwise you can't be sure the post office hasn't kept a
copy of your private key (they say that they don't). </p>

<p>So now, we are the proud owner of one of the first e-Certs in
Hong Kong. As far as we know, CCASS is the first HK-based consumer service to
use digital certificates for identity verification purposes (rather than just
for secure e-mail or payment processing) and CCASS has confirmed that we were its <a href="../sounds/clap.wav">first
ever user</a>. The things we do for you! </p>

<h3>All about PKI</h3>

<p>The way e-Certs work is based on &quot;Public Key
Infrastructure&quot;. You have a personal private key and a public key on your
computer disk. You can
&quot;sign&quot; documents with your private key, and anyone else can
&quot;verify&quot; your signature with your public key, which is included in
your certificate, which you make available to the public. That also ensures that
your document has not been altered since you signed it. </p>

<p>The whole thing rests on a fascinating branch of mathematics
discovered in 1977 (the year Elvis Presley died) which we won't bore you with
here, suffice to say that if you are the first to figure out a way to easily factorise very
large numbers (to break them down into the prime numbers which, when multiplied
together, produce the original number) then the governments of the world will either hire you or
kill you. </p>

<p>The certification authority (in this case, the post office) will
&quot;certify&quot; your identity by signing your certificate with its own
private key. Get a copy of that key and you would cause some serious trouble -
you could issue any certificate you liked. So the post office's private key must
literally be kept under lock and key. </p>

<p>You can also use a person's public key to encrypt messages, so
that only he can open them with a private key. For those who know what they are
doing, here's <a href="/dmw.p7b">David Webb's digital certificate</a>.
Download it, install it, and send
him some encrypted mail. </p>

<h3>PKI and CCASS</h3>

<p>So you've got your e-Cert, and now you are ready to go to the CCASS web
site. <a href="https://ip.ccass.com/" target="_blank">Click here</a> to see what
we mean. The first problem we found is that there were absolutely no
instructions. We clicked &quot;continue&quot;. Still no instructions, but now an
&quot;applet&quot; (a program which runs on your PC) was downloaded from CCASS, and it wanted a password in the browser.&nbsp; </p>

<p>After some phone calls, we discovered that it wanted us to
export a copy of our digital certificate into a separate file, complete with <b>private
</b>key, then tell the applet where to find it. It then asks you to enter the
password which is used to provide some protection of the private key in case it
is ever stolen. This password goes into a browser form. </p>

<h3>Who you gonna trust?</h3>

<p>Here's the weakness. To make their system run, CCASS requires
you to trust the &quot;applet&quot; program which is downloaded to your machine. This
applet has &quot;full permissions&quot;, which means that anything the programmer
wanted the applet to do, it can do. A rogue programmer could easily tell the
applet to send your password and your private key across the internet to
anywhere in the world (or the &quot;Trojan horse&quot; approach). And under the new law, that
stolen private key could then be
used to sign binding contracts in your name, to interact with any other company
which accepts e-Certs, and to read encrypted e-mail addressed to you, until you find out and get the e-Cert cancelled (or
&quot;revoked&quot;) by the post office. </p>

<p>The whole point of digital signatures is security - so why
should you have to trust HKSCC for this?
After all - who is going to certify that their program is clean? Would you use
trust such an applet from an unknown shopping site? Or a portal? How about an
applet from your broker, or the police, who might like to intercept your
encrypted e-mails? Clearly if you have to trust your counterparty not to steal
your private key then this begins to invalidate the reason for using a digital
signature in the first place. </p>

<h3>There IS a better way</h3>

<p>We checked with an expert from a UK company which specialises in
PKI applications. He told us that what CCASS
is doing is unnecessary, and that there
are ways of using digital signatures to authenticate your actions which do not involve
applets, but just use the standard browser software on your PC. With a browser approach, you can rely on thousands of
security testers (or hackers) who would have found any weakness in the major
browsers by now. So you can be confident that the browser's system is a lot
safer than any custom-made applet. </p>

<p>As transactions become paperless, digital signatures are our
future. They will be much more practical when the private keys are embedded in
smart cards which do all the secure processing and encryption. Coupled with
thumb-print readers or other biometric devices instead of passwords, this will
make online transactions and contracts simple and very secure. It will no longer
be possible for a &quot;Trojan horse&quot; applet to swipe your private key from
your hard disk. </p>

<p>In the meantime, HKSCC should realise that while we still have
to go through this lengthy and complex procedure to get an e-Cert and then a
risky procedure to use it, very few people are going to bother. HKSCC has jumped
the gun and should revert to using the tried and trusted password system (or
PINs) in a secure browser
window. </p>

<p>While they are at it, we need 24-hour access to the system -
that's one of the key benefits of the web. When travelling, we should be able to
log in from anywhere at any time and settle our trades, not just 10 a.m. to
3.45p.m. Even the Government works longer hours than that! </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

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
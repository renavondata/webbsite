
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

<script type="text/javascript">document.title="Insider Risk at the Certification Authority";</script>

	<div class="summary">In the first in a series of occasional articles on cyber-law, Laurie Lau, a PhD student in I.T. law at City University of Hong Kong, outlines the security issues relating to the Government's Electronic Transactions Bill, and highlights the risk of insider attack at the Certification Authority.</div>

<h2 class="center">Insider Risk at the Certification Authority<br>
<span class="headlinedate">19 September 1999</span></h2>
<p>While
the last two decades were the age of the computer, the next decade will be the
age of the Internet. The Internet
is quickly growing, expanding, and penetrating our daily life and the way we
communicate with the world. With
the growth of the Internet, there comes electronic commerce where business
entrepreneurs are looking at it as a new
channel for market expansion. On the surface, e-commerce does offer new
opportunities. The web knows no
geographic border. It can
communicate with customers in real time. However,
e-commerce does not promise a rose garden as it appears. There are a lot of issues such as intellectual property, copyright,
contract forming and privacy which are very much under debate and hinder the
growth of e-commerce. This column
will provide articles related to e-commerce and law. To start with, this paper will give an overview of "Public Key
Infrastructure" in Hong Kong.</p>

<h3>How PKI works</h3>
<p>There
are three basic components to public key infrastructure (PKI): cryptography technique,
digital signature and certification authorities (CA).
Cryptography technique encrypts the message where only authorised persons with
the necessary key are able to decrypt it. A popular type of cryptography is
public key cryptography where each person is assigned two keys: one public and
one private. When Anna writes to Bessie, Anna encrypts the original message using
Bessie's public key, and Bessie uses her private key to decrypt the message. In
addition, Anna &quot;signs&quot; the message with her private key and the result
of a &quot;hash function&quot;, and Bessie decrypts the signature with Anna's
public key, thereby verifying that it really came from Anna. The hash function
is used to generates a unique code based on the document text, which can be used
to verify that the document has not been intercepted and altered in transit.</p>
<h3>PKI in Hong Kong</h3>
<p>In
Hong Kong, cryptographic technique, management, and audit process are largely imported
from the United States. Currently, Hong Kong does not restrict domestic use of
cryptography. However, the import and export of cryptographic hardware and
software, except personalised smart cards which are not capable of message
traffic encryption or encryption of user-supplied data or related key management
functions, are restricted under Hong Kong's Import and Export Ordinance. Potential importers or exporters must obtain a license from the
Department of Trade.</p>
<p>A
digital signature is a combination of binary numbers (0 and 1), whereas an
electronic signature is usually a copy of a regular hand written signature which
is scanned into the computer. A digital signature contains information on the
sender of an electronic document and provides data integrity by encrypting the
data message in such a way that the data will be kept unchanged as when it was
transmitted.</p>
<p>A
Certification Authority is an agent or Trusted Third Party (TTP) who is given a
licence to produce digital certificates authenticating digital signatures. All these components are essential to electronic commerce because they
are measures to safeguard security and integrity.</p>
<p>In Hong Kong, an <a href="http://www.info.gov.hk/itbb/new/bill-e.doc" target="_blank"> Electronic Transaction Bill</a>
was gazetted on 9-Jul-99 which
will become the basic structure of PKI. The
Bill recognises that a digital signature will satisfy the law as a hand written
signature, when the digital signature is supported with a valid certificate from
the licensed CA, except for a deed, conveyance, assignment, mortgage or legal
charge and court judgement, where a hand written signature is still required.
The Bill clearly states that the CA is not liable for any loss caused by
reliance on a false or forged digital signature of a private digital key
supported by a recognised certificate issued by that CA, if the CA acted and
complied with the Ordinance and code of practice. Therefore, the private key has to be kept very restricted.</p>
<h3>Security Concerns</h3>
<p>The Bill also stipulates that those who rely on the services of the licensed CA must
be able to hold the CA used legally liable for any loss suffered as a result of
their error. The CA will be liable
on the conditions that the user (a) uses a licensed CA, (b) holds a valid
certificate, and (c) has evidence that he/she was not at fault. Condition (c) is
the most difficult to prove. There
are past experiences from both the UK and USA of the difficulties in "proving
oneself is not at fault" with the Automatic Teller Machines (ATM). Bankers simply deny that their encryption systems are ever at fault.
Customers who complain about debits on their accounts for which they were not
responsible (colloquially known as "ghost withdrawals") are told that they
are lying, or mistaken, or that they must have been defrauded by their friends
or relatives, despite the fact is that most ATM fraud cases are conducted with
inside knowledge or access.</p>
<p>The Sunday Times reported on 22-Mar-92 a case in Scotland where a bank ATM
maintenance engineer, knowing that complaint from customers would probably be
ignored, fitted his laptop to an ATM to record customers PINs and account
numbers. He then made up counterfeit cards and looted their accounts. Customers
who complained to the bank were stonewalled. The bank was later publicly criticised by one of Scotland's top law
officers.</p>
<p>If a bank is prone to insider attack, then so is a CA. In Hong Kong, a CA is
legally well protected under the Electronic Transaction Bill. However, clients of a CA are at a disadvantage. When things go wrong, it
is very difficult for an average CA user to prove that the CA is at fault,
especially if the fault is caused by insider attack. The CA would probably do
what the Scottish bank did and deny liability. Additionally, the Hong Kong CA is
only liable to valid users up to the amount of a &quot;recommended reliance
limit&quot;, and each CA user will have a different reliance limit on the
certificate.</p>
<p>Therefore,
how to prevent insider attack, consumer protection and privacy become key issues
in the development of e-commerce.</p>
<p>&copy;<em>  Laurie Lau Yiu Chung, 1999.</em> </p>

<p>Mr. Lau is a PhD student
in I.T. law at City University of Hong Kong. Click <a href="mailto:%20id1997@netvigator.com">here</a>
to send him feedback. If <i>you</i> would like to contribute articles to <i>Webb-site.com</i>,
then <a href="../contact">contact the Editor</a>.</p>

<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=132">E-commerce</a></li>
				
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
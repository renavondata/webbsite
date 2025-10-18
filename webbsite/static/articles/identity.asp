
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

<script type="text/javascript">document.title="Your ID number is not a password";</script>

	<div class="summary">There is a common misconception that HK identity card numbers are secrets, a misconception that Government is promoting by its policy actions, putting us on the road to increased abuse of the HKID and higher economic losses from fraud. To prevent this, the register of ID numbers and names should be published, after a transition to allow commercial abusers to stop abusing the ID for authentication. This article also looks at the unfulfilled potential of the Smart ID Card, including biometric authentication and electronic money.</div>

<h2 class="center">Your ID number is not a password<br>
<span class="headlinedate">8 November 2010</span></h2>
<p>With the recent controversy over Octopus Rewards Ltd, and the way it had been 
using the data supplied by its customers, we thought this would be an ideal time 
to highlight a common misconception regarding the Hong Kong Identity Card 
(<strong>HKIC</strong>) number, or <strong>HKID</strong>. As we will show, that 
misconception is shared by the Government and evident from its recent policy 
actions, which are putting us on the road to increased abuse of the HKID and 
higher economic losses from fraud. This article also looks at the unfulfilled potential of the Smart ID 
Card, including biometric authentication and electronic money.</p>
<h3>Identifier, not authenticator</h3>
<div class="rightpicbox" style="border:0">
	<img alt="Smart ID Card sample" src="../images/SmartID.jpg">
</div>
<p>A unique, unused HKID is assigned to each resident of Hong Kong aged 11 years or older 
under the
<a href="http://www.hklii.org/hk/legis/en/ord/177/" target="_blank">Registration 
of Persons Ordinance</a> and the
<a href="http://www.hklii.org/hk/legis/en/reg/177A/" target="_blank">
Registration of Persons Regulations</a>, and this is displayed on the face of 
his HKIC, along with his date of birth and various other data. The
<a href="http://www.gov.hk/en/residents/immigration/idcard/hkic/smartid.htm" target="_blank">
Smart ID Card</a> also contains a chip with a small processor and some encrypted 
data, including the photo image, and &quot;templates&quot; of the left and right 
thumbprints. The templates are measurements of thumbprints, not images of the 
prints - you could not reproduce a thumb print from the measurements.</p>
<p>The HKID is what its name suggests - an <strong>identifier</strong>. It is 
unique to the holder. It is not an <strong>authenticator</strong>, like a password or 
PIN. Indeed, PIN, which stands for &quot;personal identification number&quot; is a 
misnomer - it doesn't identify you at all. It authenticates you when you use an 
automated teller machine or a web site that requires such a number. Numerous people may have chosen 
to use the same secret number - so it can't be an identifier. A PIN should be 
called a PAN - personal authentication number.</p>
<p>The HKID, in itself, should not be regarded as &quot;personal data&quot; or a secret. 
It is nothing more than an identifier. It says almost nothing about you. [Note: 
if it begins with a &quot;W&quot; then you are a foreign domestic helper. Other initial 
letters A-Z, and in some cases two initial letters may have unpublished 
meanings]. The 
number does not include your age, gender, blood type, income or anything else. 
It is not much different to your name, which is almost an identifier; we could 
say, a &quot;near-identifier&quot;, because you probably have a different name to more 
than 99% of the population, and your name may even be unique.</p>
<p>Your HKID is recorded in many aspects of life in HK, for example:</p>
<ul>
	<li>If you visit a secure 
office building, particularly after hours, then you may be asked for 
identification at the front desk, and your HKIC number will be recorded. A pass may 
then be issued to you. It's entirely reasonable - you wouldn't let complete 
strangers into your home, would you? </li>
	<li>If you open a bank account, the bank will record your HKID (or passport number), so that it knows which unique person it is dealing with. It 
may ask to see your card again when you withdraw large amounts of money, as well as asking for 
your manual signature of course. This reduces fraudulent withdrawals, which 
reduces banking costs. </li>
	<li>If you are appointed by 
the court as a liquidator of a company, then you need to be identified by your 
HKID in gazette notices such as
	<a href="http://www.gld.gov.hk/egazette/pdf/20101444/s620101444p2.pdf" target="_blank">this one</a>, so that people know exactly whom they should make claims to. So 
the HKID of anyone who has ever been appointed a liquidator is already in 
the public domain - it is not a secret.</li>
	<li>HKIDs are often included in legal contracts for sale and purchase of 
	property, publicly filed with the Land Registry. That's because the owner 
	needs to be able to prove that a property is owned by him rather than by 
	someone else with the same name, and the buyer wants to know that he is 
	dealing with the real owner.</li>
	<li>The HKID (or a passport number) of anyone who has been a 
director or secretary of a company registered in HK is recorded on filings made 
with the Companies Registry, so that shareholders, creditors or anyone dealing 
	with the company knows the identity of anyone who is or was running it. These forms are open to inspection or copying. 
	As a company director, your 
editor David Webb's HKID is there, and to save you the cost of looking it 
up, here it is: P135143(9). There you go. No big deal. Not a secret. Just an 
identifier. Now if you ever meet someone claiming to be <em>that</em> David 
Webb, you can ask to see his ID card.</li>
</ul>
<p>Incidentally, the last character in brackets ( ) is actually not part of the 
HKID. It is a check digit which depends on the characters in the HKID, resulting between 
0-9 or A. It is generated by a fairly simple formula, and is used to check for 
errors, because if you get one character wrong in the ID, 
then the check digit will be wrong. You can use our new <a href="../dbpub/idcheck.asp">online 
HKID check digit generator</a>  to calculate 
the check digit of any HKID - try it and see! Hours of fun for all the family.</p>
<h3>Government encouraging the abuse of HKIDs</h3>
<p>In recent (30-Aug-2010) consultation conclusions on some company law reforms, the Financial Services 
and Treasury Bureau of the Government
<a href="http://www.cr.gov.hk/en/publications/docs/20100830_conclusion-e.pdf">said</a> 
(page 9) that it will 
delete the last 3 digits of any ID number in future filings before displaying 
them. This is a naive and misguided move. As the Law Society put it in
<a href="http://www.hklawsoc.org.hk/pub_e/news/submissions/20100323e.pdf" target="_blank">their submission</a> 
(page 4):</p>
<blockquote>&quot;Identification numbers should be recorded and disclosed in 
full as it is a unique piece of information for identifying a person; the name 
of a person is not. Persons with identical names are not uncommon. An identification number is not a reliable tool for 
authenticating the identity of a person in electronic or telephone transactions. 
Use of identification number for authentication purpose is itself a misuse and 
should be discouraged.&quot;</blockquote>
<p>The Government, in its conclusions, said &quot;the remaining digits (together with 
the name) should be sufficient to identify the individual persons&quot;. That 
directly contradicts its own consultation paper, which
<a href="http://www.cr.gov.hk/en/publications/docs/122009_ch7-e.pdf" target="_blank">
said</a> (p54) &quot;The option of masking 3 or 4 digits of an identification number 
would not serve the purpose of identifying a person as there are cases of 
persons with the same name having similar identity card numbers&quot;.</p>
<p>The Government proposes to allow any company director to pay a fee to get 
their HKID in old filings partially blacked out - but that doesn't stop people 
accessing the information before the law changes and keeping it. Put simply, you cannot &quot;unpublish&quot; 
something once it is out there.</p>
<p>By treating HKIDs as secrets, the Government is encouraging the use of the 
HKID as an authenticator. Instead, the Government should be publishing full 
HKIDs in its various public notices (just as it does for liquidators), and 
should embark on one of its publicity campaigns to remind people that HKIDs are 
not secrets and should not be used as passwords.</p>
<p><strong>The easiest way to stop the abuse would be to give clear notice that 
in say, two years' time, the full register of all HKIDs and the corresponding 
names will be published</strong>, so that nobody will rely on them as 
authenticators after that. Two years ought to be enough time for all commercial 
users to modify their systems to use more reliable authentication.</p>
<h3>The SSN problem in the USA</h3>
<div class="rightpicbox" style="border:0">
	<img alt="Lee Harvey Oswald's SSN card" src="../images/LHOssn.jpg">
</div>
<p>By encouraging the use of HKIDs as authenticators, the HK Government is on the 
road to increasing abuse and higher levels of fraud in the economy. The USA 
provides a case study in this: since 1936, the
<a href="http://en.wikipedia.org/wiki/Social_Security_number" target="_blank">
Social Security Number</a> (SSN), originally designed just to track social 
security contributions, has become widely used as an identifier for many 
purposes. There's nothing wrong with that in itself, but the problem is that it 
has become misused as an authenticator too, even though for any mature adult, 
dozens or even hundreds of banks, employers, colleges and service providers (and 
any staff of those entities, past or present, with access to the data) know this 
supposed &quot;secret&quot;, and it often appears on public court records and other 
filings.</p>
<p>The US Government has gone the 
wrong way about dealing with the problem - actually 
<a href="http://www.ssa.gov/pubs/10064.html" target="_blank">discouraging disclosure</a> of 
SSNs, thereby encouraging firms to rely on them more as authenticators, even 
though any halfway-competent identity thief knows how to find them. You cannot put the genie back in the bottle. 
Instead, the US Government should adopt a national identity card system with 
biometric authentication and digital certificates, of the type used in an 
increasing number of countries. With such a system, the economic losses of 
identity theft could be dramatically reduced. Instead of just <em>claiming</em> 
an identity with an SSN number, citizens would be able to <em>prove</em> their 
identity.</p>
<h3>Abuse of the HKIC number as an authenticator</h3>
<p>The companies in HK which are abusing the HKID as an authenticator are mostly 
low-ticket service providers such as phone operators, pay TV operators and 
utility companies. They typically ask for your HKID when you call them by 
phone. That's because they don't want to make the necessary investment to set up 
a password or PIN and mail it to you.</p>
<p>It's their choice, but they should not 
claim reliance on the HKID later on if it turns out that they had been speaking to 
an impostor. If they don't have secure authentication, then the customer can't 
be held liable for changes to an account made by an impostor, and the operator 
can be held liable for any damage to the account holder. Taking on that risk is 
a commercial judgement for the operator, weighed against the cost of fraud. 
Ultimately, if a service provider is relying on non-secret information to 
authenticate someone, such as a phone number, address or date of birth then they 
are never going to be 100% certain who they are dealing with.</p>
<h3>HKIDs in IPO refunds</h3>
<p>In another botched bit of policy-making, on 22-Jul-2004, in order to deal 
with the problem of theft of IPO refund cheques from the mail, the SFC
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=04PR129" target="_blank">
announced</a> that banks would print the applicant's HKID or passport numbers on 
the cheques. This was a good move, because it meant that the cheque could only 
be paid into the account of someone who not only used the same name but also had 
the correct ID number associated with his bank account, but the mistake was 
this: with false concerns about data privacy, they decided to mask out the 5th 
and 6th characters of ID numbers, for example, &quot;A123**6&quot;. They treated the ID 
number as a secret rather than an identifier. The unintended consequence was 
that this facilitated multiple applications by people who varied the masked 
digits in their ID number. Theoretically, you 
could make 100 applications that way, or 10 if the registrar was verifying the 
check digit.</p>
<p>So on 23-Mar-2007, the SFC
<a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=07PR39" target="_blank">
announced</a> a changed system in which the two masked digits would be randomly 
selected from IPO to IPO. Of course, there would be no incentive for multiple 
applications if the allotments were just a flat percentage of the application 
size, but they aren't, and that's a story for another day.</p>
<h3>Who is who?</h3>
<p>As readers will know, we run a &quot;Webb-site Who's Who&quot; of important people in 
Hong Kong, accessible from the search box at the top of every page, and 
assembled entirely from public information. We absorb the cost and make it 
freely available in the public interest. One of the ongoing challenges we have 
is avoiding mistaken identity when referring to real people. The Government's 
announcements of appointments to statutory or advisory bodies often don't even 
use the full name of the person they are appointing, making them even harder to 
identify. They might as well announce that they have appointed &quot;Mr Anonymous&quot;. 
This hardly encourages confidence in the accountability of appointed persons for 
their work on these public bodies.</p>
<p>A recent example was the appointment of &quot;Irene Chow&quot; and &quot;Dennis Chan&quot; 
to the Polytechnic Council,
<a href="http://www.gld.gov.hk/egazette/pdf/20101412/egn201014121646.pdf" target="_blank">
as notified in the Gazette</a>, and another is the
<a href="http://www.info.gov.hk/gia/general/201010/20/P201010200225.htm" target="_blank">
appointment</a> of &quot;Alvin Yip&quot; and &quot;Joe Ngai&quot; to museum advisory panels. These 
names have many holders in HK, and the announcement contained no other clues as 
to who these people were. In each case, we had to contact the Government and 
ask for the full names. It would be far more sensible for the Government to 
announce the full name and the identity number of appointees, so that we all 
know exactly who they mean. Again, it is only an identifier, not an 
authenticator.</p>
<p>Similarly, listed companies should use identity card numbers (or passport numbers, for overseas 
directors who do not have a national ID card in their home country) in 
appointment announcements and annual reports. These 
numbers are already filed when they notify the appointment to the Companies 
Registry, but not in the announcement filed with HKEx. Yes, we could get the 
information from the registry (until they delete it), but that involves using 
their ridiculous and unnecessary pay-per-view system. They actually make far 
more profit than the revenue they get from the pay-wall, so they should knock it 
down and allow free open access. Filing fees would still bring them a profit.</p>
<p>With the increasing prevalence of mainland individuals on the boards of listed 
companies, the mistaken identity problem is increasing. For example, we have 
7 of &quot;Li Jun&quot; in our system. Fortunately, the Listing Rules require the age of 
directors to be disclosed, otherwise it would be even harder to distinguish 
them. If the Listing Rules required a national ID number to be published, this 
problem would vanish.</p>
<h3>Smart ID's unused potential</h3>
<p>One of the sad things about the Smart ID card is that, largely through lack 
of Government effort, its full potential has not yet been exploited. All of the &quot;card-face data&quot; - the text 
on the card that anyone can read 
with their eyes, is encrypted on the card's chip so that only authorised 
Government departments can access it using distributed keys. So far, only public 
libraries have the keys. But if anyone can read the data printed on the face of 
the card, then why not allow access to the electronic version of the same data 
when the card is presented to a reader?</p>
<p>Apart from card-face data, there are thumbprint templates in every card's 
chip, and these are used when you go through the fast channels at the mainland 
border or at the airport. But the 
thumbprint system is only used by the Government's immigration department, and 
has not been made available to any other service provider.</p>
<p>The way the thumbprint templates are compared at the airport and border 
controls is &quot;off-card&quot; - you put the card into a reader, take it out again, walk 
through the first gates, and then put your thumb on a reader. If it matches, the 
second gates let you through. If it doesn't match, then alarm bells ring, a big 
metal cage drops on you from the ceiling, you get tasered, and men in boots 
arrive and tell you to take off the silicone mask.</p>
<p>So after you remove your card from the reader, the immigration machine 
must temporarily have your thumbprint template, and the machine then decides 
whether your thumb matches the template. However, the card's CPU is capable of 
making the comparison itself, &quot;on-card&quot;, so that the encrypted templates never 
leave the card. Installing this additional mode would allow the Smart ID system 
to be opened up to commercial users for authentication purposes, without 
exposing the thumbprint templates.</p>
<div class="rightpicbox" style="border:0">
	<img alt="Card and fingerprint reader" src="../images/CardPrint.jpg">
</div>
<p>If the private sector could use the card for authentication, then there 
would be almost zero risk of forged or stolen cards being used to open bank 
accounts, obtain credit, or anything else. The thumbprint 
of the forger or thief using the card simply would not match the template on the 
card. Users could also use card-readers with a built-in thumbprint reader online 
(attached to their PC through a USB port), to authenticate themselves without 
having to remember all their different pin numbers and passwords. You could even 
open a bank account that way - online authentication using digital certificates would prove who you are. 
Using the HKIC and thumbprint would also save banks from issuing so many of 
those little
<a href="http://www.vasco.com/products/digipass/digipass_go_range/digipass_go.aspx" target="_blank">
one-time password generators</a> to achieve 2-factor authentication.</p>
<p>The technology for thumbprint authentication is well established. The 
HK Smart ID Card runs the <a href="http://www.multos.com/" target="_blank">
MULTOS</a> operating system, and applications such as
<a href="http://www.matchoncard.com/" target="_blank">Match-on-Card</a> from
<a href="http://www.precisebiometrics.com/" target="_blank">Precise Biometrics</a> 
will run on it. This application is included in the
<a href="http://www.precisebiometrics.com/filearchive/2/2829/Precise_CaseStudy_ThailandNID_.pdf" target="_blank">
Thai National ID Card</a> and in the
<a href="http://www.precisebiometrics.com/filearchive/4/4492/portugal_eng_casestudy_lr.pdf" target="_blank">
Portuguese Citizens Card</a>. The MULTOS system also has something called
<a href="http://www.multos.com/downloads/marketing/Flyer_MULTOS_for_ID.pdf" target="_blank">
STEP</a> (Secure Trusted Environment Provisioning) which allows the Government 
to provide new or improved applications remotely, so any necessary software 
upgrades can be delivered over the internet or other means. The upgrades are 
digitally signed and the card will only install them if they contain the correct 
signature.</p>
<h3>Still carrying a driving licence</h3>
<p>When the Smart ID was designed, there was also a plan to drop the requirement that we carry driving licence 
cards when we drive, and instead, just present your HKIC and thumb if you are 
stopped by a police officer, to verify your identity. The licensing 
data is stored on back-end government computers, not on the card. So far though, the 
Government has
<a href="http://www.info.gov.hk/gia/general/200801/23/P200801230144.htm" target="_blank">
yet to follow through</a>, and we are still carrying around driving licenses. 
The physical licenses are only really necessary if you need to show proof of 
your driving licence to a car rental company.</p>
<h3>E-purse</h3>
<div class="rightpicbox" style="border:0">
	<img alt="HK coins" src="../images/HKcoins.jpg">
</div>
<p>There was also a plan in 2002 for an &quot;e-purse&quot; on the card - a segregated area which 
would store electronic legal tender issued by the Hong Kong Monetary Authority. 
There is still space reserved on the card for that, but there is no timetable 
for implementing it. The e-purse function would involve cash on the card which 
could be transferred between users just as banknotes and coins are now. It need 
not involve using identities or tracking your spending - the different card 
applications are segregated by internal firewalls.</p>
<p>The cash balance can be kept on the card rather than in 
a back-end database like the Octopus system. Given the recent controversy over 
the way Octopus has been behaving, and the fact that it charges merchants 1% on 
every transaction, there is certainly a case for the HKMA to revisit the 
proposal for electronic money. For one thing, it would reduce the cost and 
security issues associated with the &quot;bearer bills&quot; or bank notes currently in 
circulation, and complaints over what to do with small coins.</p>
<p>The Hong Kong Monetary Authority 
should publish proposals for activating the e-purse function on the cards. 
Nobody would have to use it if they did not want to.</p>
<h3>Global PIN</h3>
<p>There is also a &quot;Global PIN utility&quot; in every Smart ID card, which remains 
unused, but could be activated on a voluntary basis by the card holders. LegCo 
was
<a href="http://www.legco.gov.hk/yr01-02/english/panels/se/papers/se0710cb2-2433-6e.pdf" target="_blank">
briefed</a> (p7-9) on this back in June 2002, and since then it has been quietly 
forgotten. The function could be activated using a 
thumbprint reader, then the user would choose a PIN, which would remain secured 
in the card. The PIN could then be used along with the thumbprint for 3-factor 
authentication: something you have (the card), something you know (the PIN), and 
something you are (the thumbprint).</p>
<p>The Smart ID Card has been
<a href="http://www.info.gov.hk/gia/general/200306/19/0619207.htm" target="_blank">
issued</a> since 23-Jun-2003. While there may have been governmental caution 
over fully utilising the potential at the outset, citizens have grown familiar 
with it over the last 7 years, and accept the convenient use of the thumbprint 
for authentication at immigration control points. They should be more than ready 
to accept wider usage. Meanwhile, the cost of card/fingerprint readers has 
dropped, so the widespread adoption of cheap USB readers for online 
authentication would be more feasible, if the Government would allow it. Given 
the high cost of running over-the-counter transactions with members of the 
public, it would likely save the Government money in the long-run to hand out a 
free card reader to each user and let them conduct their business online from 
their home or office.</p>
<p>Over 7 years after the Smart ID Card was launched, it is time for the 
Government to realise its full potential and economic benefits. In the meantime, 
the Government should stop treating HKIDs as secrets and publish the full HKID 
register of numbers and names, to remove the myth that the numbers are a 
reliable means of authentication.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2322557">HKSAR Companies Registry</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3728">HKSAR Government</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=114">Company & securities law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
				<li><a href="/dbpub/subject.asp?c=145">Government policy - general</a></li>
				
				<li><a href="/dbpub/subject.asp?c=153">Identity cards and numbers</a></li>
				
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
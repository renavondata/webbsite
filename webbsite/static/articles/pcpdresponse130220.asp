
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

<script type="text/javascript">document.title="Response to HK's Privacy Commissioner for Personal Data";</script>

	<div class="summary">Last week's very public intervention by the Government's Privacy Commissioner regarding the Webb-site Who's Who database raises important implications for the freedom in Hong Kong to compile, publish, and even access compilations of public domain data on individuals. Having raised these issues, the PCPD must now clarify where we all stand.</div>

<h2 class="center">Response to HK's Privacy Commissioner for Personal Data<br>
<span class="headlinedate">20 February 2013</span></h2>
<p><a href="../codocs/PCPDresponse130220.pdf">Click here</a> for a digitally-signed PDF version of this letter</p>
<p><u>
By Email<br></u>Allen Ting<br>Chief 
Personal Data Officer, for<br>Privacy 
Commissioner for Personal Data</p>

<p>Dear Commissioner,</p>

<p class="center"><b>Case No. 201302611</b></p>

<p>Thank you for your letter of 15-Feb-2013. In the interests of transparency, given that you 
have already aired your concerns by way of
<a href="https://www.pcpd.org.hk/english/news_events/media_statements/press_20130215.html" target="_blank">media 
statement</a> on that date, we are publishing this reply. We also hereby seek 
your consent to the publication of your letter.</p>

<p>It is unclear from your letter whether it is a preliminary inquiry or you have, 
lacking complaints, 
initiated an "investigation" under
<a href="http://www.hklii.hk/eng/hk/legis/ord/486/" target="_blank">Personal 
Data (Privacy) Ordinance</a> (<b>PDPO</b>) <a href="http://www.hklii.hk/eng/hk/legis/ord/486/s38.html">
s38(b)</a>. We hope that it is the former. We strive to comply with the laws of 
HK, and we respect the importance of the PDPO and your role in protecting 
private data. We are deeply upset and concerned by your letter and its possible 
implications for freedom of publication in, or into, Hong Kong, and we hope to 
work with you to remove those implications.</p>

<p><b>About Webb-site.com (Webb-site)</b></p>

<p>In order to address your enquiries, I will first provide you with context, a brief 
background on Webb-site. I founded Webb-site in 1998 as a non-profit platform 
for the promotion of better corporate and economic governance in Hong Kong. I 
heavily subsidize its running costs, and commit a lot of my time to its 
operation and to the activities around it. There are currently over 20,000 
subscribers to a free newsletter distributed by e-mail.</p>

<p>We do not collect information about our subscribers, but it is clear from
<a href="../webbmail/domainlist.asp" target="_blank">this list</a> 
of the top 100 e-mail domains that they include a broad base of people including 
bankers, lawyers, financial regulators and academics, and also that many people 
use webmail providers.</p>

<p>
Webb-site 
has never charged for access, but it eventually will need to adopt some form of 
revenue model, such as a "<a href="http://en.wikipedia.org/wiki/Freemium" target="_blank">freemium</a>" 
version, if it is to survive and cover its costs without my support. I don't 
anticipate that it will ever be "for profit".</p>

<p>
One of the 
key elements of good governance is transparency and accountability, and the 
information that is needed to achieve that. Over the years, I have added 
functionality to the site which allows users to know more about the people and 
companies of Hong Kong and China, amongst others. There is now a "<a href="/dbpub/">Webb-site 
Who's Who</a>" (<b style="mso-bidi-font-weight:normal">WWW</b>) database, which 
includes all the directors of HK-listed companies since 1990. We also cover 
membership of statutory and advisory boards (in most cases since about 2000), 
licensees under the licensing regime of the SFC since 1-Apr-2003, members of the 
Executive Council, Legislative Council, District Councils, Chief Executive's 
Election Committee and others. There are over 100,000 past and present 
individuals, worldwide, in the database, and about 1.9 million organisations, 
including basic information on all companies registered in HK since 1865.</p>

<p>
WWW 
compiles information about the different roles and interests of a person, for 
example, a director of a company who is a member of a governmental advisory 
body, or a legislator who is a director of a company. By bringing these data 
together in one place, it allows the public (including the media, academics, 
researchers, investors, potential customers of licensed professionals and so on) 
to more easily understand who is running their legislature, companies, advisory 
bodies and so forth, and what their other interests, or those of their 
associates, might be.</p>

<p>
Webb-site 
is also a media organisation - we publish our own articles about corporate and 
economic governance, regulation, current affairs, government policies, civil 
liberties and so on. You can find a wide range of subjects in the Webb-site
<a href="../articles/">archive</a>.</p>

<p>
The 
database also contains links to relevant public documents about a person, such 
as media articles (on Webb-site or other media), court judgments and 
disciplinary press releases. So for example, if a public official is a company 
director and his company has been involved in unauthorised building works 
covered by media, the database would link this information together.</p>

<p>
WWW also 
includes vast amounts of information on listed issuers, their securities and 
their advisers, including the Webb-site Total Returns series
<a href="../articles/WTRlaunch.asp" target="_blank">launched</a> 
last year which allows investors to calculate total returns including 
reinvestment of distributions and other capital adjustments since 1994. We link 
the total returns system to the individual directors to show what the return on 
the stock has been while they were a director, averaged across their 
directorships, and similarly for advisers such as auditors.</p>

<p>
There is no 
"campaign", as you put it, to compile data on directors - we have been compiling 
our database on people and organisations in HK since 1994, initially for our own 
investment research, and eventually made the database available to the public as 
WWW.</p>

<p><b>No 
new data</b></p>

<p>
The 
compilation in WWW saves users a great deal of duplicated effort (in 2012 
Webb-site served about 59.8 million page views, mostly in WWW), but in the case 
of each individual in WWW, the same information could have been compiled by 
anyone worldwide without using WWW. We are not adding to the sum of public 
knowledge. We do not take private data and make it public. Like many other 
online databases, we only use public sources and compile public data.</p>

<p><b>No 
collection from individuals in HK or elsewhere</b></p>

<p>
The web 
server on which the public accesses Webb-site and WWW is in Chicago, USA, and 
although we build and maintain WWW from HK, we or anyone else could have done so 
from anywhere else in the world. Building such a database does not necessitate a 
presence in HK, because it does not involve collecting data from people in HK. 
WWW does not collect data from individuals, whether in HK or elsewhere.</p>
<p><b>
Data sources</b></p>

<p>
All data in 
WWW come from public sources. These include:</p>

<ul>
	<li>Company 
announcements, circulars and annual reports, which contain biographical 
information, including ages, relationships between directors, educational 
background and so on.</li>
	<li>Published 
birth notices, marriage notices and obituaries, online or in newspapers</li>
	<li>Other 
notices published in newspapers or the Gazette</li>
	<li>Published 
court judgments</li>
	<li>Rulings 
from the Insider Dealing Tribunal and Market Misconduct Tribunal</li>
	<li>Media 
releases from various regulators, including disciplinary matters</li>
	<li>Media 
releases from the ICAC</li>
</ul>
<p><b>Policies of WWW</b></p>

<p>
We would 
never include in WWW data which was illegally or accidentally published by 
others. For example, if a bank's database of people's names, credit card numbers 
and balances was leaked, we would not include it in our database.</p>

<p>
We of 
course aim to keep WWW as accurate as possible. If someone informs us of an 
error in the data, or of outdated information, then we correct the error and 
make the update as soon as possible.</p>

<p>
WWW is also 
a historic archive. We don't remove data just because some people find it 
inconvenient, as this would be censoring history and removing information that 
was available to anyone at the time it was published. Nor do newspaper archives 
(online or not) or public libraries redact their archives. The retention of data 
for future access is important for researchers who did not exist or were not 
active when the data were first published. This, by the way, is why we also need 
a law on retention of Government records.</p>
<p><b>
Overseas competition</b></p>

<p>
It would be 
a sad situation for HK if our running WWW from HK was illegal in HK but would be 
legal if done outside HK, as it would mean that the domestic publication 
industry was being placed at a competitive disadvantage to those overseas, and 
it would amount to censorship of HK publication.</p>

<p>
Other 
online media, such as Bloomberg Businessweek, also publish databases containing 
similar personal information. An example on a HK individual
<a href="http://investing.businessweek.com/research/stocks/people/person.asp?personId=8038809&amp;capId=4803422" target="_blank">
is here</a> and our positions page on the same person
<a href="../dbpub/positions.asp?p=17082" target="_blank">is 
here</a>. Sometimes the databases are available for free (as on Webb-site) 
and/or are supported by advertising, and sometimes they require payment.</p>

<p>
Another 
example of online compilations is 
<a href="http://www.wikipedia.org/" target="_blank">Wikipedia</a>, the world's 5th most popular web 
site, which includes biographical pages on some HK individuals and their 
families, including family trees, dates of birth (where publicly known), 
relationships between individuals and so on. Online movie databases also include 
similar information on actors, including HK actors.</p>

<p>
In the case 
of directors and individual substantial (5%) shareholders, some publications 
such as
<a href="http://www.insiders.hk/statistics/latestFilings.php" target="_blank">
Insiders.hk</a> include details of their transactions in shares. Those details 
must be obtained from the website of the Stock Exchange of Hong Kong Limited, 
where they are filed and published as required by law. Some sites also include 
analysis of the emoluments of individual directors, extracted from published 
annual reports and announcements.</p>

<p>
WWW does 
not yet track share-dealings or directors' pay, but we may add those features in 
future, again using public data, if our resources permit and the law allows.</p>
<p><b>
Access from within HK</b></p>

<p>
If access 
within HK to databases like WWW, Bloomberg Businessweek or Wikipedia was 
constrained by the PDPO because its users would be "data users" (see below), 
then it would mean that internet publishers outside HK would have to detect 
users with HK IP addresses and refuse access, or put up extensive warning 
screens about the PDPO, effectively building a firewall around HK. That is one 
step away from the Great Firewall of China. A result of trying to access a site 
containing personal data from within HK might read:</p>

<blockquote>
"Sorry, we 
have detected that you are accessing this site from within Hong Kong. 
Collecting, holding or using (including disclosing or transferring) personal 
data on individual people from this site would make you a "data user" within the 
meaning of Hong Kong's Personal Data (Privacy) Ordinance, and as we cannot be 
sure that the contents of this site are disclosed and will be used for the 
purpose for which they were originally collected (or a directly related 
purpose), we cannot transfer the data to you and we cannot grant you access."</blockquote>

<p><b>The scope of the PDPO</b></p>

<p>
In our 
view, the clear legislative focus of the PDPO is to govern the way in which 
organisations collect private data <u>from</u> individuals and subsequently use 
it. Normally this is in connection with a service provided to the subject, such 
as services provided by doctors, dentists, hospitals, banks, insurers, credit 
card companies, stockbrokers, telecommunications service providers, loyalty card 
schemes and so on. Each of these is undoubtedly a "data user" within the meaning 
of the PDPO. They may also privately share it with partners and agents, subject 
to the provisions of the PDPO. The extent to which this may be done was the 
focus of the
<a href="https://www.pcpd.org.hk/english/publications/files/R10_9866_e.pdf" target="_blank">
Octopus Cards</a> investigation of 2010 and subsequent legislative amendments.</p>

<p>
Quite 
properly, the PDPO imposes restrictions on what is done with private data by 
data users and their private transferees, but if you seek to extend its scope to 
what is done with public data, then you are stepping into the public arena and 
attempting to regulate what publishers can do with public information. It would 
in essence mean that the original publishers of public data would have a 
monopoly on that publication. Note that data (facts) are not creative works, and 
no copyright applies.</p>

<p>
When the 
PCPD seeks to extend the application of PDPO to public data, it should take 
great care not to infringe on the constitutional freedom of speech, the media 
and publication provided by
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html">Article 27 
of the Basic Law</a>.</p>

<p>
The PDPO 
came into operation in 1996. There are provisions in the PDPO, not yet 
activated, for a register of "Data Users" and "Data User Returns" to be filed 
annually to that register with fees payable, collectively known as the "Data 
User Return Scheme" (<b>DURS</b>). You 
consulted the market on activating those provisions in a
<a href="http://www.pcpd.org.hk/english/publications/files/durs_eng.pdf" target="_blank">
consultation paper</a> published together with a
<a href="http://www.pcpd.org.hk/english/infocentre/press_20110707.html">media 
statement</a> on 7-Jul-2011. You proposed a phased approach, initially focussing 
on banking, telecoms, insurance and "organisations with a large database" 
(without proposing a definition of this). You did not state what further 
phase(s) you had in mind. On 28-Nov-2011, you
<a href="https://www.pcpd.org.hk/english/infocentre/press_20111128.html" target="_blank">
responded</a> to a media report regarding opposition to DURS. We can find no 
further mention of it.</p>

<p>
If you 
implement DURS, then we are concerned that your "phases" could extend to cover 
compilers of public data such as WWW, Bloomberg, Reuters or Wikipedia accessible 
in HK. Again this could impinge on freedom of speech, the media and publication 
provided by Article 27 of the Basic Law.</p>

<p><b>
Public data</b></p>

<p>
When a law 
requires that data (personal or not) be filed for the purposes of public 
disclosure, then data filed under that law enter the public domain and cease to 
be private.</p>

<p>
In the 
PDPO, "data user" is defined as:</p>

<blockquote>
"in 
relation to personal data, means a person who...controls the collection, holding, 
processing or use of the data"</blockquote>

<p>
Taken 
literally rather than purposively, this definition would mean that anyone who 
downloads and reads annual reports containing personal data, gazette notices 
appointing liquidators, lists of individual substantial shareholders' dealings, 
or details of directors' remuneration, or compiles it or otherwise uses it, 
would be "collecting", "holding" and "using" data and would therefore be a "data 
user". There is an exemption in
<a href="http://www.hklii.hk/eng/hk/legis/ord/486/s52.html" target="_blank">s52</a> 
for personal data held for "recreational purposes" but we doubt that it would 
extend to this. Rather, the exemption is intended, for example, to allow keeping 
photos of friends taken at parties.</p>

<p>
If such 
persons are "data users" under PDPO and the data are not exempt, then it would 
follow that under PDPO sections
<a href="http://www.hklii.hk/eng/hk/legis/ord/486/s18.html">18</a> and
<a href="http://www.hklii.hk/eng/hk/legis/ord/486/s19.html" target="_blank">19</a>, 
the individual subjects of such data could file "data access requests" with such 
data users, who would be obliged to comply. An individual investor who does his 
homework, with a large collection of annual reports which contain data on 
thousands of individuals, could face an inundation of data access requests. So 
could entities like Bloomberg Businessweek or Wikipedia, with its vast 
collection of data on living individuals in HK, any of whom could file a "data 
access request".</p>

<p>
So a 
literal interpretation would be unreasonable. One must look to the purpose of 
the law and legislative intent. It cannot logically be the legislative intent 
that people who read, download, or compile public data, should fall within the 
definition of "data users" under the PDPO.</p>

<p>
Various 
laws require that data be filed for public disclosure. These include election 
laws, where addresses of candidates are published, the Land Registration 
Ordinance, where contracts for the sale and purchase of property are published, 
the Companies Ordinance, where ID or passport numbers, names and addresses of 
directors, secretaries and liquidators are published, and the Securities and 
Futures Ordinance, where dealings by substantial shareholders and directors are 
published. Some of these require payment to obtain the data, and some do not, 
but in either case, the data are in the public domain once they are published.</p>

<p>
As a 
substantial shareholder myself, I have no right to object to disclosure of my 
interests as required by law, and I do not believe my consent is required for 
someone to take that information and republish it in their own database.</p>

<p><b>The 
Companies Ordinance and the purpose of HKIDs</b></p>

<p>
WWW has not 
yet used directors' data directly from the Companies Registry, on grounds of 
cost. However, we note that under Section 45(1)(b) of the new
<a href="http://www.cr.gov.hk/en/companies_ordinance/docs/full-e.pdf" target="_blank">
Companies Ordinance (Ord. 28 of 2012)</a>, the Registrar must make the register 
available to the public:</p>

<blockquote>
"to 
ascertain the particulars of the company, its directors or other officers, or 
its former directors..."</blockquote>

<p>
The 
particulars referred to include their names, unique identifiers (a HKID or a 
passport number), address, date of appointment and date of cessation.</p>

<p>
The 
Companies Registry once faced the same problem that WWW does, namely 
distinguishing between people with the same name appearing as directors of 
different companies, or in the broader case of WWW, different companies and 
other organisations. We note from the 1998/99
<a href="http://www.cr.gov.hk/en/standing/docs/15anrep.pdf">report</a> of the 
Standing Committee on Company Law Reform, page 14, that the use of HKIDs was 
essential in resolving this problem:</p>

<blockquote>
"Once this 
expanded database is available for public search, it will be possible for the 
computer system to make the necessary cross-referencing with a director's other 
directorships using the director's [HKID number] as the unique identifier or 
passport number if there is no HKID No."</blockquote>

<p>
The purpose 
of including HKIDs in our database is the same purpose for which the Companies 
Registry publishes them, namely, to distinguish between individuals by using a 
unique identifier, rather than a non-unique name. Indeed, we struggle to imagine 
what other purpose the HKID in a database could have - it is a unique 
identifier, but that's all it is. It tells us practically nothing about the 
person.</p>

<p>
Similarly, 
the original purpose of including HKIDs in published legal agreements or Gazette 
Notices of liquidations (which are some of our sources), is again to uniquely 
identify the person involved and avoid mistaken identity. We use those HKIDs for 
the same purpose within WWW. If we did not record the HKID number when it is 
publicly available, then there would be a higher probability of mistaken 
identity by WWW or by its users.</p>

<p>
In building 
and maintaining WWW, we take great steps to try to avoid mistaken identity 
between individuals with similar or congruent names, or multiple identity, where 
we have two or more entries for the same individual who has appeared in 
different places, sometimes with a different or varied name.</p>

<p>
Common 
identifiers, including HKIDs and other national IDs, are important to help us 
distinguish between individuals, and for researchers to look up public 
information on those individuals using the number. Simply knowing the first few 
digits of an HKID would not allow such research to be done, because most 
databases will not allow "wildcards" like "A123XXX" to be searched, and even if 
they did, you could get a thousand matches.</p>

<p>
Currently, 
most of the individuals in our database do not have an HKID attached to them, 
because being not-for-profit, we seek to minimise costs and have not paid to 
access the public data from the Companies Registry or elsewhere.
So instead 
of HKIDs, we normally have to distinguish based on other public data, such as 
their age, or an identifier assigned by another organisation, such as the SFC. 
This is sub-optimal. In the case of ages, two people can have the same name and 
age (particularly when we can only approximate the year of birth). In the case 
of an organisational ID, we cannot know whether a person licensed by one 
regulator is the same as a person who has been licensed by another, because they 
use different identifiers.</p>

<p>
So people 
with histories under one authority might not show up under another authority, 
resulting in multiple identity in WWW. This problem would be solved if all 
regulators used the same set of identifiers in their public databases, a "common 
identifier" such as the HKID.</p>

<p>

Identification is also sometimes impossible when the Government announces a list 
of appointments to a statutory or advisory body without saying anything about 
who the people are - not even an age, or the name of an employer. They might as 
well announce that they have appointed "Mr Anonymous" instead of a "<a href="../dbpub/searchpeople.asp?n1=Wong&amp;n2=Wai%20Man">Wong 
Wai Man</a>" or a "<a href="../dbpub/searchpeople.asp?n1=Zhang&amp;n2=Wei">Zhang 
Wei</a>". Again, use of the HKID would tell the public whom they are referring 
to.</p>

<p>

Incidentally, passport numbers are less useful than national IDs, because they 
change when they expire, so they have to be chained together to establish that 
they relate to the same person. In some countries which lack a national ID 
system, to distinguish between same-name individuals, their companies registry 
discloses the residential address or the date of birth instead. Residential 
addresses are less than ideal, partly because of the personal security issue, 
and partly because sons sometimes bear the same name as their fathers and live 
with them.</p>

<p><b>
Abuse of public data</b></p>

<p>
For the 
reasons stated above, we believe that WWW, similar compilations and their users 
are outside the scope of the PDPO. However, if people take public data, whether 
from the original publication such as the Companies Registry, Gazette or Stock 
Exchange, or from secondary compilations such as WWW, and then abuse those data 
to impersonate, defraud or harass, then there are laws which deal with those 
criminal offences. Such wrong-doers are not "data users" within PDPO, and they 
are outside the scope of your office, but they are criminals, and the Police and 
Department of Justice should handle that. Webb-site of course strongly opposes 
the abuse of such data.</p>

<p>
In your
<a href="http://www.pcpd.org.hk/english/infocentre/press_20130215.htm">media 
statement</a> of 15-Feb-2013, you include a statistic about the number of police 
cases involving "use of ID cards relating to others". These case involve <u>
cards</u>, not ID numbers alone. Some of the cards would be genuine but stolen 
or borrowed, and some fake. We do not see any relevance to the issue at hand, 
namely the compilation of public data by WWW. Anyone could obtain ID numbers 
from the same public sources that we did if they wanted to fake an ID card.</p>

<p>
Another 
form of abuse is to treat the HKID <u>number</u> as a password by phone or 
online, when the card cannot be presented face-to-face. Given the public 
availability of HKIDs in the registries and numerous databases, any service 
provider which authenticates customers on the phone or online by asking for 
their HKID number is reckless and should be liable for any consequent loss. 
Fortunately, for financial transactions, the HKMA now requires not just a real 
password, but
<a href="http://www.hkma.gov.hk/eng/key-functions/banking-stability/internet-banking/two-factor-authentication.shtml" target="_blank">
two-factor authentication</a>, such as a digital certificate, a gadget, or a 
one-time password sent to the user's mobile phone. Similarly, the Communications 
Authority should also require its licensees to use other ways to authenticate 
their customers and not to use HKIDs.</p>

<p>
The wider 
use of HKID numbers as identifiers, and the reversal of Government policy which 
treats them as secrets, would reduce identity fraud, for the simple reason that 
nobody is going to accept a well-known identifier as a password. It would not 
prove who you are.</p>

<p><b>The 
HKID Index</b></p>

<p>
The HKID 
Index, which we launched as part of WWW on 12-Feb-2015, is an index of HKIDs in 
our database which has been compiled from public sources on the internet. 
Contrary to the headline in your
<a href="http://www.pcpd.org.hk/english/infocentre/press_20130215.htm">media 
statement</a> of 15-Feb-2013, <i style="mso-bidi-font-style:normal">"ID numbers 
of 1100 persons deliberately disclosed online"</i>, we did not disclose this 
information. It had already been disclosed in published documents, and one 
cannot disclose that which is already public. The HKID index merely compiled 
this data and provided a hyperlink to each public source. Anyone using Google or 
another search engine could have done the same.</p>

<p>
We hope it 
was clear from the preamble on the original page that we were only using legally 
published data. Also, each ID number contained a hyperlink to the relevant 
source, and each name contained a hyperlink to the "Positions" page in WWW of 
the person concerned, again giving only public data, such as directorships and liquidatorships of various companies, roles on Government committees, awards 
from governments, and so on.</p>

<p>
The HKID 
index allowed us to uniquely identify an individual using something more precise 
than his/her non-unique name, but by itself, it tells the user nothing about 
that individual. HKIDs should not be regarded as personal data. There should be 
a clear distinction between identifiers and personal data.</p>

<p><b>Amendments to the Companies Ordinance</b></p>

<p>
Whether or 
not HKID numbers and home addresses should be published in the Companies 
Registry or the Gazette is a separate issue currently under heated debate, but 
at present, they are. We understand that your office has been a
<a href="http://www.pcpd.org.hk/english/infocentre/press_20130114.html" target="_blank">
key proponent</a> of seeking to partially redact HKIDs in the Companies 
Registry, and we are concerned that this may have been the motivation behind 
your letter, as you have never raised any query about any other public data on 
individuals in WWW before.</p>

<p>
For what it 
is worth, we agree that correspondence addresses should be acceptable as long as 
they are valid for service of legal process. We are in a minority on that 
though, because 61% (so far) of respondents to an
<a href="../vote/result.asp?p=48" target="_blank">opinion poll</a> 
running on Webb-site think residential addresses should remain disclosed while 
31% think a correspondence address is acceptable and 8% are undecided.</p>

<p>
However, an 
overwhelming 95% agree that the HKID numbers should not be restricted, with only 
4% in favour of restriction.</p>

<p>
The 
Companies Registry should demolish its pay-wall, like New Zealand has. A HK$18 
fee won't stop a potential fraudster from getting the data, but it makes it 
expensive for third parties to compile and maintain the data of a large number 
of companies (including dissolved ones), thereby entrenching the monopoly of the 
Companies Registry, and it makes doing business in general more difficult. In 
reality, fraudulent use of the data is very rare, and the public interest in 
transparency outweighs this.</p>

<p><b>
Confirmation sought</b></p>

<p>
In the 
light of the above clarification, we hereby seek your confirmation that the 
compilation of public data on individuals, that is, data which have already been 
legally published, is not within the scope of the PDPO, and that as long as that 
is all that we are doing, Webb-site and the other publications which already 
compile public data are free to proceed. This would lift the threat to the 
freedom of publication in Hong Kong which your inquiry and media statement 
raises. Leaving these issues unresolved would not be in the public interest.</p>

<p>
As a result 
of your intervention, we removed the HKID Index from WWW, and it will not return 
unless you provide that confirmation, but we also need to know that the 
compilation of other public data, such as positions held on boards and 
government bodies, substantial shareholders' dealings, directors' pay, directors 
share-dealings, and other public information on individuals will not face 
further actions from your office. Indeed, the entire publication industry needs 
to know.</p>

<p>
We are most 
keen to remove the uncertainty created by your media statement and letter, both 
for Webb-site and the publication industry as a whole. If you have any 
outstanding concerns, then we would be pleased to meet with you to discuss them.</p>


<p>
Yours 
sincerely,</p>

<p>
David M. 
Webb<br>Founder and 
Publisher, Webb-site.com</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=26250">HKSAR Personal Data (Privacy) Advisory Committee</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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

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

<script type="text/javascript">document.title="SDI breaches go dark at SFC";</script>

	<div class="summary">The SFC has quietly stopped disclosing details of successful prosecutions for failure to disclose shareholdings, including the name of the offender and the company involved. This is important information for investors, and we urge them to reinstate it. We also look at its questionable and inconsistent policy of redacting names from historic press releases.</div>

<h2 class="center">SDI breaches go dark at SFC<br>
<span class="headlinedate">6 October 2009</span></h2>
<p>Hong Kong's <a href="../dbpub/orgdata.asp?p=503">Securities and Futures 
Commission</a> (SFC) has rightly gained some applause lately for its handling of 
various insider dealing and other cases, as well of course as the successful 
intervention against vote-rigging in the PCCW case, which Webb-site.com first
<a href="pccwrig.asp">brought to their attention</a>. We welcome 
this more vigorous approach to the use of its powers, but it is important not to 
lose sight of the more mundane regulatory actions.</p>
<p>In a backward move, the SFC has quietly stopped disclosing details of 
successful prosecutions for breaches of the securities disclosure-of-interests (<strong>SDI</strong>) 
provisions of the Securities and Futures Ordinance, including the name of the 
offender and the company whose shares are involved. This is the law which 
requires directors, chief executives and holders of 5% or more of a listed 
company's shares to disclose their interests.</p>
<p>The last person whose identity we know to have been successfully prosecuted 
for an SDI breach was
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=07PR115">
announced</a> on 5-Jul-07. Apart from announcements, the SFC also produces a 
publication called
<a target="_blank" href="http://www.sfc.hk/sfc/html/EN/speeches/public/enforcement/enforcement.html">Enforcement Reporter</a>, monthly until April 2007 and quarterly since then. The 
last SDI offence to be detailed in there was in
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/enforcement/06/sep_06.pdf">
September 2006</a>. Since then, only summary statistics of the number of cases 
and fines levied have been disclosed, in the quarterly Enforcement Reporter.</p>
<p>The SFC continues to bring these cases to the magistrates court, which is 
technically open to the public, but of course the media (let alone governance web 
sites) cannot economically justify stationing people in the magistracy to report 
the outcomes of these cases. A single prosecution is not &quot;big news&quot; from a 
newspaper point of view, although we believe it is relevant to future investors 
when deciding whether, and at what price, to invest in a company in which a past 
offender is involved. For example, without the past disclosure, you wouldn't 
have known that new Birmingham City Football controller
<a href="../dbpub/positions.asp?p=40632">Carson Yeung Ka Sing</a> once pleaded 
guilty to
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=04PR175">
failing to disclose</a> a 25% stake in another listed company.</p>
<p>The SFC's web site does have a list of
<a target="_blank" href="http://www.sfc.hk/sfc/html/EN/events/prosecutions/prosecutions.html">
pending prosecutions</a> (in all areas, including SDI) which they appear to 
update, deleting the old list, about once per month. This is not the same thing 
as disclosing the outcome of the cases - and anyway, the list is so scant on 
detail that one cannot tell to which company's shares the SDI prosecutions 
relate or even the name of the defendant (unless the defendant is appealing a 
conviction).</p>
<p>The maximum fine on &quot;summary conviction&quot; in the magistrates court is only 
HK$10,000. In theory an offender could be jailed for 6 months, but to our 
knowledge, nobody has been jailed. A case could also be brought &quot;on indictment&quot; 
to the higher courts, in which case the maximum fine is a
<a href="http://www.hklii.org/hk/legis/ord/221/sch8.html">level 6 fine</a> of 
HK$100,000 and 2 years in jail, but again, nobody has been prosecuted that way, 
not least because of convenience: the SFC can go directly to magistrates courts, 
but everything above that has to go via the Department of Justice. Plead guilty, 
and you will get a magistrate's fine of the same order of magnitude as the
<a target="_blank" href="http://www.fehd.gov.hk/pleasant_environment/library/1500/1500_littering.pdf">
$1,500 penalty for littering</a>.</p>
<p>So for a substantial shareholder holding a stake over 5% which should have 
been disclosed, with millions of dollars invested, or for a well-paid director, 
the maximum $10,000 fine itself is not a big deterrent. Oh, and if you are an 
overseas investor, the chance of being prosecuted goes down substantially, because 
the SFC needs a court order to <span lang="en-gb"></span>serve a summons outside the HK jurisdiction in the 
first place. The real deterrent used to be having your name disclosed. Why is 
disclosure important? Here are three good reasons:</p>
<ul>
	<li>If the offender is itself a listed company, then it points to a failure 
	of compliance and internal controls in that company which investors should 
	be aware of.</li>
	<li>If the offender is a director or controlling shareholder of this or 
	another company, then it puts investors on notice that the offender is 
	either carelessly or intentionally non-compliant with disclosure obligations.</li>
	<li>In either case, in the absence of any mitigating factors, it puts 
	investors on notice that the offending company, director or controlling 
	shareholder is more likely than average to treat other corporate governance 
	obligations the same way.</li>
</ul>
<p>This change of disclosure policy by the SFC roughly coincides with the 
appointment, effective 25-Sep-06, of Mark Steward as its Executive Director of 
Enforcement. To be sure, he has changed some things for the better, but this is 
not one of them. Webb-site.com asked the SFC for a list of all successful 
prosecutions, with the names of offenders and the companies involved, since the 
SFC &quot;went dark&quot; on these disclosures, but was refused. <strong>We urge 
the SFC to revert to its old disclosure policy and at least publish the details 
of successful prosecutions in the Enforcement Reporter, if not in real time.</strong></p>
<p>In past articles we have pointed to a number of cases in which the beneficial 
owners of shell companies involved in share placings, convertible bond issues, 
or acquisitions have not been disclosed, and where the owners have failed to 
file disclosures of their interests in the underlying shares. If those persons 
are ever prosecuted for their non-disclosure, we still won't know who they were. 
Such a low-key approach is hardly likely to incentivise disclosure.</p>
<h3>Footnote: the Rehab Ordinance</h3>
<p>Diligent browsers of the SFC web site will also notice that a couple of years 
ago the SFC started redacting or &quot;unpublishing&quot; names in its archived press 
releases (like
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=06PR175">
this one</a>) on the grounds that to leave them on the web site untouched 
would amount to a breach of the
<a target="_blank" href="http://www.hklii.org/hk/legis/en/ord/297/index.html">
Rehabilitation of Offenders Ordinance</a>. This is the law which says that after 
3 years have passed since a person has been fined $10,000 or less, or jailed for 
3 months or less, then any person who has custody of or access to records kept 
by a &quot;public officer&quot; shall not disclose any information on the convictions 
otherwise than in the course of his duties as a public officer.</p>
<p>That law was probably written years before the web came into existence, or 
even before the earlier advent of searchable electronic news archives (which 
used to be available on dial-up systems). The SFC's (or its lawyer's) interpretation 
of this law is in our 
view overly conservative, as well as inconsistent. The press releases archived 
on their site are not republished every day. The site is not a portal to any 
internal records kept by the SFC. No positive action is taken by the SFC to 
publish the press releases after the day they are released, so it is not clear 
what act of disclosure by a public officer is taking place. As for consistency, 
the information can also be found 
in other documents on the SFC site. For example, the names replaced with {X} in
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=06PR175">
this press release</a> can be found in the
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/enforcement/06/sep_06.pdf">
SFC Enforcement Reporter</a> of Sep-06. What are they going to do, delete the 
Enforcement Reporter and trash their archives? If the law applies at all, then 
why does it apply to HTML but 
not PDF files? They are both just historic files on a server, like documents in 
a library. Will public libraries redact any copies of the press releases they 
hold? Of course not.</p>
<p>We say leave the information out there and let investors decide for 
themselves whether it is relevant to their decisions. It really isn't practical 
to try to remove information from the public domain once it is published. The 
information they are deleting can be found elsewhere in online news archives, if 
the media reported it. There are also uncensored copies of the press releases on 
the web, including Webb-site.com, and probably in public and private libraries 
around the city. You can't put the genie back in the bottle. 
Investors and others can judge for themselves how relevant it is, which will 
vary from case to case.</p>
<h3>Coming soon...</h3>
<p>This approach to &quot;unpublication&quot; is not unique to the SFC - we've seen it in 
other Government-related disclosures, where they put information &quot;on 
display&quot; and make copies available, trying to claim the virtues of transparency and 
accountability, and then remove it, as if nobody has recorded it or downloaded 
it for posterity. Indeed, in an effort to prevent that, there are still a lot of 
Government &quot;public&quot; registers which are not published on the government web 
sites, include the registers of political donations, which we
<a href="../pages/electiondisclosures.asp">captured and published</a> on 
Webb-site.com. We'll deal with another one of those registers, involving the 
employment of former Senior Civil Servants, in a forthcoming article.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=126">Directors' sharedealings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=127">Disclosure of interests - securities</a></li>
				
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
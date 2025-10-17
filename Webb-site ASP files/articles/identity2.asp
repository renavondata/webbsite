
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

<script type="text/javascript">document.title="HKIDs and Government secrecy";</script>

	<div class="summary">Webb-site calls on Government to abandon plans to restrict access to HKIDs, and instead to promote their use as unique identifiers of individuals and eliminate their misuse as authenticators. A media exemption would imply media controls. We launch an index of HKIDs which are already on the web. The Companies Registry and Land Registry should tear down the pay-wall and provide open online access to all documents.</div>

<h2 class="center">HKIDs and Government secrecy<br>
<span class="headlinedate">12 February 2013</span></h2>
<div class="pollbox">
	
	<ul class="navlist">
		<li id="livebutton">Poll</li>
		<li><a target="_blank" href='../vote/result.asp?p=48'>Results</a></li>
		<li><a href="../vote/">More polls</a></li>
		
			<li><a href="../webbmail/login.asp">Log in</a></li>
			<li><a href="../webbmail/join.asp">Sign up</a></li>
		
	</ul>
	<div class="clear"></div>
	<h3><b>Poll: HKIDs and Government</b></h3>
	<p><b>Please <a href='../webbmail/login.asp'>log in</a> to see how you voted, if you did. </b></p>
	
			<p>	
			Poll closed: 18:00:00 27-Feb-2013
			</p>
		
		<script type="text/javascript">
		function NoEnter(e)
		{
			var key;
			if(window.event)
				key = window.event.keyCode;     //IE
			else
				key = e.which;     //firefox
			if(key == 13)
				return false;
			else
			return true;
		}
		</script>
		<form method="post" action="/articles/identity2.asp">
			<hr>
			<p class=''>1. Should Government restrict access to HKID numbers of directors?</p><p class=''><select name='201' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>2. Should Government allow a correspondence address rather than residential address of a director?</p><p class=''><select name='202' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>3. Should the pay-wall on the Companies Registry be removed?</p><p class=''><select name='203' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>4. Should the pay-wall on the Land Registry be removed?</p><p class=''><select name='204' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>5. Should businesses be prohibited from using the HKID number as a password?</p><p class=''><select name='205' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>6. Do you have an HKID number?</p><p class=''><select name='207' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option></select></p><p class=''>7. Approximately how many organisations have your HKID number in their records?</p><p class=''><select name='206' class=''><option value=''>Select</option><option value='129'>Not applicable</option><option value='130'>0-9</option><option value='131'>10-19</option><option value='132'>20-29</option><option value='133'>30-49</option><option value='134'>50-99</option><option value='135'>100+</option></select></p><p class=''>8. Does anyone else in HK have the same name on their ID card as you?</p><p class=''><select name='208' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='136'>Probably</option><option value='137'>Probably not</option><option value='138'>Almost certainly not</option></select></p>
			<p>
			
			</p>
		</form>
	
</div>
<p>There's been a lot of attention recently on the proposed implementation of 
changes to the Companies Ordinance to allow the Companies Registry (<strong>CR</strong>) to withhold 
full HKID or passport numbers and &quot;usual residential&quot; addresses from public 
inspection at the registry.</p>
<p>Webb-site first <a href="identity.asp">wrote about the HKID issue</a> 
back in 2010, when the Financial Services and Treasury Bureau had issued conclusions from its consultation 
on a draft Bill. The ordinance was amended last summer before the end of the 
2007-12 session. The full ordinance can be
<a href="http://www.cr.gov.hk/en/companies_ordinance/docs/full-e.pdf" target="_blank">
found here</a>. Now we have a new LegCo and the Government needs subsidiary 
legislation to map out the details, without which, this Division of the 
ordinance (Division 7 of Part 2, Sections 47-60) will presumably not be brought 
into effect. So on 2-Nov-2012 the Government published a
<a href="http://www.cr.gov.hk/en/publications/docs/112012_Consultation_full-e.pdf" target="_blank">
consultation</a> on the Companies (Residential Addresses and Identification 
Numbers) Regulation (<strong>CRAINR</strong>), amongst other things. The 
consultation closed on 14-Dec-2012, and conclusions have not yet been published.</p>
<p>So we still have a chance to stop it. Media articles in the last few months on the 
assets of families of state leaders (including
<a href="../dbpub/natarts.asp?p=11640">Xi Jinping</a>,
<a href="../dbpub/natarts.asp?p=16894">Wen Jiabao</a> and the
<a href="../dbpub/artlinks.asp?s=7546" target="_blank">8 immortals</a>) were 
facilitated by access to the CR, and that has brought this issue to global 
attention. Closer to home, sub-divided apartments held by a company owned by a 
HK official's wife have also been in the news. But there are much broader issues 
at stake, including the entire approach of the HK Government to access to 
information.</p>
<h3>HKIDs should be seen, not hidden</h3>
<p>In our 2010 <a href="identity.asp">article</a>, we opposed the proposal to blank out 
the last 3 digits of ID numbers, because it makes it impossible to know for sure 
who you are dealing with. 1,000 people could have the same partial HKID, and in some cases, they will have the same name. Family names in 
HK, like Scottish clans, don't have a lot of variety, particularly when Romanised (there is a 
many-to-one relationship between Chinese characters and English words). Take out 
the Chans, Cheungs, Leungs and Wongs and you would be missing more than one 
third (24/70) of the <a href="../dbpub/officers.asp?p=6610&amp;hide=Y">
Legislative Council</a>. In mainland PRC, the top 3 family names
<a href="http://en.wikipedia.org/wiki/List_of_common_Chinese_surnames" target="_blank">
cover 21%</a> of the population, and many of them have only two characters in 
their name, such as &quot;Li Wei&quot;, of whom we currently have 16 in
<a href="../dbpub/searchpeople.asp">Webb-site Who's Who</a> (<strong>WWW</strong>), 
the leading public database on HK people.</p>
<p>Like any 
other culture, some given names are also quite popular. For example, we currently have 19 &quot;<a href="../dbpub/searchpeople.asp?n1=Chan&amp;n2=Chi%20Keung" target="_blank">Chan 
Chi Keung</a>&quot;s in WWW, of which 9 have no English given name, so they appear 
identical. The only way we can distinguish between them is using an identifier 
from another source, such as the SFC, where each licensee has a separate code. 
That doesn't help much though, because the same person could have been licensed 
with the HKMA, MPFA or insurance self-regulators, but he would have a 
different license number at each regulator. He might also have a disciplinary 
history as a licensed estate agent, a solicitor, or a certified public 
accountant. If all regulators published HKID numbers, then we would know whether 
we are looking at the same person. Without HKIDs, we are often unable to connect the dots and know 
for sure whether it is the same person or a different person with the same name.</p>
<p>As the Law Society put it in
<a href="http://www.hklawsoc.org.hk/pub_e/news/submissions/20100323e.pdf" target="_blank">their submission 
in 2010</a> 
(page 4):</p>
<blockquote>&quot;Identification numbers should be recorded and disclosed in 
full as it is a unique piece of information for identifying a person; the name 
of a person is not. Persons with identical names are not uncommon. An identification number is not a reliable tool for 
authenticating the identity of a person in electronic or telephone transactions. 
Use of identification number for authentication purpose is itself a misuse and 
should be discouraged.&quot;</blockquote>
<p>The Government, in its 
<a href="http://www.cr.gov.hk/en/publications/docs/20100830_conclusion-e.pdf" target="_blank">conclusions 
paper</a>, said &quot;the remaining digits (together with 
the name) should be sufficient to identify the individual persons&quot;. That 
directly contradicts the Government's own 
<a href="http://www.cr.gov.hk/en/publications/docs/122009_ch7-e.pdf" target="_blank">consultation paper</a> 
of 17-Dec-2009, which said (p54):</p>
<blockquote>&quot;The option of masking 3 or 4 digits of an identification number 
would not serve the purpose of identifying a person as there are cases of 
persons with the same name having similar identity card numbers&quot;.</blockquote>
<p>By treating HKIDs as secrets, the Government is encouraging the misuse of the 
HKID as an <em>authenticator</em> (particularly by phone) rather than an <em>
identifier</em>, and thereby incentivising 
identity fraud. The Government should be doing the opposite, and requiring the 
service providers it regulates, such as telecoms and pay-TV providers, to find 
other ways to authenticate their customers.</p>
<h3>The HKID index</h3>
<p>The easiest way to stop abuse of HKIDs as authenticators would be to give clear notice that 
in say, two years' time, the full register of all HKIDs and the corresponding 
names will be published, so that nobody will rely on them as 
authenticators. Two years ought to be enough time for all commercial 
users to modify their systems to use more reliable authentication when dealing 
with customers by phone.</p>
<p>The Government should embark on a publicity campaign to remind people that HKIDs are 
not secrets and should not be used as authenticators. Through the Communications 
Authority, the HKMA and the SFC, Government can also require regulated service 
providers not to use ID numbers to authenticate people by phone or online. If 
they need to authenticate a customer by phone, they should ask the customer 
something that only she and the service provider would know, such as a 
pre-arranged password, or the balance on the last bill.</p>
<p>The Government should amend the Privacy Ordinance to make clear (if it isn't 
already) that an ID number is not a piece of personal data, it is an identifier. 
It does not in itself contain material personal information <u>
about</u> a person, it merely identifies them.</p>
<p>The Government should also publish full HKID numbers alongside the name of 
any person it appoints to a statutory or advisory body. These posts are like 
directorships of companies, and the public has a right to know exactly who has been 
appointed, rather than just a common name (see
<a href="http://www.gld.gov.hk/egazette/pdf/20131704/egn20131704389.pdf" target="_blank">
this notice</a>, for example - who is Wong Wai Man, or Chan Chi Hung?). The 
HKIDs can then be used at the 
CR, Land Registry and other public sources to know more about the person and check on any conflicts of 
interest. Regulators, likewise, should use HKID numbers in their online 
directories of licensees and in disciplinary matters. That includes the HKICPA, 
HKMA, SFC, MPFA, Medical Council, Estate Agents Authority and any other licensor 
you can think of.</p>
<p>We published our founder's ID number, P135143(9) back in 2010, to prove that 
this is not in any way a secret. <strong>Today, we are launching an </strong>
<a href="../dbpub/HKIDindex.asp" target="_blank"><strong>index of HKIDs</strong></a><strong> 
which are (or have been) available on the web</strong>, not behind any pay-wall, 
and not as a result of any security breach<strong>. </strong>There are over 
1,100 people in that index, mostly still alive, including some well-known 
billionaires whose HKID numbers can readily be found online. Interestingly, the 
most popular prefix is &quot;D&quot;, and the rarest is &quot;Y&quot;. Judging from the names, it 
seems that persons born outside HK are more likely to have a P or an R 
(including some mainland arrivals), and the XA, XD, XE and XG series are almost 
exclusively non-Chinese but have been here for decades - possibly all before the 
handover, so perhaps those series are no longer issued.</p>
<p>We have compiled this index without (yet) paying to obtain data in the CR - 
but we reserve the right to do so. Filings with the CR are public filings, and 
the data are provided for the purposes of making them available for public 
inspection and identifying who the directors of companies are. You don't have to be a company director if you don't want to, but if 
you are, then the public has a right to know exactly who you are. You direct 
your company with its privilege of limited liability. The only 
reason that the CR data are not used more widely is the pay-wall that stands in the 
way.</p>
<h3>Tear down that wall</h3>
<p>The CR has a monopoly on filings from companies registered in HK. The Land 
Registry has a monopoly on the registration of real estate transactions. Each 
operates behind a pay wall, a pay-per-view document scheme which harks back to 
the days when providing copies of documents from the registries actually cost 
money, and involved counter service staff, acetate microfiches and reading rooms 
to enlarge, view and print said microfiches. In the 21st century though, the 
registries receive a lot of documents electronically, and those which are on 
paper are promptly scanned and digitised for internal records. The incremental 
cost of making all those files available for public search is nearly zero - just 
a matter of local bandwidth and software maintenance.</p>
<p>So there is no &quot;user pays&quot; excuse here. The greater public interest would be 
served by demolishing the pay-wall and opening the registries, and all their 
documents, to public access. In the words of Ronald Reagan in Berlin, &quot;<a href="http://www.youtube.com/watch?v=WjWDrTXMgF8" target="_blank">tear 
down this wall</a>&quot;. A good example of this open access is the
<a href="http://www.business.govt.nz/companies" target="_blank">New Zealand 
Companies Registry</a>, where all documents are online. They do have the 
complication that NZ has no national ID number scheme, so instead they 
distinguish between &quot;John Smith&quot;s by using their residential addresses. Another 
option would be to use dates of birth, to almost eliminate duplicates.</p>
<p>The CR makes a monopolistic profit.
<a href="http://www.cr.gov.hk/docs/ar/2012/11.pdf" target="_blank">Accounts</a> 
for the year to 31-Mar-2012 show that the CR had turnover of HK$483.2m and 
pre-tax profit of $257.6m, or 53% of turnover. Only $61.1m of turnover came from 
search and copying fees, so it would still have made a huge profit even if it 
charged nothing for searches. Incorporation fees, annual filing fees, and 
registration of charges (mortgages) amounted to $384.0m of turnover. So in fact 
the CR should cut those fees as well.</p>
<p>Meanwhile at the Land Registry,
<a href="http://www.landreg.gov.hk/ar11-12/pdf/13.pdf" target="_blank">accounts</a> 
for the year to 31-Mar-2012 show turnover of $426.8m, sharply reduced because of 
Special Stamp Duty which reduced transactions and filings, but still making a 
profit before tax of $116.5m, which was more than the search fees of $82.2m. In 
the previous year, turnover was $573.4m, with profit before tax of $242.2m and 
search fees of $100.9m. So in both years, the Land Registry would have made a 
profit without charging search fees.</p>
<p>Both registries are essential Government services and are natural monopolies. 
They should not be run for-profit but to cover their costs, including 
amortisation of infrastructure. The Basic Law calls for the Government to 
balance its budget, not rack up surpluses by abusing natural monopolies.</p>
<p>Regardless of that, the public interest calls for opening the registries and 
all their documents to free online search. For example, the controversy over the 
defaulted sales of luxury flats at <a href="conduitroad.asp">39 
Conduit Road</a> would have been avoided if it had been obvious, from looking at 
the online sale and purchase agreements, that each sale was to a shell company 
with only a 5% deposit. In effect, those shells were call options - if the value 
of the flats went down more than 5%, then the owner of the shell would walk away 
from the deal, and if not, then they would complete the purchase. The buyers and 
the developer knew that, but the public did not. Journalists had to pay to see 
each and every transaction agreement before they could build the picture.</p>
<h3>Mistaken identity</h3>
<p>Similarly, researching the assets and potential conflicts of interest by 
government officials, both from the mainland and HK, involves paying to see 
records of each company and property they are involved with - if you can 
identify them in the first place. In a first-hand example of why the use of 
HKIDs would improve transparency and reduce mistaken identity, we can tell you 
that on 18-Apr-2007, Ming Pao
<a href="http://www.mpfinance.com/htm/Finance/20070516/News/ek1_ek1c1.htm" target="_blank">
reported</a> that Webb-site founder David Webb had sold a house in Mount Kellett 
Road for HK$75m, upon which he had made a profit of $12m. Nice story - but it 
wasn't us. The newspaper didn't bother to call us - they assumed that the 
property agents feeding them the story had got the correct David Webb. To our 
knowledge, there are at least three &quot;David Webb&quot;s in Hong Kong. Incidentally, 
the same house was
<a href="http://www.hkej.com/template/property/php/detail_print.php?title_id=7231" target="_blank">
resold</a> in 2012 for HK$155m. If only we had held on to the house we didn't 
own to start with!</p>
<p>Now, if this story had been about the secret assets of a Chinese 
politburo member or a HK Chief Executive, he would probably have sued the 
newspaper for defamation. The risk of such mistaken identity is enough to 
intimidate the media into not reporting - there is a rule of thumb: &quot;if in doubt, 
leave it out&quot;.</p>
<h3>A media exemption would mean media controls</h3>
<p>On 29-Jan-2013, after a meeting with Government, the
<a href="../dbpub/orgdata.asp?p=317610">HK News Executives Association</a> said 
that the Government had
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=130603&amp;con_type=1" target="_blank">suggested</a> an exemption in the law for journalists. The fact that the Government even 
suggested such an exemption shows how little they have thought about the Basic 
Law issues at stake here. Yet they have clearly been planning it in some detail 
- each &quot;media organisation&quot; would be given its own password to access the HKIDs 
and residential addresses, but only if it was used for the purpose of news 
reporting. It is a blatant attempt to &quot;buy off&quot; opposition from the media, and 
we are glad that the Hong Kong Journalists Association has rejected this move 
outright.</p>
<p>A media exemption is completely unacceptable. Unlike in mainland China, where 
the Government controls all the media and censors free speech, Hong Kong has 
&quot;freedom of speech, of the press and of publication&quot; guaranteed by
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html" target="_blank">
Article 28 of the Basic Law</a>. There is no licensing scheme which says who is 
a journalist and who is not, and what is a media organisation and what is not, 
nor should there be (although there is still the antiquated
<a href="http://www.hklii.hk/eng/hk/legis/ord/268/" target="_blank">Registration 
of Local Newspapers Ordinance</a>). 
The grant of any privileged access would imply a licensing 
or recognition scheme which could become a tool to suppress the media. The 
ability to withdraw privileged access to the registries by revoking recognition 
of a journalist or organisation would mean that the Government had the ability 
to impede freedom of the media. Bloggers, freelance investigative journalists, 
and operators of independent sites like Webb-site, would have a particularly 
tough time. The Government could simply refuse to recognise someone as a 
&quot;journalist&quot; or &quot;media&quot;. Members of the public who wanted to conduct their own 
research would be locked out.</p>
<p>The situation is bad enough already, in that the Government already releases 
some information via a
<a href="http://www.isdnews.gov.hk/gnmissub/" target="_blank">Government News &amp; 
Media Information System</a> (<strong>GNMIS</strong>) that is not open to the 
general public, only to organisations lucky enough to receive a password. You 
will notice a complete absence of any &quot;register here&quot; button on the site that 
would allow you to sign up. GNMIS is a little known fact - you don't see regular 
media ever mentioning it, perhaps because they fear losing access. We believe 
the system is used, amongst other things, to give notice of media conferences at 
which new policies will be announced.</p>
<p>People working in private banks or IPO sponsors, seeking to do due diligence 
on their potential clients, would also have difficulty, as would businesses 
seeking to know more about their customers or suppliers. The result would be 
more money-laundering, fraud, corruption and conflicts of interest than is 
presently the case. So what next - will the Government propose exemption for all 
these categories? Who does that leave?</p>
<h3>Addresses</h3>
<p>We have sympathy with the proposal to allow display of a correspondence 
address rather than a &quot;usual residential address&quot;. As long as a person has a 
designated correspondence address at which they can be sued (whether or not they 
are physically at that address) then we see no reason why that address should 
also be his home. It could even be a P.O. Box, because that is little different 
from the &quot;virtual office&quot; addresses that thousands of private companies use. The 
law can be clarified that the designated address is valid for any legal 
proceedings, and if the person then does not check his mail and has a judgment 
awarded against him in his absence, that is his choice.</p>
<p>Although there is very little, if any, evidence that the disclosure of 
residential addresses has been abused, it can be a personal security issue. 
People conducting investigative journalism might not like the idea that the 
people they criticise can find out where they and their children sleep at 
night. If you are a director of a news organisation or association, or a 
freelancer who directs your own company, then your residential address should be 
in the CR. That risk in turn might work against the public interest in a free 
and incisive media. If you are a director of a private bank who has just 
declined to open an account for a suspected triad, then your address is in the 
CR too.</p>
<p>However, we note that residential addresses are also available in other 
public documents. For example, the (mostly residential) addresses of candidates 
for election to the Election Committee, District Councils and the Legislative 
Council are published in the Gazette. There you will find the addresses of the
<a href="http://www.gld.gov.hk/egazette/pdf/20111549e/egn20111549855.pdf" target="_blank">
CPPCC nominees</a> to the Election Committee in 2011, including Leung Chun Ying, 
and here are the addresses of
<a href="http://www.gld.gov.hk/egazette/pdf/20111549e/egn20111549832.pdf" target="_blank">
property tycoons</a>. The full list of nominations is
<a href="http://www.eac.gov.hk/en/ecse/ecse_2011_notices_nomination.htm" target="_blank">
here</a>.</p>
<h3>What the Government should do</h3>
<ol>
	<li>Abandon the proposal to restrict access to IDs in the CR.</li>
	<li>Amend the draft subsidiary legislation to focus only on correspondence 
	addresses, and simultaneously table amendments to repeal the provisions of 
	the new Companies Ordinance relating to IDs.</li>
	<li>Adopt a Government-wide policy of promoting the use of HKIDs to uniquely 
	identify a person, including in appointments to Government boards and 
	committees.</li>
	<li>Require the HKMA, SFC, Estate Agents Authority, Medical Council, Dental 
	Council and other regulators to include HKID numbers in public 
	registers of licensees, and require that regulated service providers cannot use 
	HKIDs to authenticate individuals by telephone.</li>
	<li>Amend the privacy ordinance to clarify that identifiers, including HKIDs 
	and passport numbers, are not personal data.</li>
	<li>Tear down the pay-walls and open the Companies Registry and Land 
	Registry to free online access for all data and documents.</li>
</ol>
<p>If the Government does all of the above, then it will promote HK as a fairer, 
more transparent and open economy, and at the same time reduce fraud, corruption 
and money-laundering.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2322557">HKSAR Companies Registry</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2533678">HKSAR Land Registry</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=114">Company & securities law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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
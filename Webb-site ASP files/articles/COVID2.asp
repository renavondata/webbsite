
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

<script type="text/javascript">document.title="COVID-19: where do we go from here?";</script>

	<div class="summary">HK is essentially clean: data indicate the latest community transmission was 24 days ago. A potential travel network of clean quarantined countries is emerging, but many others are pursuing a mitigation approach, flattening the curve but leading to the likely premature death of 0.5% of their populations unless interrupted by a vaccine or treatment. We find lessons to be learned from HK's early mistakes. HK should maintain its quarantine and its people should now be free to enjoy their city.</div>

<h2 class="center">COVID-19: where do we go from here?<br>
<span class="headlinedate">27 April 2020</span></h2>
<p>Without a vaccine or effective treatment, there are in essence two alternate approaches 
that countries or bounded territories can take to an infectious disease like 
COVID-19.</p>
<ul>
	<li>The elimination approach, to achieve complete elimination within 
	quarantined borders, contact-tracing each infection to isolate and terminate 
	chains of transmission, and dealing with occasional leaks of the borders in 
	the same way as and when they occur; or</li>
	<li>The mitigation approach, temporarily imposing harsh restrictions on 
	civil liberties to reduce transmission while building healthcare capacity, 
	then relaxing restrictions and managing the load placed upon that system, 
	and possibly repeating the cycle of restrictions until most of the 
	susceptible people are gone or have acquired immunity, if immunity can be 
	acquired.</li>
</ul>
<p>If and when infections have been reduced to traceable levels then a 
country can switch from mitigation to elimination, hunting down the remaining 
transmission chains. Some countries simply won't be able to afford the economic 
cost of elimination, and even mitigation comes at enormous economic cost to them.</p>
<p>As the world moves into at least it's fifth month of COVID-19, choices of 
approaches are becoming clear. Spain, still registering around 2,000 cases per 
day, is starting to relax restrictions, as is Germany. European countries 
generally are speaking in terms of "control" rather than elimination, so most of 
the contiguous EU appears headed that way. Exceptions may include
<a href="https://www.covid.is/data" target="_blank">Iceland</a>, which has gone with wide 
testing,
<a href="https://www.icelandreview.com/politics/14-day-quarantine-for-tourists-arriving-in-iceland/" target="_blank">
quarantine</a> and has already reduced to near-zero daily cases.</p>
<p>The UK, at around 5,000 confirmed cases per day (but without much 
community testing) still talks in terms of "flattening the curve", not 
elimination. The USA, racking up over 30,000 confirmed cases per day, remains a 
patchwork of 50 different state systems (48 contiguous, plus DC) and it seems 
very unlikely that they will reach elimination as various social controls are 
already beginning to relax.</p>
<p>That will leave those countries/territories who have achieved internal 
elimination with a difficult choice:</p>
<ul>
	<li>Maintain strict border quarantine, but gradually form a union of "clean" 
	territories which do likewise, allowing travel between them without 
	quarantine. We propose this could be named <strong>QUIET</strong> - the 
	Quarantined Union for International Exempt Travel; or</li>
	<li>Surrender their gains and join the network of mitigating countries, 
	adopting or reverting to similar levels of infection and death, with 
	stop-start intervention in civil liberties to flatten the curve.</li>
</ul>
<p>Much will depend on the relative sizes of the combined economies and 
populations in the clean and contaminated world. Several countries are now 
getting close to elimination - notably on 26-Apr
<a href="https://www.health.gov.au/news/health-alerts/novel-coronavirus-2019-ncov-health-alert/coronavirus-covid-19-current-situation-and-case-numbers" target="_blank">
Australia</a> had just 16 new cases and
<a href="https://www.health.govt.nz/our-work/diseases-and-conditions/covid-19-novel-coronavirus/covid-19-current-situation/covid-19-current-cases#transmission" target="_blank">
New Zealand</a> had 4. Both have closed their borders to all but returning 
residents and both have mandatory government quarantine. On the same day, South 
Korea had just 10 new cases. Arguably, mainland China is getting close to zero 
too (but see below).</p>
<p>However, maintaining quarantine on arrivals from everywhere outside the clean 
(or QUIET) area comes at a sharp economic price for inbound tourism and business 
travel. It also comes at a social cost, because citizens are in effect trapped 
in the clean zone. Any time they travel outside it, they will have to be 
quarantined on return, so a brief vacation outside the clean area becomes 
impractical.</p>
<h3>The human cost of the mitigation approach</h3>
<p>A recent
<a href="https://www.reuters.com/article/us-health-coronavirus-usa-new-york/new-york-survey-suggests-nearly-14-in-state-may-have-coronavirus-antibodies-idUSKCN2252WN" target="_blank">
antibody survey</a> of 3,000 people in New York State indicated that about 14% 
had been infected and a fatality rate of between 0.5% and 1% amongst infections, 
allowing for uncounted deaths outside hospitals and for those who have not yet 
died. A stop-start approach to flatten the curve will avoid some deaths that 
would come from an overloaded system, but doesn't otherwise change the outcome 
unless a viable vaccine or treatment interrupts the process.</p>
<p>Taking a mid-point in the death toll and assuming some acquired 
immunity and/or attenuation of the virus (the stronger strains kill their hosts, 
the weaker strains spread more easily), we can still expect about 70% infection 
and 0.5% of the population of mitigating countries to die prematurely. Most 
fatalities are old and/or with comorbidities. In HK's case, that 0.5% would be 
about 38,000 premature deaths, in the UK, about 330,000, and in the USA about 
1.6 million.</p>
<h3>Mainland China</h3>
<p>Mainland China currently prohibits entry to non-citizens,
<a href="https://www.scmp.com/print/news/china/society/article/3077613/china-says-its-temporary-travel-ban-foreigners-responsible-and" target="_blank">
even prohibiting</a> foreigners holding visas or residence permits. It has
<a href="http://www.nhc.gov.cn/xcs/yqtb/202004/1c3077a1a07c430b99d7c1830233ae56.shtml" target="_blank">
reported</a> 11 new cases on 25-Apr of which 5 were imported (returning 
citizens) and 6 were domestic, including 1 in Guangdong, neighbouring HK. 
However, it separately reports "asymptomatic infections". Depending on the 
definition, most countries would regard those as cases, and some of them may go 
on to be symptomatic. China reported 30 asymptomatic infections on 25-Apr, 
including 7 imports.</p>
<p>One encouraging fact is that with several hundred people still
<a href="https://www.immd.gov.hk/eng/message_from_us/stat_menu.html" target="_blank">
entering HK</a> from the mainland each day (mostly returning HK residents), 
there have been no confirmed COVID-19 cases with travel history to the mainland 
since early March. However, as mentioned below, not all arrivals at our land 
borders are tested, only those who have been in Hubei Province. Before HK considers 
dropping the quarantine on the land border, there should at least be a period of 
testing on all arrivals.</p>
<h3>HK quarantine and testing</h3>
<p>After several iterations, Hong Kong now has a very strict COVID-19 quarantine 
and testing regime 
at its airport. Anyone arriving at the airport
<a href="https://www.info.gov.hk/gia/general/202004/20/P2020042000699.htm" target="_blank">since 
22-Apr</a> has to take a 
deep-throat saliva virus test and wait for the results, at the nearby Asia World Expo for 
morning arrivals, and otherwise overnight at the Regal Orient Hotel in Kowloon 
City, which ironically was once the Regal Airport Hotel at Kai Tak.</p>
<p>If the arriving passenger tests positive then he is sent to hospital; if 
negative then he goes to his home or designated hotel room to serve 14 days of 
quarantine during which no visitors are allowed. On 20-Apr, a 
<a href="https://www.info.gov.hk/gia/general/202004/18/P2020041800653.htm" target="_blank">trial began</a> with 
an extra spit-test to be taken on the 12th day of quarantine, in case the 
disease has developed during that period. Close contacts of any 
person who tests positive are placed in government quarantine for 14 days.</p>
<p>For the land border with the mainland, there is less-strict testing regime on its 
2 operating land ports, namely Shenzhen Bay and the Hong Kong-Zhuhai Macao 
Bridge. Arrivals are asked whether they have been in Hubei Province, and if so, 
they must take a saliva test. But they must still do 14 days of home quarantine. 
Persons arriving from the mainland with visas valid for 14 days or less are 
denied entry, so in practice, most arrivals are returning HK residents.</p>
<p>The mainland quarantine was imposed by
<a href="https://www.hklii.hk/eng/hk/legis/reg/599C/" target="_blank">Regulation 
599C</a> (<strong>R599C</strong>, Compulsory Quarantine of Certain Persons 
Arriving at Hong Kong Regulation) effective 8-Feb, and unless extended, it 
will
<a href="https://www.hklii.hk/eng/hk/legis/reg/599C/s12.html" target="_blank">
expire</a> at the end of 7-May. So far, the HKSAR Government (<strong>HKSARG</strong>) has given no indication that 
it will extend the land border quarantine - unlike school closures, which it has
<a href="COVIDHK.asp">repeatedly extended</a> several weeks in 
advance before announcing an indefinite closure.</p>
<p>At the same time as R599C,
<a href="https://www.hklii.hk/eng/hk/legis/reg/599D/" target="_blank">Regulation 
599D</a> was introduced to require disclosure of relevant information to health 
officers and make it an offence to lie or withhold required information.</p>
<p>Separately, section 12 of
<a href="https://www.hklii.hk/eng/hk/legis/reg/599E/" target="_blank">Regulation 
599E</a> (<strong>R599E</strong>, Compulsory Quarantine of Persons Arriving at Hong Kong 
From Foreign Places Regulation), effective 19-Mar, allows the Secretary for 
Food and Health (<strong>SFH</strong>) to specify "any place outside China" as a 
place from which arrivals must be quarantined for 14 days. By
<a href="https://www.gld.gov.hk/egazette/pdf/20202412e/egn2020241212.pdf" target="_blank">
notice</a> in the Gazette, the SFH specified "all places outside China", also 
effective 19-Mar. Unless extended, R599E
<a href="https://www.hklii.hk/eng/hk/legis/reg/599E/s13.html" target="_blank">
expires</a> at the end of 18-Jun.</p>
<p>If you've read that carefully, you will spot a gap. R599E doesn't allow the 
SFH to specify any place inside China, so she cannot specify Macao or Taiwan, 
and Regulation 599C originally didn't apply to Macao or Taiwan either. R599C was
<a href="https://www.gld.gov.hk/egazette/pdf/20202413e/es22020241328.pdf" target="_blank">
amended</a> to include both places, effective 25-Mar.</p>
<h4>Exemptions</h4>
<p>Both R599C and R599E allow the Chief Secretary to make 
exemptions, and he has done so by several announcements, covering air crew, 
cross-boundary goods vehicle drivers and various others. These are obviously 
important to ensure that the flow of goods (including food) into HK continues. 
They also allow our seaport to continue acting as an entrepot to the mainland.</p>
<p>Click
<a href="https://www.info.gov.hk/gia/general/202002/07/P2020020700667.htm" target="_blank">
here</a> and
<a href="https://www.info.gov.hk/gia/general/202002/14/P2020021400729.htm">here</a> 
for exemptions under R599C from 8-Feb and 15-Feb respectively and
<a href="https://www.info.gov.hk/gia/general/202003/18/P2020031800812.htm" target="_blank">
here</a> for exemptions under R599E from 19-Mar. The number of persons 
using such exemptions have not been published. Exempted persons, if they stay in 
HK, are under medical surveillance by the Department of Health and have to 
report their temperature daily. There have been several exempt persons including 
flight attendants and pilots among HK's COVID-19 cases, but they are not known 
to have caused community infections outside their homes. Still, that's a risk we 
have to take if we want to avoid starvation.</p>
<h3>Traffic data</h3>
<p>So from 25-Mar, all arrivals (with exceptions) from anywhere 
outside HK must undergo 14 days quarantine. The effect on both inbound and 
outbound
<a href="https://www.immd.gov.hk/eng/message_from_us/stat4.html" target="_blank">
passenger travel</a> was dramatic:</p>
<img class="center" alt="All ports" src="../images/Allports200208-200425.png">
<p>There's nothing we can or should do to prevent HK citizens returning to 
HK - it is their constitutional (Basic Law) right to enter. Since quarantines 
began on 8-Feb with the mainland border, there's been a "return to base" effect, 
with a net 119,936 HK residents, or about 1.6% of the population, returning up 
to 25-Apr:</p>
<img class="center" alt="Immd200208-200425" src="../images/immd200208-200425.gif">
<h3>Community transmission in HK</h3>
<p>There is and will remain an erratic trickle of imported cases arriving 
at our airport and going either to hospital or quarantine while they incubate, 
but those pose almost no threat to the community. We have plenty of capacity in 
the hospitals to handle them as our existing cases are being rapidly discharged 
- today (27-Apr) only 247
<a href="https://www.chp.gov.hk/files/pdf/local_situation_covid19_en.pdf" target="_blank">
remain in hospital</a>, some of whom have other illnesses.</p>
<p>HK is now at or close to zero local transmissions. The latest known local 
transmission was probably case #1026 inside HK Airport, a 47 year-old Virgin 
Atlantic ground crew member, probably infected by an arriving passenger from the 
daily UK flight. She recalls coughing on 6-Apr but she didn't visit a doctor 
until 14-Apr and was
<a href="https://gia.info.gov.hk/general/202004/19/P2020041900527_339816_1_1587292054784.pdf" target="_blank">
confirmed</a> on 19-Apr. There were 3 cases on the Virgin flight on 6-Apr but 
then none until 12-Apr, so given an incubation period, it is more likely that 
she was infected on 12-Apr. Not all coughs are COVID-related.</p>
<p>Outside of the airport, the last known transmission was case #1008
<a href="https://gia.info.gov.hk/general/202004/13/P2020041300624_339578_1_1586780409840.pdf" target="_blank">
reported</a> on 13-Apr, when he was asymptomatic but already in government 
quarantine, because he is the 66 year-old father of case #884, who had symptoms 
on 30-Mar and was
<a href="https://gia.info.gov.hk/general/202004/05/P2020040500534_339254_1_1586091184374.pdf" target="_blank">
confirmed</a> on 5-Apr. That means his father caught the virus on or before 
5-Apr and was then placed in quarantine.</p>
<p>Case #884 was already in home quarantine and awaiting transfer to a 
quarantine centre, because he was a close contact of case #635, a woman,
<a href="https://gia.info.gov.hk/general/202003/30/P2020032900724_338950_1_1585498447729.pdf" target="_blank">
confirmed</a> on 29-Mar. The pair arrived back from Macao on 27-Mar. Case #635 
had developed symptoms the day before and went to hospital on arrival. The pair 
went to Macao on 22-Mar. At some point prior to that, she was infected as part 
of the infamous "Bar &amp; Band Cluster" (see below).</p>
<p>We lay out that detail because you can see that some cases like #1008 are 
just contracted while at home with someone who is in home quarantine, not from 
community transmission. One way to reduce transmissions during quarantine would 
be to quarantine all arrivals in single-occupancy hotel rooms or government facilities 
rather than at home. After all, it's not like there is much demand from anyone 
else for hotel rooms. Several countries have done so. However, looking at the HK 
data, we don't see any cases where a household member of a confirmed case in 
home quarantine has been able to infect others beyond the household. As soon as 
the home-quarantined person is confirmed positive, the other members are put 
into government quarantine, usually before they can begin showing symptoms 
themselves.</p>
<p>So we look back further - when was the latest known <em>community</em> 
transmission in HK, not within a home quarantine environment? That was possibly 
case #968, who worked at Lee Gardens One in Causeway Bay until 3-Apr, developed a 
fever on 4-Apr and was
<a href="https://gia.info.gov.hk/general/202004/09/P2020040900708_339492_1_1586434339151.pdf" target="_blank">
confirmed</a> on 9-Apr.</p>
<p>So our best estimate is that there has been no community transmission since 
(at latest) 3-Apr, and it has now (27-Apr) been at least 24 days since the last 
community transmission within HK, not counting the airport.</p>
<h3>Piecemeal approach to quarantine</h3>
<p>While HK's quarantine measures were being gradually introduced, the global COVID-19 
pandemic developed faster. At 
each stage, the HKSARG was slow to react; it 
took a
<a href="https://hongkongfp.com/2020/02/02/no-choice-hong-kong-medical-workers-agree-strike-mainland-border-closures/" target="_blank">
strike</a> organised by newly-formed health worker unions to push the HKSARG 
into imposing a quarantine on the land boundary on 8-Feb, a week after
<a href="corona.asp">we called for it</a> and a week after 
Australia, Singapore and USA had already put a block on arrivals from mainland 
China.</p>
<p>After that, the HKSARG (like most governments) was repeatedly behind the 
curve, reacting to increases in confirmed cases in various regions rather than 
projecting ahead to likely increases of infections using models.</p>
<p>The HKSARG has never explicitly said that it is aiming for elimination rather 
than mitigation, but its actions say so. If the objective is 
and was elimination, then 
a complete quarantine of borders was needed rather than a piecemeal approach. To 
stop a boat being inundated and sinking, you plug all the holes, not just some 
of them.</p>
<p>Inbound quarantines were imposed piece by piece as follows:</p>
<table class="txtable">
	<tr>
	<th>Effective time</th>
	<th>Arrivals from</th>
	</tr>
	<tr>
	<td>
	<a href="https://www.info.gov.hk/gia/general/202002/05/P2020020500793.htm" target="_blank">
	08-Feb 00:00</a></td>
	<td>Mainland China</td>
	</tr>
	<tr>
	<td>
	<a href="https://www.info.gov.hk/gia/general/202002/25/P2020022500007.htm" target="_blank">
	25-Feb 06:00</a></td>
	<td>Daegu and Gyeongsangbuk-do (South Korea)</td>
	</tr>
	<tr>
	<td>
	<a href="https://www.info.gov.hk/gia/general/202002/28/P2020022800820.htm" target="_blank">01-Mar 00:00</a></td>
	<td>Emilia-Romagna, Lombardy or Veneto (Italy), Iran</td>
	</tr>
	<tr>
	<td>
	<a href="https://www.info.gov.hk/gia/general/202003/10/P2020031000663.htm" target="_blank">14-Mar 00:00</a></td>
	<td>All of Italy, Bourgogne-Franche-Comte or Grand Est (France), North 
	Rhine-Westphalia (Germany), Hokkaido (Japan), La Rioja, Madrid or Pais Vasco 
	(Spain)</td>
	</tr>
	<tr>
	<td>
	<a href="https://www.info.gov.hk/gia/general/202003/13/P2020031300832.htm" target="_blank">17-Mar 00:00</a></td>
	<td>All countries in the Schengen Area in Europe</td>
	</tr>
	<tr>
	<td>
	<a href="https://www.info.gov.hk/gia/general/202003/17/P2020031700754.htm" target="_blank">
	19-Mar 00:00</a></td>
	<td>All foreign countries/territories</td>
	</tr>
	<tr>
	<td>
	<a href="https://www.info.gov.hk/gia/general/202003/24/P2020032400549.htm" target="_blank">
	25-Mar 00:00</a></td>
	<td>Taiwan and Macao (amending R599C)</td>
	</tr>
</table>
<p>You will note that the HKSARG tried to quarantine arrivals from bits of 
countries in Europe, then all of Italy, ignoring the fact that there was a 
free-movement zone (the Schengen Area) covering 26 European states that have no passport controls, 
and normally no health controls, between them. It wasn't a sensible approach if 
the object was to prevent community spread from arrivals from anywhere in 
Europe, and meanwhile, arrivals from the UK, USA and rest of the World were 
continuing for over a week after the WHO
<a href="https://www.who.int/dg/speeches/detail/who-director-general-s-opening-remarks-at-the-media-briefing-on-covid-19---11-march-2020" target="_blank">
declared</a> COVID-19 to be a "pandemic" on 11-Mar with 118,000 confirmed cases 
in 114 countries. By 19-Mar when we quarantined arrivals from all foreign 
countries,
<a href="https://www.who.int/docs/default-source/coronaviruse/situation-reports/20200319-sitrep-59-covid-19.pdf?sfvrsn=c3dcdef9_2" target="_blank">there were</a> 
already 209,839 global confirmed cases, and by 
25-Mar when we quarantined arrivals from Macao and Taiwan, 
<a href="https://www.who.int/docs/default-source/coronaviruse/situation-reports/20200325-sitrep-65-covid-19.pdf?sfvrsn=ce13061b_2" target="_blank">there were</a> 414,179 
global confirmed cases.</p>
<p>Cast your mind back to 7-Mar, when new cases in HK had reduced to just a 
handful - in fact on two days that week, 3-Mar and 5-Mar, there were no new 
cases. The Government
<a href="https://www.info.gov.hk/gia/general/202003/07/P2020030600763.htm" target="_blank">
announced</a> on 7-Mar the limited reopening of some public facilities including 
libraries and museums, effective 11-Mar. But they had still not introduced a 
full border quarantine, so trouble was already on its way, as imported cases 
without quarantine would spread in the community, triggering a second wave. That 
was entirely predictable. Just the day before, 6-Mar, the Government
<a href="https://www.info.gov.hk/gia/general/202003/06/P2020030600821.htm" target="_blank">
announced</a> that all airport arrivals would have to fill in a "health 
declaration form", citing at least 16,600 confirmed cases outside China in 80 
countries/areas. The measure was too little, too late. Forms don't reduce 
transmission, quarantine does.</p>
<h4>Residents-only policy</h4>
<p>Since 25-Mar, with a few exceptions, anyone arriving at the airport is 
denied entry unless they are a "HK resident". Exceptions include the spouse or 
minor child of a HK resident. In practice "HK resident" means anyone with a HK 
Permanent ID Card, even if they live in overseas countries. If you are 
born in HK to a Chinese parent then you basically have that status for life even 
if you leave.</p>
<p>We've noted a number of inbound COVID-19 cases who are "resident" 
overseas but are entitled to return with their HKID card and enjoy HK's less congested hospitals, and 
a trickle of such cases will continue, but the important thing is that they 
either go straight to hospital or into home/hotel quarantine if tested negative. 
Residents of Macao and Taiwan are also allowed in, with quarantine.</p>
<p>This citizens-only restriction has been necessary simply to prevent 
medical refugees from places with high rates of infection arriving in HK and 
seeking treatment here. Airport transit services (connecting flights) have 
also been suspended.</p>
<h4>Stricter testing</h4>
<p>After moving on from health declaration forms, the initial testing approach at the airport was 
quite relaxed. 
Passengers arriving from certain places, from 25-Mar
<a href="https://www.info.gov.hk/gia/general/202003/24/P2020032400828.htm" target="_blank">
including UK and Europe</a>, and
<a href="https://www.info.gov.hk/gia/general/202004/07/P2020040700753.htm" target="_blank">
from 8-Apr</a> from all places, were given spit-jars and asked to return them 
later. Not all did. The importance of the new regime, testing on entry and on 
day 12 of quarantine, was highlighted by
<a href="https://gia.info.gov.hk/general/202004/23/P2020042300587_340057_1_1587637406886.pdf" target="_blank">
case #1036</a> announced on 23-Apr, a 58 year-old male who had been in the UK 
and US, arriving back on 24-Mar. He finished his home quarantine on 7-Apr, and 
despite having symptoms from 26-Mar, he decided to visit his office 3 times, get 
a tooth extracted and get a haircut. It was only on 21-Apr 
that he got tested at his doctor and was subsequently sent to hospital.</p>
<h3>Social Regulations</h3>
<p>As a result of the slow adoption of quarantine detailed above, several new 
community clusters were seeded by arrivals and grew in HK, the largest of which 
became known as the "Bar &amp; Band Cluster", referring to a band which played in a 
chain of 4 bars, their staff and customers. Including connected cases, we count 
at least 92 in that cluster. Several single-digit clusters emerged from dinners 
and Karaoke sessions and a wedding reception. The contact-tracing efforts have 
now terminated all of those clusters. The peak reporting day came on
<a href="https://www.info.gov.hk/gia/general/202003/27/P2020032700886.htm" target="_blank">
27-Mar</a> with 65 new cases, including 41 with a travel history. For patients 
without a travel history, the peak was also that day, at 24 cases, of which 21 
were in the Bar &amp; Band Cluster.</p>
<p>Also on 27-Mar, the HKSARG announced two new sets of regulations.
<a href="https://www.hklii.hk/eng/hk/legis/reg/599F/" target="_blank">Regulation 
599F</a> (<strong>R599F</strong>, Prevention and Control of Disease 
(Requirements and Directions) (Business and Premises) Regulation), effective 
28-Mar, and
<a href="https://www.hklii.hk/eng/hk/legis/reg/599G/" target="_blank">Regulation 
599G</a> (<strong>R599G</strong>, Prevention and Control of Disease (Prohibition 
on Group Gathering) Regulation), effective 29-Mar. Each lasts 3 months. Briefly, 
R599F empowers the SFH to order closure of food and drink catering businesses 
and various types of premises including fitness centres and places of 
entertainment or amusement. R599G empowers the SFH to prohibit gatherings of 
more than 4 people in public places for up to 14 days, with exceptions. It does 
not apply to gatherings in private places.</p>
<p>R599F was activated by two notices in the Gazette for 14 days starting at 
18:00 on 28-Mar, closing the aforementioned premises and requiring tables of 
bars and other catering facilities to be spaced by 1.5 metres with a limit of 4 
people per table. Click
<a href="https://www.gld.gov.hk/egazette/pdf/20202416e/egn2020241616.pdf" target="_blank">
here</a> for the directions on catering and 
<a href="https://www.gld.gov.hk/egazette/pdf/20202416e/egn2020241617.pdf" target="_blank">here</a> for the
directions on premises. R599G was activated by a
<a href="https://www.gld.gov.hk/egazette/pdf/20202418e/egn2020241819.pdf" target="_blank">
Gazette notice</a> effective 29-Mar for 14 days.</p>
<p>On 1-Apr, HKSARG
<a href="https://www.info.gov.hk/gia/general/202004/01/P2020040100495.htm" target="_blank">
announced</a> that R599F was
<a href="https://www.gld.gov.hk/egazette/pdf/20202419e/es22020241933.pdf" target="_blank">
amended</a> effective 15:00 on 1-Apr to include beauty parlours, club-houses, 
nightclubs, karaoke establishments, mahjong-tin kau premises and massage 
parlours. That was activated by two Gazette notices
<a href="https://www.gld.gov.hk/egazette/pdf/20202420e/egn2020242021.pdf" target="_blank">
here</a> and
<a href="https://www.gld.gov.hk/egazette/pdf/20202420e/egn2020242022.pdf" target="_blank">
here</a> effective 18:00 on 1-Apr for 14 days: night clubs, karaoke and 
mahjong-tin-kau premises were ordered closed. Beauty parlours, club-houses and 
massage parlours continued operating but masks, hand sanitizers and temperature 
screening were required.</p>
<p>On 2-Apr, the HKSARG
<a href="https://www.info.gov.hk/gia/general/202004/02/P2020040200608.htm" target="_blank">
announced</a> that, with the Bar &amp; Band Cluster at 76 cases (including spread), 
the SFH was ordering bar closures from 18:00 on 3-Apr for 14 days.</p>
<p>On 8-Apr, the HKSARG
<a href="https://www.info.gov.hk/gia/general/202004/08/P2020040800020.htm" target="_blank">
announced</a> that all the orders under R599F and R599G would continue for 14 
days from 10-Apr to 23-Apr, and expanded them to order closure of beauty and 
massage parlours.</p>
<p>On 21-Apr, even though there had been no new local cases reported since 
13-Apr (not counting the airport ground crew case), the HKSARG
<a href="https://www.info.gov.hk/gia/general/202004/21/P2020042100248.htm" target="_blank">
extended</a> all the orders by 14 days to expire at the end of 7-May, which just 
happens to be the date on which R599C (the mainland border quarantine) is 
currently set to expire. Notably, although the Chief Executive is supposed to 
make her decisions to issue or repeal regulations "in Council" - that is, with 
the advice of her Executive Council, she announced this decision (technically 
made by the SFH) at a
<a href="https://news.rthk.hk/rthk/en/component/k2/1521782-20200421.htm" target="_blank">
media briefing</a> <em>before</em> the ExCo meeting. She could at least have 
pretended to discuss it with them first.</p>
<p>The only minor change was that restaurants are no longer limited to 50% of 
the "normal seating capacity", but in practice that makes little or no 
difference when they have to separate tables by 1.5 metres.</p>
<h3>How the Regulations are made</h3>
<p>It should not have escaped your notice that none of the Regulations, R599C to 
G, was subject to the scrutiny and approval of the Legislative Council. They 
were all made by the Chief Executive in Council (<strong>CEIC</strong>) under
<a href="https://www.hklii.hk/eng/hk/legis/ord/599/s8.html" target="_blank">
Section 8</a> of the Prevention and Control of Disease Ordinance, which states 
that on any occasion which the CEIC considers to be an occasion of a public health emergency (<strong>PHE</strong>), 
she may make regulations for the purposes of preventing, combating or 
alleviating the effects of the PHE and protecting public health. A PHE is defined as:</p>
<div class="letterbox">
<p>(a) the occurrence of or the imminent threat of a disease, an epidemic or a 
pandemic;</p>
<p>(b) the occurrence of a novel, or highly infectious, agent or matter; or</p>
<p>(c) the widespread exposure or the imminent threat of widespread exposure of 
human beings to an infectious agent,</p>
<p>that has a <strong>high probability</strong> of causing a <strong>large number</strong> of deaths in the 
population or a large number of serious disabilities (whether or not long-term) 
in the population. (our bold)</p>
</div>
<p>An "infections agent" is defined as "a parasite, a fungus, a bacterium, a 
virus, a prion or any other agent that can cause an infectious disease". 
Clearly, the virus SARS-CoV-2 can cause an infectious disease, COVID-19. 
However, when you have erected a nearly complete quarantine around HK against 
entry of that infectious agent, reducing it to occasional leaks from inbound 
arrivals that can be traced and contained, then it is hard to argue that it 
still has a "high probability of causing a large number of deaths". It is not 
enough to have a low probability of a large number of deaths, or a high 
probability of a small number of deaths.</p>
<p>For that reason alone, the social regulations R599F and R599G are now looking 
invalid, and any attempt to extend them further may fall subject to judicial 
review by those most affected. R599G in particular, banning gatherings of more 
than 4 people, is a gross infringement of civil rights of assembly and is 
starting to look like an anti-protest measure rather than an anti-epidemic 
measure. If there are only single-digit or zero cases in the community (not in 
quarantine) then your chance of encountering one of them in the wild is 
near-zero. Meanwhile, R599F is depriving tens of thousands of people in the 
services sector of their economic livelihoods.</p>
<p>It's also notable that even before the issue of R599F and R599G, there had 
only been 4 deaths in HK from COVID-19 in nearly 3 months,
<a href="https://news.rthk.hk/rthk/en/component/k2/1514191-20200313.htm" target="_blank">
the latest</a> on 13-Mar. Contact-tracing and containment were still working, 
and the quarantine on all arrivals, only introduced on 25-Mar, had nearly 
eliminated the risk of them causing local transmissions and should have been 
given time to work. With the full quarantine, a repeat of the Bar &amp; Band Cluster 
was unlikely.</p>
<p>The outbreak in HK never reached the stage where there was a high probability 
of a large number of deaths. If anything, the social Regulations were just an 
imitative response to what overseas governments with far higher case-loads were 
doing at the time.</p>
<h3>Time to enjoy HK</h3>
<p>HK citizens, unable to travel without a 14-day quarantine on return, should 
now be allowed to enjoy the safety and security that the quarantine and testing 
at our borders has bought them. It's time to re-open all our public facilities, 
including but not limited to the theme parks, cinemas, concert halls, libraries, 
museums, sports facilities, bars and restaurants, schools and universities, 
without restrictions.</p>
<p>We should also begin the process of negotiating bilateral 
quarantine-free travel with other countries/territories that have reached 
sustained zero local transmission and are maintaining a quarantine against the 
infected parts of the world, or what we call the Quarantined Union for 
International Exempt Travel (QUIET) area. Limits could be 
agreed on what level of domestic transmission within our partner territories 
would trigger renewed quarantine against them.</p>
<p>We can start with our fellow SAR, Macao, which has had
<a href="https://macaunews.mo/macau-18-days-without-new-covid-19-case/" target="_blank">
no new cases</a> (even imported) since 8-Apr. Quarantine-free travel between 
Macao and HK should now be allowed. Taiwan is also
<a href="https://www.cdc.gov.tw/En" target="_blank">getting close</a> to zero, 
so quarantine against Taiwan could soon be dropped, as long as they maintain a 
quarantine against external infections. Australia, New Zealand and South Korea 
could soon join us.</p>
<p>The HKSARG should tread very carefully to test inbound travellers from the 
mainland (including HK residents) before lifting the quarantine against them 
when it is deemed safe to do so. At that point, we can welcome back our 
compatriot tourists and shoppers, and get thousands of HK people back to work. 
That would also allow HK residents to start travelling again within China 
without quarantine.</p>
<p>We hope that bilateral travel with other clean countries will soon follow. 
But until a vaccine or effective treatment becomes available, we should not drop 
our quarantine on arrivals from infected countries, unless HK society is 
collectively willing to surrender to COVID-19 and accept the consequential death 
toll on the aged and infirm.</p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=150">Healthcare</a></li>
				
				<li><a href="/dbpub/subject.asp?c=35">Immigration</a></li>
				
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

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

<script type="text/javascript">document.title="Reject the bid for NWTMT";</script>

	<div class="summary">We start the year with a recommendation to reject the $0.75 privatisation offer for NWTMT. The uncertainty over the PrediWave case, where the claim is worth $5.70 per share, is too great, and investors should wait for its resolution. Even a 10% recovery would increase NAV by 76%. The vote is on 13-Jan-06, so vote NOW.</div>

<h2 class="center">Reject the bid for NWTMT<br>
<span class="headlinedate">3 January 2006</span></h2>
<p><a target="_blank" href="http://www.nwtmt.com">New World TMT Ltd</a> (<b>NWTMT</b>, 0301) was listed on 27-Oct-95 after an IPO 
sponsored by CLSA Ltd. Back then, the company was named New World Infrastructure 
Ltd and was a partial spin-off of the various port, road and power 
infrastructure assets of parent New World Development Co Ltd (<b>NWD</b>, 0017). 
It took its current name on 28-Nov-03, after a complicated
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021118/LTN20021118084.pdf">
reorganisation</a> of the New World group in which NWTMT sold its infrastructure 
assets to a listed subsidiary called Pacific Ports Co Ltd, which was renamed NWS 
Holdings Ltd (<b>NWSH</b>, 0659), and NWTMT distributed its holding in NWSH to 
its shareholders, who received 0.587 NWSH shares (after adjustment for the 
subsequent 10:1 consolidation) for each NWTMT share they held. The 
reorganisation was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030129/LTN20030129107.pdf">
completed</a> on 29-Jan-03, leaving NWTMT holding a mixed bag of telecommunications, media and 
technology assets.</p>
<p>The largest part of those technology assets comprised stakes in
<a target="_blank" href="http://www.prediwave.com">PrediWave Corp</a> (<b>PrediWave</b>) 
and affiliated companies, which are now the subject of a legal battle. According 
to the <a target="_blank" href="../codocs/NWTMTcomplaint.pdf">complaint</a> 
filed on 25-May-04 in a California court by NWTMT against PrediWave, its boss 
Tony Qu Jianping (<b>Mr Qu</b>), and others, NWTMT made the following 
investments in PrediWave and affiliated companies:</p>
	<table class="txtable center">
		<tr>
			<th>Date</th>
			<th>Company</th>
			<th>Stake</th>
			<th>US$m</th>
		</tr>
		<tr>
			<td>25-May-00</td>
			<td><a target="_blank" href="http://www.prediwave.com">PrediWave</a></td>
			<td>30%</td>
			<td>35</td>
		</tr>
		<tr>
			<td>31-Oct-00</td>
			<td><a target="_blank" href="http://www.cyberlancet.com">CyberLancet 
			Corp</a></td>
			<td>30%</td>
			<td>45</td>
		</tr>
		<tr>
			<td>31-Oct-00</td>
			<td>CyberNova Corp</td>
			<td>40%</td>
			<td>20</td>
		</tr>
		<tr>
			<td>31-Oct-00</td>
			<td><a target="_blank" href="http://www.techstockventure.com">
			TechStock, Inc</a></td>
			<td>40%</td>
			<td>20.4</td>
		</tr>
		<tr>
			<td>10-Oct-01</td>
			<td><a target="_blank" href="http://www.warpera.com">WarpEra Corp</a></td>
			<td>30%</td>
			<td>42</td>
		</tr>
		<tr>
			<td>3-Jan-02</td>
			<td><a target="_blank" href="http://www.visionaire-tech.com/">
			Visionaire Technology Corp</a></td>
			<td>40%</td>
			<td>34</td>
		</tr>
		<tr>
			<td>30-Oct-02</td>
			<td><a target="_blank" href="http://www.pitvusa.com">S.T.U.B. 
			Satertainment, Inc.</a></td>
			<td>47.5%</td>
			<td>25</td>
		</tr>
		<tr>
			<td>12-Nov-02</td>
			<td>Athena Database, Inc.</td>
			<td>31.5%</td>
			<td>55*</td>
		</tr>
		<tr>
			<td>25-Aug-03</td>
			<td>Pine Global Marketing Ltd</td>
			<td>30%</td>
			<td>15</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>Sub-total</td>
			<td>&nbsp;</td>
			<td>291.4</td>
		</tr>
	</table>

<p><em>*including shareholder loan of US$30m</em></p>
<p>At the times when these investments were made, 
NWTMT was such a large group that none of the investments were discloseable 
under the Listing Rules. According to the NWTMT complaint, all of the above 
companies were established by Mr Qu to provide additional technology and 
services to support the video-on-demand (VOD) set-top box (STB) system developed 
by PrediWave.</p>
<p>In essence, PrediWave claims to have invented 
the holy grail of VOD systems, what it calls the <em>&quot;first and only 
one-way VOD&quot;. </em>It obtained two US patents, 
one <a target="_blank" href="../codocs/Patent030429.pdf">granted</a> on 
29-Apr-03, and the other <a target="_blank" href="../codocs/Patent040420.pdf">
granted</a> on 20-Apr-04. The implication of the claim is that the system can 
provide VOD to people without a &quot;return path&quot; to control the ordering or 
streaming of videos to the STB, and furthermore, without having dedicated 
streams of data from an expensive farm of central servers to each STB or 
&quot;client&quot;, which creates much higher cost due to the load imposed on the servers. 
Hence, it was claimed, VOD can be provided without major upgrades to one-way 
cable TV networks, such as those found in China, or major financial outlay on server 
equipment.</p>
<p>Of course, there is no holy grail. What this 
really amounts to is broadcasting all the movies and other TV programs 
continually to the STB, which then stores the programs (or at least, the first 
part of the programs) on the hard drive in the STB, and when a user wants to 
watch a given program, the STB starts playing while it collects the rest of the 
program from the broadcast channel. The programs are broadcast using standard 
compression algorithms such as MPEG-2, and are sliced up to share the bandwidth 
on a given broadcast channel. The more programs that you want to have available, 
the larger the broadcast bandwidth required. Of course, if the STB runs out of 
data, it could always &quot;interrupt&quot; the program and play some pre-recorded adverts 
from its hard drive.</p>
<p>However, as some programs are much more 
popular than others, you can be more aggressive about the way they are broadcast 
- for example, within the limited amount of space on the STB's hard drive, you 
could store the first segment of the most popular movies, and then just 
broadcast the subsequent segments in a continuous loop. For less popular 
programs, you could broadcast them less often, and ask people to wait a while 
before they start viewing. There's a number of different ways the broadcast 
bandwidth could be allocated to achieve different objectives, none particularly 
earth-shattering, and all of them are a compromise compared to a full-blown 
client-server solution in which you can order any program you want from the 
server, and it is streamed across to your STB on demand.</p>
<p>Broadcast-and-store is not a revolutionary 
idea - if you lived in the UK anytime since the mid-1970s, you would be familiar 
with Ceefax and Oracle, the
<a target="_blank" href="http://teletext.mb21.co.uk/">teletext</a> information 
pages which are broadcast in a continuous loop using the &quot;spare lines&quot; of the TV 
signal - and can be buffered into memory on the TV set for subsequent viewing. 
And in the abstract, you could call a newspaper a &quot;news on demand&quot; device - 
the &quot;broadcasting&quot; consists of sending every subscriber every story in the 
newspaper, and then you decide <em>which </em>
stories you actually want to read.</p>
<p>So in our view, there's nothing particularly 
clever about PrediWave or its so-called &quot;predictive wave&quot; system, but on the 
other hand, there's no reason in principle why such a broadcast-and-store system 
should not work, subject to the severe limitations noted, particularly the limited 
amount of programming that you can fit in the available broadcast channels and 
the size of your hard drive to pre-store programs.</p>
<h3>The legal battle</h3>
<p>While the background is interesting, the 
object of this article is not to determine what PrediWave and Mr Qu claimed or 
did not claim to NWTMT, or whether the
<a target="_blank" href="../codocs/PrediwaveComplaint.pdf">counter-claim</a> 
filed by PrediWave has any merit. The point is to look at the impact of this on 
the proposed privatisation of NWTMT.</p>
<p>NWTMT claims it agreed to purchase 200,000 
STBs from PrediWave for US$435 each, a total of $87.5m, and paid another 
US$381,397,228 to PrediWave for additional hardware and software to operate 
PrediWave's system. Altogether, the claim against PrediWave amounts to over 
US$700m.</p>
<p>In NWTMT's Jun-03 annual report, it noted that 
its share of the PrediWave companies' losses had increased to HK$167m from 
$67.9m in the previous year. It also said that <em>&quot;major product upgrades 
were carried out to broaden user-attractive features and expand interactive TV 
network functionality&quot;</em> resulting in a 
HK$458.4m (US$58.8m) write-down on the value of &quot;set-top box components&quot;.</p>
<p>After the project broke down, in the Jun-04 
annual report, NWTMT made total provisions of HK$4,392m (US$563m) on its 
&quot;interactive digital cable TV&quot; business. This comprised HK$843.9m (US$108m) for 
deposits on STBs, $1,934m (US$248m) on investments in the PrediWave companies, 
$304.2m (US$39m) on loans to investees (probably including the US$30m loan to 
Athena), $401.2m on billing management and conditional access software and 
PrediWave licences, $619.2m on equipment, and $289.6m of inventory write-downs. 
Of the total provision of $4,392m, the investments, loans and deposits for STBs 
amounted to $3,082m (US$395.1m).</p>
<p>Furthermore, in the Jun-05 report, NWTMT made 
a provision of HK$376.9m (US$49m) for an investment in
<a target="_blank" href="http://www.intellambda.com/">Intellambda Systems Inc</a>, 
another company led by Mr Qu, which is not involved in the PrediWave litigation. 
That investment was made during the year ended 30-Jun-04.</p>
<h3>The bottom line</h3>
<p>As a result of all these provisions and 
write-downs, the shareholders funds of NWTMT stood at only HK$712m at 30-Jun-05, 
or about <b>HK$0.75 per share</b>, which is equal to the offer price that NWD 
has now put on the table to put minority shareholders out of their misery. <b>
However, the amount of claims against PrediWave stands at over US$700m 
(HK$5,425m) or about $5.70 per share</b>.</p>
<p>The case against PrediWave may take a long 
time, and may not be successful. Even if it is successful, we don't know how 
much money the PrediWave companies and Mr Qu still have, and whether they will 
be able to honour any damages award, although at least up to 31-Dec-03, 
according to
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040528/LTN20040528019.pdf">
this announcement</a> NWTMT, there was in excess of US$344m in the bank accounts 
of the PrediWave companies.</p>
<p>A preliminary trial date has been set for 
16-Jun-06. However, it is also possible that a settlement will be reached before 
the case goes to trial, and that a lesser amount will be recovered by mutual 
agreement and without much delay. NWTMT has already spent HK$73.9m bringing this 
action, so it obviously believes that was a worthwhile investment. According to 
the circular:</p>
<blockquote>
	<p>&quot;as a practical matter, mandatory 
	settlement conferences are conducted in all cases in California unless the 
	parties instead participate in a voluntary settlement conference...It is, 
	therefore, probable that a settlement conference or mediation will be held 
	in this case before trial.&quot;</p>
</blockquote>
<p>Investors should regard the probability of 
some recovery from PrediWave as being greater than zero, but less than 100%. 
Even if NWTMT recovers only 10% of what it claims, it would add $0.57 or 76% to 
net asset value which would make the current offer look very cheap. If they 
recover 20%, it would add $1.14 or 152% to NAV, and so on. As recently as the 
Jun-05 annual report, published on 6-Oct-05, before the privatisation bid, NWTMT 
wrote:</p>
<blockquote>
	<p>&quot;significant headway was made in the case 
	against PrediWave Corp and its affiliates...NWTMT continues to stand by the 
	strength of its case and expects the US judicial system to view its argument 
	in a positive light.&quot;</p>
</blockquote>
<p>Not surprisingly, in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051216/LTN20051216081.pdf">
offer document</a>,&nbsp;NWD downplays the outlook for the case. Given the past 
behaviour of the New World group, in our opinion NWD does not deserve the 
benefit of the doubt. It is making the offer at a time of <b>maximum uncertainty</b> 
for investors in NWTMT, and if they accept it, then they will be excluding 
themselves from the benefit of any settlement in the PrediWave case. <b>If NWD 
was sincere in making this offer, then it should have included a conditional 
deferred payment based on the outcome of the PrediWave litigation, which would 
allow investors to accept the offer and participate in the upside of the case. 
But that offer is not on the table, and so investors should reject the offer and 
await the outcome of the case. If there is no recovery on PrediWave, then NWD 
can always repeat the privatisation offer.</b></p>
<p>In fact, the uncertainty over the PrediWave 
situation is so great that PriceWaterhouseCoopers, the auditors, have been 
unable to form an opinion for the last two years ending 30-Jun-05 on whether the 
accounts give a true and fair view of the state of affairs of NWTMT.</p>
<h3>The fibre optic network </h3>
<p>Another cloud over NWTMT is its payments in 
2002 to a &quot;PRC entity&quot; of HK$1,531m as a deposit for the right to buy up to 70% 
of a fibre optic backbone network for a total price of HK$2,563m. The 2003
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031030/00301/EWP110.pdf">
annual report</a> provides the best overview of its PrediWave and TMT 
investments. At page 31, the network is described as a China-wide 32,068km 
8-core G-652 grade fibre capable of operating at G-655 rates of 12.8 terabits 
per second (i.e. 1.6 Tb per core), based on field tests. The report said that 
the network would become the backbone infrastructure for PrediWave. The 
counterparties to this deal have not been disclosed, but we guess the network in 
some way involves fibre laid along the railway tracks of China. A similar deal 
involving a similar length of cable was done by the CITIC group. The network 
probably looks something like <a target="_blank" href="../codocs/railwaymap.pdf">
this</a>.</p>
<p>On 23-Jun-04, just a month after it filed the 
case against PrediWave, NWTMT requested to withdraw from the acquisition of the 
network, and on 3-Sep-04 the counterparties agreed to return the deposits, loans 
and other amounts totalling HK$2,160m by 30-Nov-04. They have not yet done so, 
but NWTMT says that in return for extending the deadline to 30-Nov-05, it was 
granted security over the 70% stake in the network and is confident of getting 
its money or the network, so no provision has been made. On 22-Nov-05 the 
repayment deadline was extended to 30-May-06. The directors have had the network 
professionally valued and are of the view that the amounts owing are &quot;fully 
recoverable&quot;.</p>
<h3>Loans from NWD</h3>
<p>NWTMT is also reliant on loans from a &quot;fellow 
subsidiary&quot; which the offer document names for the first time as New World 
Finance Co Ltd (<b>NWF</b>), which amounted to $2,337m at 30-Jun-05, very 
similar to the amount it is due to receive back from the unnamed PRC parties on 
the fibre optic network. The total revolving credit facility of HK$3,250m has 
been extended to 31-Mar-07. NWF is wholly-owned by NWD.</p>
<p>As NWD and NWF are connected parties, NWTMT 
cannot grant any security to the lender, so it would be difficult for NWD to 
pull the plug because it would rank alongside the other creditors of NWTMT in a 
liquidation, or possibly behind them if the loan is subordinated, and apart from 
anything else, the outcry from minority shareholders at the parent putting the 
listed company into liquidation would be enormous. They might want to know why 
the directors allowed NWTMT made such massive deposits in the first place in a 
sector where it is still illegal for foreign investors to own more than 49%.</p>
<p>However, there is a risk that NWTMT could 
launch a rights issue in which NWD would in effect capitalise its loan. No such 
threat of either calling in the loan or launching a rights issue was contained 
in the offer document.</p>
<h3>The vote, and AIG</h3>
<p>The largest minority shareholder in NWTMT, 
with 10.17%, is <a target="_blank" href="http://www.empwdc.com/EMPAisiaII2.htm">AIG 
Asian Infrastructure Fund II</a>, which received its shares on 
30-Apr-02 upon the mandatory conversion of a 3-year convertible bond issued in 
Apr-99, at a conversion price of HK$12 per share. That conversion was before the 
distribution of 0.587 shares in NWSH, then worth $1.82 and now worth about $6.63 
(all prices ex-dividend), but AIG will still be taking a major hit if they let 
the deal go through at $0.75 per share. Although AIG could block the deal, so 
could other holders - it only takes 10% of the independent shareholders, or 
about 4.53%, to vote against.</p>
<p>The meeting on Friday 13-Jan-06 is fast 
approaching, so there is no time to lose. Reject the offer and tell NWD you will 
wait until the PrediWave case is resolved and the accounts are again in a state 
on which the auditors can give an opinion. Contact your bank, broker or 
custodian, and <b>
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051216/LTN20051216082.pdf">
Vote NOW</a></b>.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=432">NEW WORLD DEVELOPMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=468">NEW WORLD TMT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2045046">PrediWave Corporation</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2045045">Qu, Tony Jianping</a></li>
				
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
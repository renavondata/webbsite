
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

<script type="text/javascript">document.title="Stop the BoCom placing: get a rights issue";</script>

	<div class="summary">We call on SEHK and SSE to stop the big 3 holders from voting to approve each other's subscriptions, which would create a dangerous precedent. Thankfully BoCom has no general mandate, so they also need a special resolution to approve the placing on which they must all abstain. We urge independent shareholders to block it and call for a rights issue instead, and we suggest a way around the primitive NAV rule.</div>

<h2 class="center">Stop the BoCom placing: get a rights issue<br>
<span class="headlinedate">16 March 2012</span></h2>
<p>Yesterday <a href="../dbpub/orgdata.asp?p=5606">Bank of Communications Co Ltd</a> 
(<strong>BoCom</strong>, 3328)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2012/0315/LTN20120315368.pdf" target="_blank">
launched</a> a proposed HK$69.33bn (US$8.93bn) placing of A-shares and H-shares, 
subject to shareholders' approval, kicking off the latest round of fund-raising 
in the mainland banking system, which has been stretched by the great 
state-commanded lending binge of 2009. Expect much more of this in other banks 
as those loans start to go sour.</p>
<p>The new shares are equal to 20% of the existing shares, but it's not like any 
ordinary placing. This is in reality a set of connected transactions in which 
the 3 largest shareholders get to maintain or increase their shareholdings, a 
few new shareholders are hand-picked, and everybody else gets diluted. In China, 
some shareholders are more equal than others. Here are the holdings of the top 
3, in H-shares and total shares, if the deal proceeds:</p>
<table class="optable center">
	<tr>
		<th>Shareholder</th>
		<th>H-shares<br>before %</th>
		<th>H-shares<br>after %</th>
		<th>A+H shares<br>before %</th>
		<th>A+H shares<br>after %</th>
	</tr>
	<tr>
		<td>PRC Ministry of Finance (<strong>MOF</strong>)</td>
		<td>13.01</td>
		<td>13.01</td>
		<td>26.52</td>
		<td>26.53</td>
	</tr>
	<tr>
		<td>HSBC Holdings plc (<strong>HSBC</strong>)</td>
		<td>40.37</td>
		<td>40.37</td>
		<td>19.03</td>
		<td>19.03</td>
	</tr>
	<tr>
		<td>National Council for Social Security Fund (<strong>SSF</strong>)</td>
		<td>24.09</td>
		<td>24.09</td>
		<td>11.36</td>
		<td>13.88</td>
	</tr>
	<tr class="total">
		<td>Top 3</td>
		<td>77.47</td>
		<td>77.47</td>
		<td>56.91</td>
		<td>59.44</td>
	</tr>
</table>
<p>Now each of these 3 subscriptions is a related party transaction, requiring 
the approval of independent shareholders under Shanghai Stock Exchange (<strong>SSE</strong>) 
Listing Rules. Two of them are also connected transactions under HK listing 
rules, because a person holding more than 10% is a connected person. One of 
them, MOF, is exempt, because there is a loophole in the HK Listing Rules which 
exempts &quot;PRC Governmental Bodies&quot; from the connected transaction rules.</p>
<p class="regbox">Regulatory note: the exemption of PRC Governmental bodies 
should be abolished. If Shanghai does not see fit to exempt the Government from 
connected transaction rules, then why does HK? We
<a href="beijingsiphon.asp">first wrote</a> about this loophole back 
in 1999.</p>
<p>But here's the bigger problem: according to yesterday's announcement, the MOF 
will abstain from voting on its own subscription, HSBC will abstain from voting 
on its own subscription, and SSF will do likewise. But this says nothing about 
their ability to vote in favour of each other's subscriptions. So add up the 
pair that can vote and divide by the percentage not owned by the subscriber, and 
you will see that there will be at least 41.36% in favour of MOF, 46.21% in 
favour of HSBC and 50.81% in favour of SSF. In reality the percentages will be 
higher because not all shareholders vote.</p>
<p>This sets a dangerous precedent, because many listed companies have more than 
one substantial shareholder (your editor is a substantial shareholder of one) 
and it would allow 2 or more substantial shareholders to engage in this mutual 
back-scratching&nbsp; where &quot;I'll support your subscription and you support 
mine&quot;, leaving outside shareholders in the cold. <strong>So we urge SEHK and SSE 
to review the voting requirements for BoCom and require that all 3 of the 
substantial shareholders should abstain from voting on all 3 subscriptions.</strong></p>
<p>Thankfully, this problem is mitigated by the fact that unlike many 
companies, BoCom does not already have a general mandate to issue shares, so not 
only are the 3 related-party subscriptions subject to shareholders' approval, 
but so is the entire placing. The announcement states that each of MOF, HSBC and 
SSF (as well as two other related parties) will abstain from voting on the 
special resolution in respect of the proposed issuance and placing, leaving it 
open to independent shareholders to veto the deal. However, it also states that 
if the placing is not completed by the Annual General Meeting (which last year 
was held on 28th June) then they will refresh the General Mandate then, and it 
is unclear whether the conflicted shareholders will abstain from voting on the 
refreshment of the mandate.</p>
<p class="regbox">Regulatory note: In mainland China, the general mandate to 
issue shares for cash without a rights issue, thereby diluting your existing 
shareowners, requires a special resolution (2/3, or 66.67% majority), a tighter 
standard than HK (ordinary resolution, 50% majority) but behind the UK (special 
resolution, 75% majority). So <a href="../dbpub/subject.asp?c=173">pre-emptive 
rights</a> are another area in which mainland rules are ahead of HK, along with
<a href="../dbpub/subject.asp?c=177">quarterly financial reporting</a>.</p>
<p>This placing is a shoddy way to treat independent shareholders. BoCom has 
said that mainland regulations prevent the issue of shares below the net asset 
value of the bank. For BoCom that is RMB4.16 per share at 30-Sep-2011 (the 2011 
results are not yet out). At yesterday's exchange rate that is about HK$5.10, 
versus a share price of $6.19. BoCom has claimed that this makes a rights issue 
infeasible as the discount would be too shallow. </p>
<p>The mainland NAV rule makes no sense when applied to rights issues, because 
in rights issues there is no unfair dilution of the NAV belonging to existing 
holders, because everyone gets to participate or sell their rights, thereby 
receiving the full value of the discount. The discount in a rights issue just 
amounts to a partial bonus issue, and bonus issues are allowed under mainland 
law (BoCom itself did a 1 for 10 bonus issue in 2011).&nbsp; </p>
<p>So to get around this rather primitive rule on NAV, they could do a 1 
for 5 rights issue at say $6.19 (the market price) with 1 bonus share for each 
rights share subscribed. That would be equivalent to a 2 for 5 issue at $3.095, 
a 50% discount. No underwriting would be necessary with such a deep discount.</p>
<p><strong>Thanks to the lack of a pre-existing general mandate, independent 
shareholders now have the opportunity to stop this placing and call for a rights 
issue by voting against the special resolution at the EGM, on which the big 3 
shareholders will abstain. We urge you to do so.</strong></p>
<p>Unfortunately for international investors, the number of H-shares which can 
vote on the special resolution is about 6,574m, while the number of A-shares 
which can vote is about 19,283m, and many of those will be in the hands of 
state-controlled fund management companies who tend to do as they are told. So 
the voting entitlements are about 25.4% H-shares and 74.6% A-shares. Not all of 
them will vote, so it is possible to get the 1/3 (33.33%) of the votes necessary 
to stop the placing, but it will be a struggle. </p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=5606">Bank of Communications Co., Ltd.</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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
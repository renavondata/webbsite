
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

<script type="text/javascript">document.title="Save the Panda";</script>

	<div class="summary">Successful dot-com IPOs are fast becoming an endangered species. Panda-Recruit Ltd, distributor of job ads to MTR passengers, starts trading on GEM tomorrow. The company is chaired by GEM Listing Chairman K S Lo, so you might think it was a sure bet. We don't think so. We also reveal the hidden owners of one of the shareholders.</div>

<h2 class="center">Save the Panda<br>
<span class="headlinedate">19 July 2000</span></h2>
<p>After being stuck in the station since the Spring waiting for
the dot-com market to recover, Panda-Recruit is braving the battered GEM market.
Investors must be hoping that its Chairman, K S Lo, who is also Chairman of the GEM
listing committee, has priced the issue to go. </p>

<p>We take a look at the business model and reveal something you
didn't know about the Company's shareholders. </p>

<h3>History</h3>

<p>The core business of Panda-Recruit is a company called Hong Kong
Transit Publishing Co. Ltd (<b>HKTP</b>), incorporated on 23-Apr-91. It has been
headed from the start by Robert Chow Yung (<b>Mr Chow</b>), former
Editor-in-Chief of local English newspaper the Hong Kong Standard (now Hongkong
Imail), which is owned by Sing Tao Holdings Ltd. </p>

<p>HKTP publishes a free recruitment magazine called
&quot;Recruit&quot; which was launched in Jul-92 as a Friday publication,
becoming twice-weekly in Jan-94. It is targeted at mass-market office workers.
Between February and April each year, there is a seasonal burst of job-hopping
after employees collect their &quot;13th month&quot; lunar new year bonus, which
increases the advertising volume, and so since 1993 the group has published
&quot;Recruit Extra&quot; on Wednesdays during that busy period.&nbsp; </p>

<p>HKTP has a 10-year exclusive licence with <a href="http://www.mtr.com.hk/" target="_blank">Mass
Transit Railway Corporation</a> to distribute Recruit at MTR stations in return
for an annual licence fee equal to 30% of HKTP's net profit for each financial
year. The licence <b>expires in less than 2 years</b>, on 2-Jul-02. All income
of the Panda-Recruit group received from recruitment advertisements in Hong Kong
(presumably including job-ads on the web site) is treated as income of HKTP for
the purpose of the MTRC's licence fee. </p>

<p>One of the biggest risk factors in that model is that in 2 years
time, a newly floated MTRC may decide to renegotiate its contract or simply open
the stations to other competing publications. Recruit depends heavily on
reaching passengers who make 2.2m journeys during an average weekday. </p>

<h3>Ownership</h3>

<p>In Mar-92, HKTP was capitalised by an issue of 100,000 shares to
its 4 founders, Century Faith Investments Ltd (<b>Century Faith</b>), Mr Chow,
Pearl &amp; Dean Ltd and Martin Clinch &amp; Associates. </p>

<p>Pearl &amp; Dean Ltd became <a href="http://www.jcdpearlndean.com/" target="_blank">JC
Decaux Pearl &amp; Dean Ltd</a> (<b>JCDP&amp;D</b>) after it was taken over
recently by French outdoor media group <a href="http://www.decaux.com/" target="_blank">Decaux
SA</a>. That's chaired by Jean-Claude Decaux, who claims to have created the
first advertising bus shelter, free of charge to local authorities, over 30
years ago (presumably in France). In Hong Kong, JCD&amp;D specialises in display
advertising in MTR stations and at the HK airport. </p>

<p>Martin Clinch &amp; Associates became Publi Promotion Network
Asia Holdings Ltd, which the savvy&nbsp; PR guys presumably realised was too
long, so it is known as Publicitas Asia, and is a division of Swiss-listed <a href="http://www.publigroupe.com/" target="_blank">PubliGroupe
Ltd</a>. On a global basis, <a href="http://www.publicitas.com/" target="_blank">Publicitas</a>
handles some of the advertising sales for over 2,000 newspapers and magazines in
21 countries. </p>

<p>By Nov-94, a further 5,000 shares in HKTP had been issued and
each share was exchanged for a share in a new holding company, Recruit Holdings
Ltd (<b>RHL</b>). The ownership of this remained unchanged until 25-May-00. Up
to that point, the owners were: </p>

  <table class="numtable center fcl">
    <tr>
      <th>Name</th>
      <th>Shares in RHL</th>
      <th>Stake (%)</th>
    </tr>
    <tr>
      <td>Mr Chow</td>
      <td>12,375</td>
      <td>11.79</td>
    </tr>
    <tr>
      <td>Century Faith</td>
      <td>35,625</td>
      <td>33.93</td>
    </tr>
    <tr>
      <td>JCDP&amp;D</td>
      <td>28,500</td>
      <td>27.14</td>
    </tr>
    <tr>
      <td>Publicitas Asia</td>
      <td>28,500</td>
      <td>27.14</td>
    </tr>
    <tr>
      <td>Total</td>
      <td>105,000</td>
      <td>100.00</td>
    </tr>
  </table>

<h4>The hidden owners </h4>

<p>Century Faith Investment Ltd is 66.67% owned by <a href="http://www.greateagle.com.hk/" target="_blank">Great
Eagle Holdings Ltd</a>, which is the Hong Kong property group founded in 1963 by
its Chairman Lo Ying Shek. One of his sons is Lo Ka Shui, who is Deputy Chairman
and Managing Director of Great Eagle. He is also the Chairman of the GEM Listing
Committee. </p>

<p>In relation to Century Faith, the Panda-Recruit prospectus
states: </p>

<blockquote>

<p>&quot;the remaining 33.33% [is] held by independent third
parties&quot;. </p>

</blockquote>

<p>The prospectus also states that Lo Ka Shui represents Century
Faith on the board of Panda-Recruit, and: </p>

<blockquote>

<p>&quot;Apart from the representative nominated, the Directors [of
Panda-Recruit] and their respective associates as defined in the GEM listing
rules are independent from Century Faith&quot;. </p>

</blockquote>

<p><i>Webb-site.com</i> can reveal that the shareholders of Century
Faith are in fact as follows, as of the latest annual return filed in Oct-98: </p>

  <table class="numtable center fcl">
    <tr>
      <th>Name</th>
      <th>Shares</th>
      <th>Stake (%)</th>
    </tr>
    <tr>
      <td>The Great Eagle Company Ltd</td>
      <td>6</td>
      <td>66.67%</td>
    </tr>
    <tr>
      <td>Salespost Ltd</td>
      <td>2</td>
      <td>22.22%</td>
    </tr>
    <tr>
      <td>Chan Family Investment Corp Ltd</td>
      <td>1</td>
      <td>11.11%</td>
    </tr>
    <tr>
      <td>Total</td>
      <td>9</td>
      <td>100.00%</td>
    </tr>
  </table>

<p>Salespost Ltd has a registered address at the 34th Floor of <a href="http://www.shuion.com/images/photos/soc13.jpg" target="_blank">Shui
On Centre</a> in Wanchai. And guess what - that is the head office of the <a href="http://www.shuion.com/" target="_blank">Shui
On Group</a>, which is headed and was founded by Vincent Lo Hong Sui, who is
another son of Lo Ying Shek and brother of Lo Ka Shui, and is a Director of both
Panda Planet and Century Faith. A corporate communications spokesperson for Shui
On Group confirmed to <i>Webb-site.com </i>that Salespost is part of the private
Shui On group. </p>

<p>So it would seem that the prospectus is wrong and that another
director of Panda-Recruit does in fact have an interest in Century Faith. ING
Barings, the listing sponsor, did not return calls seeking comment. </p>

<p>You might be wondering about the third shareholder. That is a
private Cayman Islands company, so we are unable to check its owners, but a clue
is that the only director of Century Faith who is not a Lo is Mr Chan Wing Kee.
It may be a coincidence, but a person of that name is also the Managing Director
of HK-listed <a href="http://www.ygm.com.hk/" target="_blank">Yangtzekiang
Garment Mfg Co Ltd</a>, which was founded by his father, Chan Sui Kau. The
retail arm of the group is <a href="http://www.ygmtrading.com/" target="_blank">YGM
Trading</a>, and the Chan family controls both. </p>

<h3>Premier Printing Group</h3>

<p>In addition to Recruit, in Jan-94 or Oct-94 (depending on which
page of the prospectus you are on) the founders of HKTP established Premier
Printing Group Ltd (<b>PPG</b>) to undertake the printing projects of Recruit
and other newspapers in Hong Kong. </p>

<p>This was 20% owned by Panda-Recruit, 15% by Mr Chow and 25% by
Century Faith. The rest was held by two companies which the prospectus (again)
says are &quot;independent third parties&quot;; 25% by Highview Assets Ltd and
15% by Polygold Commerce &amp; Investment Ltd. We don't know who owns them. </p>

<p>On 31-Mar-00 Sing Tao Holdings Ltd (Mr Chow's former employer)
injected certain printing assets worth HK$80m into PPG in exchange for 50% of
the equity, diluting the founders proportionately. So Panda-Recruit now owns 10%
of PPG. </p>

<p><i>Webb-site.com </i>has extracted the performance of PPG from
the accountants' report of Panda-Recruit (after eliminating the effect of
Pandaplanet.com Ltd) and we find that it is in fact more profitable than Recruit
Holdings itself: </p>

<img class="center" alt="" src="../images/pandar1.gif">

<p>&nbsp;By comparison, the track record of Panda-Recruit Ltd is as
follows: </p>

<img class="center" alt="" src="../images/pandar2.gif">

<p>The overlapping shareholder bases of PPG and RHL suggest to us
that PPG should have been included in the float vehicle, firstly because PPG is
profitable and secondly because its shareholders have a clear interest in the
printing business awarded by Panda-Recruit. In fact, this trading escapes being
treated as a &quot;connected transaction&quot; because none of the substantial
shareholders of Recruit owns more than 35% of PPG. </p>

<h3>Pandaplanet.com Ltd</h3>

<p><a href="http://www.pandaplanet.com/" target="_blank">Pandaplanet</a>
was apparently conceived in a meeting on 17-Sep-99, in which RHL and 3 of its 4
founders agreed to fund the project (JCDP&amp;D did not take part). The web site
is the online companion to recruit, replacing the original <a href="http://www.recruitonline.com/" target="_blank">Recruit
Online</a> which was launched in Nov-96 and will be taken down on 31-Jul-00.
We're not sure why they felt the need to start again, except to have a different
company with a new brand that could be floated. The new site was launched in
Feb-00, at the height of dot-com mania. </p>

<p>The new Pandaplanet plans to conquer greater China. Frankly we
don't rate its chances highly. This is because each city-sized market (like Hong
Kong) is very self-contained, with only a small amount of hires from outside the
city in the case of the mass-market jobs that Recruit targets. So the online
companions of local newspapers are likely to have the first shot at the
competitive field, followed by any start-up that can get a relatively small
amount of capital together. Take Hong Kong for example - we have more than a
dozen web sites competing in the jobs sector, as shown in our <a href="../guide/hk/default.htm#jobs" target="_blank">Webb-Guide</a>. </p>

<p>In the Sep-99 meeting, RHL's stake in Pandaplanet was set at
37%. Relative to the other 2 shareholders (Century Faith and Publicitas Asia),
Mr Chow's interest was set higher than their interests in RHL, and their
participation was reduced accordingly. As a result, the stakes in
Pandaplanet.com were as follows: </p>

  <table class="numtable center fcl">
    <tr>
      <th>Name</th>
      <th>Stake (%)</th>
    </tr>
    <tr>
      <td>RHL</td>
      <td>37.0000</td>
    </tr>
    <tr>
      <td>Mr Chow</td>
      <td>16.4779</td>
    </tr>
    <tr>
      <td>Publicitas Asia</td>
      <td>20.6765</td>
    </tr>
    <tr>
      <td>Century Faith</td>
      <td>25.8546</td>
    </tr>
  </table>

<p>The participants advanced loans to Pandaplanet in proportion to
their interests, and then converted them into shares in two batches, on
19-Jan-00 (HK$2m) and 24-May-00 (HK$50m) for a total investment of <b>HK$52m</b>. </p>

<h3>Pre-IPO restructuring</h3>

<p>On 25-May-00, in preparation for the IPO, RHL acquired the
outstanding 63% of Pandaplanet in Exchange for 108,536 new shares in RHL (50.83%
of the enlarged company). </p>

<p>We don't know what valuations on RHL and Pandaplanet were used
for the merger, but the implication is that 100% of Pandaplanet was worth 80.7%
of the enlarged company while the old RHL (excluding Pandaplanet) was worth only
19.3%. If anyone lost out there, it was JCDP&amp;D, who had not participated in
Pandaplanet. </p>

<p>Finally, all the shares in RHL were swapped into a BVI company
that was then swapped for shares in Panda-Recruit, and here's the result: </p>

  <table class="numtable center fcl">
    <tr>
      <th>Name</th>
      <th>Shares</th>
      <th>Pre-IPO</th>
    </tr>
    <tr>
      <td>Mr Chow</td>
      <td>168,409,000</td>
      <td>18.71</td>
    </tr>
    <tr>
      <td>Century Faith</td>
      <td>264,912,000</td>
      <td>29.43</td>
    </tr>
    <tr>
      <td>JCDP&amp;D</td>
      <td>331,140,000</td>
      <td>36.79</td>
    </tr>
    <tr>
      <td>Publicitas Asia</td>
      <td>117,745,000</td>
      <td>13.08</td>
    </tr>
    <tr>
      <td>Pre-IPO placing</td>
      <td>17,794,000</td>
      <td>1.98</td>
    </tr>
    <tr>
      <td>Total</td>
      <td>900,000,000</td>
      <td>100.00</td>
    </tr>
  </table>

<p>That pre-IPO placing, worth $1.3m, was done at just $0.07306 per
share and the placees were 128 employees and 5 directors of Panda-Recruit, as
well as 13 employees of PPG. The price represents a 74% discount to the final
IPO price of $0.28. </p>

<p>The small size of the employee allocation makes us think that
either they will want a lot of share options in the future or they will be using
Recruit for its intended purpose. </p>

<h3>A poor reception</h3>

<p>The IPO offered 225m new shares (20% of the enlarged company) at
$0.28 per share (after an initial range of $0.26-$0.30). Of this, 25% was by
public offer and 75% by placing. </p>

<p>On the face of it, the public offer of 56.25m shares was 1.55
times subscribed, but if you look at the breakdown you find that one person
applied for 40m shares, and without that the offer would have been 0.84 times subscribed. </p>

<p>In fact, the top 10 applicants (out of 414) applied for 64m
shares, and the rest of the world applied for only 0.41 times the Public Offer.
In the Placing, 67.7% of the shares went to the 10 largest placees. </p>

<h3>Our view</h3>

<p>The IPO price of $0.28 values the company (before the new money)
at HK$252m.The old Recruit business (excluding PandaPlanet but including 20% of
PPG) made $8.31m in 1999. That's a p/e of <b>30x</b> for a business which is
ex-growth in its Hong Kong market. And in 2 years time its licence agreement
with the MTR expires with no certainty that it will be renewed. Meanwhile,
Pandaplanet will continue to burn money and counteract the profit in the rest of
the business. </p>

<p>Therefore the investor has to hope that the company will achieve
expansion in Greater China, something that it has barely started, in an a
fiercely competitive field, and in the case of the PRC, with a grey regulatory
framework. </p>

<p>Looking at the HK business, it seems unreasonable to think that
job advertisers will spend more on job-ads in the future than they have in the
past. It <u>is</u> reasonable to assume that they will spend some of their
budget on the internet, and if Recruit had not gone online then it would have
been outdated in a few years. In other words, the web site is a necessary step
to maintain the business of Recruit, but as yet there is no evidence that it can
actually add to profitability or market share. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10902">Allegro Culture Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=692">Lo, Ka Shui</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=698">Lo, Vincent Hong Sui</a></li>
				
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
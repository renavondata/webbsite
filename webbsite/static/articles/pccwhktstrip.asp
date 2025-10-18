
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

<script type="text/javascript">document.title="Behind the Telstra Deal";</script>

	<div class="summary">PCCW has begun to dismember C&W HKT even before it has bought it. Lining up a deal with Telstra yesterday, it will sell 40% of the mobile phone operations and borrow US$1.5bn in a subordinated convertible loan from Telstra. We take a look at the terms of the transaction, and update our valuation of PCCW with and without HKT, to take account of the slide in the market prices of its internet portfolio.</div>

<h2 class="center">Behind the Telstra Deal<br>
<span class="headlinedate">13 April 2000</span></h2>
<p>PCCW yesterday <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000413/LTN20000413019.doc" target="_blank">announced</a>
a highly conditional Memorandum of Understanding with <a href="http://www.telstra.com.au/corporate/" target="_blank">Telstra</a>
in which it has agreed to sell a 40% interest in something it doesn't yet own,
the <a href="http://www.cwhkt.com/" target="_blank">C&amp;W HKT</a> wireless
business. The deal also includes a US$1.5bn convertible loan from Telstra. </p>

<p>The deal was billed as a &quot;strategic alliance&quot; but on
closer inspection, the core of it is simply the HKT asset pre-sale. Telstra has
only modest mobile investments in Asia, which would be contributed into the
&quot;Regional Mobile Company&quot; (<b>RMC</b>) which would be 40% owned by Telstra and 60%
by PCCW-HKT. Therefore the bulk of Telstra's 40% stake would be paid for by
purchasing a stake in the JV for cash payable to PCCW-HKT, currently estimated
to be US$1.5bn. This money will then be used to pay down part of the US$12bn of debt which PCCW
will use to complete the merger with C&amp;W HKT. </p>

<p>In addition, Telstra and HKT would pool their international
submarine cable and related assets into a jointly held company. That's no great
news because little if any cash will change hands. Most of the World's undersea
cables are owned by consortia of multiple telephone companies which then lease
capacity on those cables, so the &quot;IP Backbone Company&quot; will just be a
pooling of such contractual interests along with some other hardware. Very few
operators own entire major cables outright. To see what we mean, <a href="http://corporate.singtel.com/press/1997/97jan15.htm" target="_blank">click
here</a> for information on the recent SEA-ME-WE3 cable consortium. </p>

<p>Other aspects of the announcement were just window dressing, for
example, the forthcoming PCCW &quot;Network of the World&quot; channel will be
made available to Australians. But that was always the case - it is on the
internet, which anyone can access. Indeed it will have to be free, because
Telstra is largely prohibited from being involved in pay-TV operations due to a
non-compete arrangement with <a href="http://www.foxtel.com.au/" target="_blank">Foxtel</a>,
of which it owns 50%. The rest is 25% is owned by Kerry Packer's Publishing and
Broadcasting Ltd and 25% by Murdoch's News Corp. </p>

<p>Another extraneous part of the deal was that they are going to
&quot;<i>aggregate Australian HTML content for global distribution</i>&quot;
which to us sounds like a search engine. And Australian content is already
available globally - that's how the net works. </p>

<p>The entire Telstra/ PCCW deal is conditional, amongst many
things, on completion of the acquisition of C&amp;W HKT. </p>

<h3>What does Telstra bring?</h3>

<p>Apart from throwing cash at the deal, Telstra brings very
little. The announcement was coy, saying only that <i> &quot;Telstra's mobile and
wireless infrastructure and assets that are located outside Australia&quot;</i>
would be included in the &quot;Regional Mobile Company&quot; (<b>RMC</b>). </p>

<p>In fact, Telstra's annual report (30-Jun-99) reveals that there
were stakes in just two
small mobile businesses. One of these is a 49%&nbsp; interest in <a href="http://www.modicorp.com/business/telstra.htm" target="_blank">Modi
Telstra Ltd</a>, which was effectively 25% owned by <a href="http://www.distacom.com/group/mbnet/index.html" target="_blank">Distacom</a>
(major shareholder of HK-listed <a href="http://www.sunday.com/" target="_blank">Sunday</a>)
and 26% owned by Indian conglomerate <a href="http://www.modicorp.com/" target="_blank">Modicorp</a>
(the latter two stakes being jointly held to give Indian control). However,
sources tell <i>Webb-site.com</i> that Telstra is in the process of selling its
stake to the other shareholders, leaving it as a 51:49 Modicorp:Distacom joint
venture. The operation (known as Mobile Net) had <a href="http://www.distacom.com/group/mbnet/graph.html" target="_blank">around
35,000</a> subscribers at the end of the 3rd quarter of 1999. </p>

<p>The remaining Asian mobile asset of Telstra is a 60% interest in
<a href="http://www.mobitellanka.com/" target="_blank"> Mobitel</a> of Sri Lanka. The
other 40% is owned by <a href="http://www.slt.lk/" target="_blank">Sri Lanka
Telecom</a>, which is 61.5% owned by the government, 35% by <a href="http://www.ntt.com/" target="_blank">NTT</a>
and 3.5% by employees. No information is available on that business, but we
presume it is small as it is only gets a one-line mention in the Telstra annual
report. </p>

<p>In order to count&nbsp; RMC as a subsidiary (and so deny claims
that it has sold control of the mobile business), PCCW will have a casting vote
in the RMC boardroom and retain at least 50.1% of RMC. This gives them ultimate
control, which means that Telstra is ultimately surrendering control of Mobitel. </p>

<p>Normally in joint ventures, neither party is allowed to transfer
control of their stake without first offering it to the others. It remains to be
seen whether the Sri Lankan Government will consent to a change in control of
its mobile operator.&nbsp; </p>

<p>C&amp;W-HKT's mobile assets outside HK are not that great
either. The only material business is an indirect 14.7% stake in <a href="http://www.m1.com.sg/" target="_blank">Mobile
One (Asia) Pte Ltd</a>, which was the second mobile phone operator in Singapore.
That is part of a 30% stake which is held by Great Eastern Telecommunications
Ltd, a joint venture company which in turn is 51% owned by <a href="http://www.cwplc.com/" target="_blank">Cable
&amp; Wireless plc</a> and 49% by C&amp;W HKT. The rest of Mobile One is owned 35% by Keppel
Group and 35% by Singapore Press Holdings. Last disclosed figures for
subscribers
were over 300,000, giving C&amp;WHKT at least 44,000 attributable users. That's minor compared to the Hong Kong mobile business. </p>

<h3>Valuation of HK Mobile Business</h3>

<p>All in all, it's a fair assumption that the value of the stake
in Mobile One and Mobitel roughly balance. We can only assume this, because
amongst the many conditions of the deal is that it is conditional on each side <i>&quot;undertaking
and being reasonably satisfied as to the results of due diligence and
valuation&quot;</i> in relation to the others <i>&quot;assets and
capabilities&quot;</i>. In other words, the valuations are not yet agreed. </p>

<p>Assuming that these values of the Mobile One and Mobitel stakes
are similar, then the US$1.5bn that Telstra will pay for its 40% interest in RMC
is effectively the price of 40% of the Hong Kong mobile business. That values
the whole thing at US$3.75bn for 920,000 customers, and implies a price per
subscriber of US$4,076. </p>

<h3>Subordinated Debt</h3>

<p>Telstra has also agreed (again, conditional on many things,
including the C&amp;W HKT deal completing) to lend US$1.5bn to PCCW in the form
of subordinated convertible loan notes. We say &quot;<u>lend</u>&quot; because
many reports have taken this to be an investment in shares. That ain't
necessarily so. The difference between you buying shares and Telstra buying
convertibles is that if the PCCW shares go down, Telstra can demand its money
back, but you, dear investor, cannot. So the loan is hardly an expression of
confidence in PCCW's shares.</p>

<p>The loan note is convertible at Telstra's option at HK$23.69 per
share (not, as widely reported, $19.74), a price at which PCCW shares only
briefly traded before commencing their swan dive. Meanwhile they pay interest at
3% p.a. quarterly stepping up to 5% p.a. after 4 years. At Telstra's option,
half the loan note can be redeemed after 4 years, and the rest after a further 2
years. PCCW can only force the note to convert after 4 years if the share price
(averaged over 15 days) exceeds $28.43, or after 6 years if the share price
(again averaged) exceeds $26.06.</p>

<p>The Telstra debt is what bankers like to call
&quot;subordinate&quot; (they, on the other hand, are insubordinate). So it
ranks behind the US$12bn loan advanced by Bank of China and colleagues for the
C&amp;W-HKT takeover. No wonder the ratings agencies have said that they are
re-evaluating Telstra's credit rating.</p>

<p>The key thing to bear in mind here is that unless the PCCW share
price ever gets back up above the conversion price (and stays there) then Telstra
will want its money back.</p>

<h3>The Internet Space...or Vacuum</h3>

<p>Later in this article we will review our valuation of PCCW in
the light of the collapsing share prices of PCCW's investment portfolio. Just 4
weeks ago, on 18-Mar-00, PCCW was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000320/LTN20000320031.HTM" target="_blank">crowing</a>
over US$1bn of paper gains on its portfolio as at 16-Mar-00.</p>

<p>Since then, CMGI has fallen 43% to US$70.4365 (at 12-Apr-00),
wiping US$436m off PCCW's stake, Hikari Tsushin International has fallen 44% to
HK$1.24 (at 13-Apr-00, split-adjusted), wiping US$118.8m off the stake, Softnet
has fallen 49% to $16.6875 (at 12-Apr-00), wiping US$79.7m off the stake, and
Tom.com has fallen only 29% to HK$7.85, wiping US$49.0m off the stake (way to
go, Tom!). Add that all up, and PCCW's main listed portfolio has fallen by <b>US$684m</b>.
Ah well, easy come, easy go....that reduces the US$1,026m of paper gains from a
month ago to just US$342m.</p>

<p>For all Hikari's supposed internet expertise, the <a href="http://www.goldenpower.com.hk/" target="_blank">web
site</a> is still under the old Golden Power name.</p>

<p>Spare a thought for poor Richard though. Back on 11-Feb-00, in a
deal tagged at US$1bn, Mr Li <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000214/LTN20000214096.HTM" target="_blank">swapped</a>
332,526,000 existing shares in PCCW (then trading at HK$23.40) for 510,200
existing shares in fellow bubble stock Hikari Tsushin Inc, with its Chairman Mr
Yasumitsu Shigeta. Hikari's shares were valued at Y213,000 each but have since
collapsed 85% to around Y32,000 (its difficult to tell, because they have been
&quot;limit down&quot; for many days on the Tokyo Exchange - this figure is from
overseas trade). Mr Li has a paper
loss of around US$850m, whereas he would have lost only US$295m (29.5%) if he
had kept the PCCW shares.</p>

<p>In its announcement of that swap, PCCW said in part:</p>

<blockquote>

<p>&quot;the two companies share similarities and complimentary
strengths. Both companies place equal value on operations and investments to
further their core activities...&quot;</p>

<p>it continued</p>

<p>&quot;in Japan, Hikari's reputation places it solidly at the
forefront of the nation's IT revolution&quot;</p>

</blockquote>

<p>What a long time two months is in the internet space... or is
that vacuum?</p>

<h3 id="valuation">Valuation</h3>

<p>If the C&amp;W-HKT deal completes, PCCW will have a fully
diluted capital of about 22.15bn shares. If the Telstra loan note converts, this
will result in about 494m shares or about 2.2% of PCCW. Since this is a small
increase in the capital, the effect of the conversion is to add only about
HK$0.39 per share to the fair value of PCCW. And that will only happen if the
share price reaches $23.69, so we can safely ignore that for now.</p>

<p>Accordingly we will treat the loan note as debt, and look at the
22.15bn shares in issue. Here's our sum of the parts valuation of PCCW, assuming
the C&amp;W-HKT deal <b>does not complete</b>:</p>

  <table class="numtable center fcl">
    <tr>
      <th>Component</th>
      <th>Value (US$m)</th>
      </tr>
      <tr>
        <td>Pro forma net assets after PCC acquisition</td>
        <td>294</td>
      </tr>
      <tr>
        <td>Assumed conversion of all bonds (at HK$0.31)</td>
        <td>124</td>
      </tr>
      <tr>
        <td>Net cash from subsequent share issues</td>
        <td>2,285</td>
      </tr>
      <tr>
        <td>Present value of Cyberport future profits</td>
        <td>1,200</td>
      </tr>
      <tr>
        <td>Original book cost of CMGI stake</td>
        <td>350</td>
      </tr>
      <tr>
        <td>Listed portfolio gains to date</td>
        <td>342</td>
      </tr>
      <tr>
        <td>Future broadband satellite network, unbuilt, net present value:</td>
        <td>2,000</td>
      </tr>
      <tr>
        <td>TOTAL<br>
        </td>
        <td><b>6,595</b></td>
      </tr>
      <tr>
        <td>Shares in issue (fully diluted)</td>
        <td>13.5bn</td>
      </tr>
      <tr>
        <td><b>Fair value per share</b> (US$1=HK$ @7.79)</td>
        <td><b>HK$3.81</b></td>
      </tr>
    </table>

<p>The most subjective item in the above table is what you think
the broadband satellite-based delivery network will be worth, and any value you
attach to the future &quot;Network of the World&quot; channel. We think we're
being generous here, since little of this has been built or paid for yet. See
our <a href="justhangup.asp" target="_blank">previous analysis</a> of this. </p>

<p>Now, if the C&amp;W HKT deal <b>does complete</b>, we bring it
in at our previous valuation of HK$14 per share (which is around 20x forward
earnings), valuing C&amp;W HKT at HK$170bn (US$21.9bn): </p>
  <table class="numtable center fcl">
    <tr>
      <th>Component</th>
      <th>Value (US$m)</th>
    </tr>
    <tr>
      <td>PCCW</td>
      <td>6,595</td>
    </tr>
    <tr>
      <td>C&amp;W HKT</td>
      <td>21,900</td>
    </tr>
    <tr>
      <td>Less: cash element of takeover</td>
      <td>(11,300)</td>
    </tr>
    <tr>
      <td>TOTAL<br>
      </td>
      <td><b>17,195</b><br>
      </td>
    </tr>
    <tr>
      <td>Shares in issue</td>
      <td>22.15bn</td>
    </tr>
    <tr>
      <td>Fair value per share</td>
      <td><b>HK$6.05</b></td>
    </tr>
  </table>

<p>So the C&amp;W-HKT merger, if it completes, will raise the fair
value by 59% to HK$6.05 per share. </p>

<p>The closing price of HK$16.50 today values the enlarged PCCW-HKT
at about US$47bn, which implies about US$30bn of air still in the bubble if you
agree with our valuation of about US$17bn. The market value would have to rise
to US$67bn in order for the Telstra subordinated loan note to convert. </p>

<p>Of course, some analysts will talk to you about the ability of
PCCW to go on doing &quot;value accreting transactions&quot; but that just means
issuing shares at over-valuation to buy things or raise cash. You can do that
when you are small, but when you are a US$47bn company then it becomes almost
impossible to find big enough targets to add much value to the shares, since you
are averaging the acquired value over such a large base of existing shares. The
game no longer works. </p>

<h3>Jumping the Gun</h3>

<p>Referring to the Scheme of Arrangement to be put to
C&amp;W-HKT's shareholders, in its latest announcement PCCW says: </p>

<blockquote>

<p>&quot;Cable &amp; Wireless plc, which owns approximately 54% of
the shares of HKT, has given PCCW an irrevocable acceptance of the Offer and an
undertaking to vote in favour of or assent to the Scheme&quot; </p>

</blockquote>

<p>That's being somewhat economical with the truth, and in our
opinion it omits a fact which makes that statement misleading. The fact is, the
irrevocable acceptance is conditional, amongst other things, on the approval of
shareholders of C&amp;W plc in general meeting in the UK. The date of that
meeting has yet to be announced but it won't be for several weeks yet. If the
shareholders of C&amp;W plc vote down the sale of the 54% stake in HKT, then the
deal will be scrapped. </p>

<p>So this is the pivotal meeting, and it will depend on whether
C&amp;W plc shareholders really understand what they are getting. With the PCCW
share price now well below the &quot;crossover point&quot; of $18.62, most
people will elect for the cash-and-shares alternative, leaving C&amp;W plc with
about 20% of PCCW. Not quite what they hoped, and a big overhang on the market
price. </p>

<p>Yet PCCW is still pushing the misinformation forward. Speaking
on CNN after the Telstra announcement on 12-Apr-00, Alex Arena, MD of PCCW,
said: </p>

<blockquote>

<p>&quot;a very positive thing happened only a couple of weeks ago,
and that was that the board of Hong Kong Telecom actually voted unanimously in
favour of a scheme of arrangement...&quot; </p>

</blockquote>

<p>Let's be quite clear. The board resolved only that a scheme of
arrangement, rather than a general offer, should be the mode of the Offer, but
they did not decide whether or not to recommend to shareholders that they accept
the Offer. That fact was stated in a corrective <a href="http://www.hkex.com.hk/listedco/listconews/20000329/LTN20000329067.HTM" target="_blank">announcement</a>
the day after the meeting Mr Arena was referring to, because Linus Cheung (HKT's
CEO) reportedly came out of the meeting making the same mis-statement. They have
simply formed an independent committee to review the Offer, and their views will
be contained in a document to be posted on or before 18-May-00. </p>

<p>Hold on to your seats, the best is yet to come. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=375">CABLE & WIRELESS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=368">PCCW-HKT Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=39425">Telstra Corporation Limited</a></li>
				
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
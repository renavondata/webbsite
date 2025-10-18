
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

<script type="text/javascript">document.title="Gates' Way to China";</script>

	<div class="summary">Bill Gates, as trustee of his US$27bn foundation, has made late disclosure of holdings in 2 HK-listed stocks which spiked 38% and 17% on the news. We'll tell you who the foundation is probably dealing with and what else it might own, but don't get excited - Mr Gates has better things to do than pick Chinese small-caps.</div>

<h2 class="center">Gates' Way to China<br>
<span class="headlinedate">9 August 2004</span></h2>
<p>Bill Gates, as the trustee of the
<a target="_blank" href="http://www.gatesfoundation.org/">Bill and Melinda Gates Foundation</a>, has made his first disclosures of 
interests in the shares of two small HK-listed companies, Ocean Grand Chemicals 
Holdings Ltd (<b>OGC</b>, 2882), and H-share Beiren Printing Machinery Holdings 
Ltd (<b>BPM</b>,0187). For our overseas readers, an H-share is a HK-listed stock 
issued by a mainland-China incorporated company.</p>

<h3>Late disclosure</h3>

<p>Under
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/e1bf50c09a33d3dc482564840019d2f4/6f2787ca1c511e5748256bba0013c75f">
Section 325</a> of Hong Kong's
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&Start=568.1.1&Count=455">
Securities and Futures Ordinance</a>, persons who become interested in 5% or 
more of a class of listed shares must disclose their interest within 3 business 
days (bizarrely including Saturdays) of the transaction date, or within 3 
business days of the date on which the relevant event <i>&quot;comes to his knowledge&quot;</i> 
if later.</p>

<p>Mr Gates'
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=5283&lang=EN&dia=Y">
disclosure</a> of 5.38% of OGC and his
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=5282&lang=EN&dia=Y">disclosure</a> of 7.08% of the H-shares of BPM were not published until 
3-Aug-04, having been filed with the Stock Exchange on 26-Jul-04. SEHK has not 
publicly explained what caused the delay, which was reportedly due to missing 
details on the submission.</p>

<p>The actual purchases were made on 2-Jul-04, although the filings claimed that 
Gates did not &quot;become aware&quot; of the event until 10 days later on 12-Jul-04. So 
much for
<a target="_blank" href="http://www.amazon.com/exec/obidos/ASIN/0446675962/webbsitecom/">
Business @ the Speed of Thought</a>. Even if you accept that &quot;awareness&quot; date as 
your starting point, the filing would have been due by 15-Jul-04, but was not 
made until 11 days later and then was apparently not complete enough to be 
published, so in our view, it doesn't count. It was not until 32 days after the 
original transactions that the disclosures were finally published.</p>

<p>This is not the first time that Mr Gates has had discloseable interests 
around the world. He is a very experienced investor and as the world's richest 
man he has probably the world's largest private portfolio under his control. The 
Gates Foundation alone had investments of US$26.4bn at the end of 2003. He has also 
been steadily selling Microsoft shares for years to diversify his portfolio, 
including investments held through a wholly-owned vehicle, Cascade Investment 
LLC, which sometimes invests in parallel with the foundation.</p>

<p>While the Gates Foundation has commendable charitable activities, it also has 
the benefit of legally
<a target="_blank" href="http://www.savewealth.com/planning/estate/foundations/">
avoiding tax</a> on the disposal of the Microsoft shares with which it was 
endowed, at the same time as giving him a tax deduction for the donation (which 
he can probably use to offset income from his other investments), and whilst 
still allowing Gates ultimately to control the investment of the assets as 
trustee.</p>

<h3>Not the first time</h3>

<p>Gates has had previous disclosure problems. In May-04, he was
<a target="_blank" href="http://www.ftc.gov/os/caselist/0310258/0310258.htm">
ordered</a> by a Federal District Court to pay a civil penalty of US$800,000 for 
violating the reporting requirements of the Hart-Scott-Rodino Pre-merger 
Notification Act. The violations were caused by acquiring stakes in two US 
companies. In the first case, not unlike the present situation, he &quot;discovered&quot; 
the violation after the 2-Nov-01 purchase which took him over 10% of Republic 
Services Inc, and then made a filing 14 days later. The Federal Trade Commission 
(<b>FTC</b>) issued a warning letter at the time, stating that it would not ask for fines 
for a first offence, but that he:</p>

<blockquote>

<p>&quot;is accountable for instituting an effective program for entities he controls 
to ensure full compliance with the Act's requirements&quot;.</p>

</blockquote>

<p>Six months later, on 9-May-02 he committed the second violation involving a 
purchase of shares in ICOS Corporation, of which he was a director.</p>

<p>Unfortunately, it appears that any compliance program instigated after the 
FTC action did not extend to <i>&quot;an effective program&quot;</i> for 
ensuring compliance with overseas securities laws. It 
will be interesting to see what action our own Securities and Futures Commission 
takes, if any, to prosecute Mr Gates for late disclosure.</p>

<h3>Bill in a China shop?</h3>

<p>With a portfolio in the tens of billions, readers will realise that small investments like a 
US$3m stake in OGC are not something that Mr Gates can spend even a second 
thinking about. If he has made any decision at all, it would only be to put some 
of the foundation's equity portfolio into Chinese stocks. Anything more detailed 
would be delegated to a portfolio manager, either internal or external to the 
foundation. We think we know who.</p>

<p>A close analysis of the disclosures by <i>Webb-site.com</i> shows several 
things:</p>

<ul>
  <li>the purchases of 5.38% of OGC and 7.08% of BPM's H-shares were not made 
  slowly, but in single &quot;block trades&quot; crossed in the market, with zero 
  positions beforehand</li>
  <li>On the same day, UBS AG
  <a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=19037&lang=EN&dia=Y">
  ceased</a> to have a &quot;security interest&quot; in 5.38% of OGC and
  <a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=18998&lang=EN&dia=Y">
  ceased</a> to have a &quot;security interest&quot; in shares worth 7.70% of BPM</li>
</ul>

<p>Let us pause to explain that a &quot;security interest&quot; is obtained by a person 
when stock is pledged to them as collateral, normally for a loan.</p>

<div class="regbox">
  Regulatory note: as an aside not relevant to this story, banks and 
brokers are  exempt from disclosure obligations on security interests, 
which means that the investing public has no idea when a controlling shareholder 
has pledged his soul and stock to the devil who is about to foreclose and burn 
the company's stock price to the ground. The Government should scrap this 
exemption. It is also often abused by certain brokers who have de facto control 
  over a listed company via the controlling shareholder, causing the company to 
  engage in strangely uncommercial transactions even though it is apparently 
  independent from the broker.</div>

<p>Anyway, for some reason, <a target="_blank" href="http://www.ubs.com">UBS AG</a> 
either is not exempt or does not take advantage of this exemption. It may have 
something to do with being a holding company for the entire group rather than a 
bank itself. Several of its disclosures were also filed long after the relevant 
events.</p>

<p>But there's more. UBS AG is the holder of investment quota - the right to 
invest in mainland-listed &quot;A&quot; shares under the Qualified Foreign Institutional 
Investment (<b>QFII</b>) scheme of the China Securities Regulatory Commission. 
Such stocks are normally only available to domestic investors due to the PRC's 
capital controls. UBS AG provides access to this quota to institutional clients, 
one of which is the
<a target="_blank" href="http://edition.cnn.com/2003/BUSINESS/07/03/china.ashares/">
Martin Currie China Hedge Fund</a> (<b>MC</b>), managed by Shanghai-based
<a target="_blank" href="http://www.martincurrie.com/aboutus/people/?page_id=42&area=8">
Chris Ruffle</a> of Edinburgh-based
<a target="_blank" href="http://www.martincurrie.com/">Martin Currie Ltd</a>. 
Ruffle declined to comment on the situation.</p>

<p>Martin Currie reached 5.09% of OGC on 14-Oct-03, and also went over the 5% 
threshold in BPM on 14-Oct-03, rising to 7.26% by 8-Jan-04. Disclosure 
requirements are based on whole percentage boundaries, so as there have been no 
subsequent disclosures, we know that Martin Currie still has an interest in 
between 5-6% of OGC and 7-8% of BPM.</p>

<p>What this suggests to us is a strong likelihood of the following scenario:</p>

<ul>
  <li>MC, in common with many hedge funds, probably uses 
UBS as a &quot;prime broker&quot; to conduct its investment business, and the portfolio, 
or large parts of it, is provided as collateral for loans to &quot;leverage&quot; the 
fund, creating the security interest.</li>
  <li>The Gates Foundation's purchases appear to have 
resulted in the security interest of UBS in the same shares ceasing, or being 
removed from the collateral pool, but there has been no reduction in the 
disclosed interests of Martin Currie.</li>
  <li>So it seems likely that the Gates Foundation has 
awarded an investment mandate to Martin Currie to manage a segregated portfolio 
of HK/Chinese stocks.</li>
</ul>

<h3>So what else could they be into?</h3>

<p>Our research indicates that Martin Currie is currently interested in more 
than 5% of the following HK-listed stocks. So if we are right about the 
relationship with the Gates Foundation, then some or all of these stocks may 
also be in the foundation portfolio, but below the 5% threshold. A number of 
them are GEM stocks acquired by MC at or near the IPOs:</p>

<img class="center" alt="" src="../images/gatesw1.gif">

<p>It's a fair bet that the foundation does not hold any
<a target="_blank" href="../dbpub/articles.asp?p=16414">Leroi Holdings Ltd</a> (0221) as this has 
been suspended since 27-Feb-04 pending an ICAC investigation.</p>

<p>The Gates Foundation recently received QFII approval to invest in mainland 
A-shares, so Martin Currie may also be working on that alongside their own 
funds.</p>

<p>OK, so now you have some idea of what is probably going on. But this is NOT a 
reason to go out and buy any of the above-named stocks. We make no comment on 
their investment merits or demerits, and neither does Bill Gates - he probably 
doesn't know anything about them. When OGC shot up 38% in reaction to the 
disclosure, whoever manages the foundation's portfolio reacted quite rationally, 
and sold stock, cutting the holding back below the 5% disclosure threshold. And for once at least, Gates'
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=5294&lang=EN&dia=Y">
disclosure</a> was on time.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17952">3DG HOLDINGS (INTERNATIONAL) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4771">Beijing Jingcheng Machinery Electric Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41660">Martin Currie (Holdings) Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2469">Gates, William Henry III</a></li>
				
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
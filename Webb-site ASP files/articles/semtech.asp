
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

<script type="text/javascript">document.title="The Semtech saga";</script>

	<div class="summary">In this side story to Part 3, we look at the scandals which surrounded Sino-Tech International Holdings Ltd in 2004, the subsequent convictions, possible options abuse and the missing deposit on a failed Vietnamese chromium mining project.</div>

<h2 class="center">The Semtech saga<br>
<span class="headlinedate">23 June 2009</span></h2>
<div class="summary">
This is a side-piece to our <a href="CBRT.asp">story</a> on B M Intelligence, now known as China 
Bio-Med Regeneration Technology (8158).
</div>
<ul class="navlist">
	<li><a href="CBRT.asp">Main story</a></li>
	<li id="livebutton">Semtech</li>
	<li><a href="gpnano.asp">GP Nanotechnology</a></li>
</ul>
<div class="clear"></div>
<p>As we explain in our main article, <a href="../dbpub/orgdata.asp?p=13754">China Bio-Med 
Regeneration Technology Ltd</a> (<strong>CBRT</strong>, 8158, formerly known as &quot;B M 
Intelligence International Ltd&quot;) was originally in the business of providing 
pre-IPO advice and structuring for companies applying for listing. One of these 
clients was <a href="../dbpub/articles.asp?p=10865">Sino-Tech International Holdings Ltd</a> 
(<strong>SIH</strong>, 0724), listed on 3-Jul-00 as &quot;Millennium Sense Holdings Ltd&quot; and 
later notoriously known as &quot;Semtech International Holdings Ltd&quot;.</p>
<p>On 
24-Nov-03, Smart Number Investments Ltd (BVI, <strong>Smart Number</strong>) 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031125/LTN20031125016.pdf">bought</a> 66.67% of SIH for 
HK$34m or $0.34 per share. Smart Number was 40% owned by
<a href="../dbpub/natperson.asp?p=11154">Derek Kanjanapas/Wong Chong Kwong</a> (<strong>Derek 
Wong</strong>), 40% by Ms <a href="../dbpub/natperson.asp?p=15672">Lam Pik Wah</a> and 20% by her younger 
brother <a href="../dbpub/positions.asp?p=18129">Lam Hung Kit</a>. The deal triggered a general offer, made by 
<a href="../dbpub/officers.asp?p=15005">Altus Capital Ltd</a>. The 
stock price took off, the offer
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040102/LTN20040102078.pdf">
closed</a> on 2-Jan-04 with minimal acceptances.</p>
<p>On 5-Jan-04, SIH granted options to 13 non-director employees to subscribe 
15m shares (equal to the maximum 10% of existing shares) at $0.347, which were 
all exercised that day.</p>
<p>On 13-Jan-04 there was 
a top-up
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040113/LTN20040113092.pdf">
placing</a> of 30m shares (exhausting the general mandate) at $0.63 via Kingston Securities 
Ltd. On 24-Feb-04 SIH
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040225/LTN20040225048.pdf">
convened</a> a meeting to refresh the share option scheme and the general issue 
mandate, which was held on 11-Mar-04.</p>
<p>On 15-Mar-04 SIH
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040316/LTN20040316019.pdf">
announced</a> the proposed acquisition of Key Legend Ltd (<strong>Key Legend</strong>) 
from its only director Mr Wan Bin Hung for $46.4m, satisfied by issuing 58m 
shares (22.9% of enlarged) at $0.80 (the market price). Key Legend had only 
commenced operations in Jan-2003 and was &quot;engaged in the manufacturing and 
distribution of high-ends (sic) electronic parts and components&quot; with a factory 
in Dongguan. The 2004 net profit of Key Legend was warranted at $25m and it had 
net tangible assets of $44.2m. The acquisition of Key Legend was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040326/LTN20040326054.pdf">
approved</a> in a general meeting on 20-Apr-04.</p>
<p>On 1-Apr-04, SIH granted options to non-director employees to subscribe 19.5m 
shares (equal to the maximum 10% of issued shares) at $1.014, which were all 
exercised that day. This was the second time in 3 months that SIH had blown 
its 10% option scheme in one go and then seen all the options almost instantly 
exercised.</p>
<p class="regbox"><strong>Note to regulators:</strong> It is difficult to believe that the purpose of diluting shareholders by 20% 
in 3 months is to motivate employees, particularly when they exercise the 
options immediately, thereby forfeiting the time value of the options. It is 
more likely that the option scheme is being used as a back-door placing 
mechanism to indirectly issue shares to third parties. We have seen several 
other companies using the same method. In cases such as this, regulators should 
be investigating whether the employees actually received the benefit of the 
options. We note that there is a pending
<a target="_blank" href="../codocs/ICAC080108.pdf">ICAC court case</a> involving 
Pacific Challenge Holdings Ltd (now <a href="../dbpub/articles.asp?p=7078">New Times Group 
Holdings Ltd</a>) where it is alleged 
that the employees were just fronts for someone else.</p>
<p>On 12-May-04 there as another top-up
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040512/LTN20040512095.pdf">
placing</a> of 20m shares at $1.13 via VC Brokerage Ltd, and on 2-Jul-04 a third
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040707/LTN20040707033.pdf">
placing</a> of 19m shares at $1.30, also via VC Brokerage. On 5-Jul-04 there was 
a conditional agreement to issue a convertible note to a fund managed by 
<a href="../dbpub/orgdata.asp?p=1469">Value 
Partners Ltd</a> for $25.87m, convertible into 19.9m shares at $1.30, bearing 
interest at 3-month HIBOR+2%, with 2.5 year maturity. Value Partners was a 
big-name investor which would add endorsement value but which was also insuring 
its downside by taking a bond rather than equity.</p>
<p>The shares were suspended on 12-Jul-04, because the ICAC had
<a target="_blank" href="../codocs/ICAC040712.pdf">arrested</a> nine people, 
including Derek Wong and another &quot;senior executive&quot; of SIH, as well as Derek 
Wong's secretary. $1.5m in suspected bribe cash was seized. The convertible note 
agreement with Value Partners was terminated on 15-Jul-04, and the third placing 
agreement lapsed on 1-Aug-04. Derek Wong
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040909/LTN20040909023.pdf">
resigned</a> from SIH on 8-Sep-04, and the stock resumed trading the next day. 
On 15-Oct-04, he
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041018/LTN20041018029.pdf">
exchanged</a> his 40% share of Smart Number for 40% of the 86m SIH shares it 
held, leaving Smart Number with 51.6m shares and owned 2/3 by Lam Pik Wah and 
1/3 by Lam Hung Kit.</p>
<p>On 24-Jul-07, Derek Wong was
<a target="_blank" href="../codocs/ICAC070724.pdf">convicted</a> of two counts 
of offering an advantage to an agent in relation to a share placement of SIH. He 
wasn't in court to hear the verdict though - he had done a runner, and is
<a target="_blank" href="http://www.icac.org.hk/en/law_enforcement/wp/index_uid_29.html">
still a fugitive</a> (call 25 266 366 if you've seen him). Meanwhile Earnest 
Leung Chi Wah (<strong>Earnest Leung</strong>), who was a director of American 
Express Bank Ltd, was convicted of accepting an advantage of $400,000 for 
procuring the bank to purchase shares of SIH for clients, while Mr Yung Ka Tim (<strong>K 
T Yung</strong>), who was a divisional managing director of VC Brokerage, was 
convicted of receiving money to influence an investment analyst of VC Brokerage 
to put out a buy note on SIH. Earnest Leung and K T Yung were each was
<a target="_blank" href="../codocs/ICAC070725a.pdf">sentenced</a> to 23 months 
in jail. However, on appeal, their convictions
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=62993&amp;currpage=T">
were quashed</a> on 23-Oct-08, and a retrial was not ordered, because both had 
substantially served their sentences.</p>
<p>The transcripts of the original verdict are not available online - this is a 
deficiency in the judiciary's web site - an analyst who does not have time to 
attend court hearings can usually only find out what happened if there is an 
appeal. So from the appeal judgment, here's 
what happened...</p>
<h3>Earnest Leung</h3>
<p>The appeal judgment outlined the prosecution's case:</p>
<blockquote>
	<p>&quot;On 9 July 2004, [Derek Wong] and [Earnest Leung] each drove 
	their cars along Supreme Court Road to a turning circle at the end of that road 
	in the vicinity of the High Court where [Derek Wong] left his vehicle carrying 
	an envelope containing $400,000 and got into [Earnest Leung]'s vehicle. There he 
	remained for 30 seconds or so before alighting and returning to his own vehicle 
	leaving the envelope and the cash it contained on the passenger seat of [Earnest 
	Leung]'s vehicle. [Earnest Leung] drove off but was almost immediately 
	intercepted by ICAC officers who had been alerted to the meeting.</p>
	<p>After [Earnest Leung]'s vehicle was stopped, a number of ICAC 
	officers got into it. They introduced themselves and instructed [Earnest Leung] 
	to drive his car to a place next to the nearby Conrad Hotel to allow other 
	traffic to pass. There [Earnest Leung] was questioned about the envelope and its 
	contents which had been found on the vehicle's passenger seat. [Earnest Leung] 
	replied that the envelope had been "thrown" into the car by [Derek Wong]. The 
	ICAC officers decided to direct [Earnest Leung] to drive his car back to the 
	scene of the interception where by now [Derek Wong] had also been arrested, and 
	[Earnest Leung] did so by a somewhat circuitous route around Admiralty and via 
	Harcourt Road. Once back at the scene and after the money had been counted and 
	found to total $400,000, [Earnest Leung] was asked why [Derek Wong] had given it 
	to him. [Earnest Leung] said that it had been a loan to him from [Derek Wong] to 
	allow him to pay for renovations to his flat.</p>
	<p>A record of these events and of [Earnest Leung]'s statements 
	was made in the notebook of an ICAC officer while still at the scene. [Earnest 
	Leung] refused to sign the notebook entry and he was then taken to the ICAC 
	offices in Central.&quot;</p>
</blockquote>
<p>The appeal judges said regarding the defence:</p>
<blockquote>
	<p>&quot;[Earnest Leung]'s case revolved around the evidence of his 
	witness [Norman Koo]. It was to the effect that at the material time [Derek 
	Wong] and [Earnest Leung] together with [Norman Koo] were involved in starting 
	up a cosmetics business which, pursuant to the terms of what was said to be the 
	business plan for the venture (a copy of which was produced by [Norman Koo] as 
	Exhibit D2-22), required $200,000 to be injected by [Earnest Leung] and $400,000 
	to be injected by [Derek Wong] as at 1 July 2004.</p>
	<p>[Earnest Leung]'s case was, on the basis of [Norman Koo]'s 
	evidence and as put in submissions, that the $400,000 cash placed in his car by 
	[Derek Wong] could well have been the funds to be injected by [Derek Wong] in 
	the new business. That being a possibility, it was argued on behalf of [Earnest 
	Leung], there must have been, on the facts established, a doubt as to whether 
	the $400,000 was a ...reward for... [Earnest Leung] showing or having shown 
	favour to [Derek Wong] in relation to... the shares of Semtech." The judge, as 
	matters transpired, rejected the evidence of [Norman Koo] and the contents of 
	Exhibit D2-22 as being of any assistance to [Earnest Leung] ...and proceeded to 
	infer, in the manner set out above, that the $400,000 was a bribe as charged. In 
	doing so, and for the reasons he gave, he applied the principles of <em>Li Defan</em> 
	on the basis that [Earnest Leung] had failed himself to give evidence in 
	circumstances where the judge had rejected the evidence of [Norman Koo].&quot;</p>
</blockquote>
<p>The principle they are referring to was in the Court of Final Appeal case of
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=35042&amp;currpage=T">
<em>Li Defan v HKSAR</em></a> (2002):</p>
<blockquote>
	&quot;there are sometimes cases in which the prosecution case on a 
	particular issue may be strengthened by the failure of the accused to put 
	forward any contradiction or explanation in circumstances in which he could be 
	expected to know the truth and be willing, if innocent, to testify under oath... 
	The absence of a denial or explanation by the accused is still not treated as an 
	independent admission but may in particular circumstances give the prosecution 
	evidence greater probative force than it would gain from being merely 
	uncontradicted.&quot;
</blockquote>
<p>Later the appeal judges said:</p>
<blockquote>
	<p>&quot;We anxiously considered in the present case whether the 
	judge's reasoning in the application of the principle could be restricted to an 
	absence of explanation by [Earnest Leung] as to why the payment was in the form 
	of cash, and provided in a brown envelope at an unusual meeting in Supreme Court 
	road. If it had been so restricted there may well have been a more arguable 
	justification for the application of the principle.</p>
	<p>However the terms of the judge's reasoning referred quite 
	clearly and simply to the general payment of the sum of $400,000 by [Derek Wong] 
	to [Earnest Leung] and were not restricted to either the form or manner of the 
	payment. In those circumstances it seems to us that the judge's reasoning failed 
	to take into account that [Earnest Leung] had called a considerable body of 
	evidence which went to the central issue in [Earnest Leung]'s case in offering 
	an explanation consistent with innocence as to why the payment may have been 
	made.</p>
</blockquote>
<p>The appeal judges concluded:</p>
<blockquote>
	&quot;the judge was in error in applying the principle in <em>Li 
	Defan</em> and particularly so on the basis that he had rejected the evidence of 
	Norman Koo and that there was as a result no evidence given or called by 
	[Earnest Leung] in support of his case.&quot;
</blockquote>
<p>because the defendant could not have known what evidence would be eventually 
accepted or rejected when he decided not to testify. So the conviction was 
quashed. Earnest Leung is now gainfully employed by 
<a href="../dbpub/orgdata.asp?p=9753">Vision Tech International Holdings Ltd</a> (0922), which
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090604/LTN20090604900.pdf">
appointed</a> him as ED on 4-Jun-09 and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090610/LTN20090610421.pdf">
as CEO</a> on 10-Jun-09.</p>
<h3>K T Yung</h3>
<p>The appeal judgment outlined the prosecution's case regarding K T Yung:</p>
<blockquote>
	<p>&quot;On 10 June 2004, [Derek Wong] instructed his secretary [Becky 
	Wong Pui Sze] to collect money from the offices of
	<a href="../dbpub/natperson.asp?p=16641">Carl Gouw</a> and to deliver it to [K T 
	Yung]. She did so, collecting the money in an envelope given to her by Carmen 
	Cheung who was [Carl Gouw]'s secretary. She had been provided with the mobile 
	telephone number of [K T Yung] and arranged to meet him at the Mandarin Hotel 
	coffee shop. She had never met [K T Yung] but when she arrived at the coffee 
	shop, a man answering his description was there and she approached him. She told 
	him she was [Derek Wong]'s secretary and gave him the envelope containing the 
	money. Her evidence was that she knew there was money inside the envelope as she 
	had looked inside and seen banknotes. She was able to do so as the envelope was 
	unsealed.</p>
	<p>Following the arrest of [Derek Wong] and [Earnest Leung], a 
	month later [K T Yung] was also arrested. He said nothing under caution.&quot;</p>
</blockquote>
<p>However, after K T Yung was arrested, no identification parade was held, and 
the prosecutor gave no reason for that. Also the appeal judges said:</p>
<blockquote>
	<p>&quot;[Becky Wong] collected the money from [Carmen Cheung], the 
	secretary of [Carl Gouw], a member of the family which also happened at this 
	time to be selling a large block of [SIH] shares. There were contradictions 
	between the evidence of [Becky Wong] and [Carmen Cheung] as to the collection of 
	this money. [Becky Wong] said she collected an unsealed envelope from [Carmen 
	Cheung], looked inside and saw there was a sum of money. She did not count the 
	money and could not say what amount it was though she was told by [Carmen 
	Cheung] that there was $170,000 in the envelope. [Carmen Cheung] on the other 
	hand gave evidence to the effect that the envelope she handed to [Becky Wong] on 
	10 June 2004 was sealed and that she did not know what was in it, and had not 
	told [Becky Wong] that there was $170,000 in the envelope. She had been told 
	there were documents inside the envelope...&quot;</p>
	<p>[K T Yung]'s case at trial was based simply on an attack upon 
	the reliability of [Beck Wong]'s evidence as to there being money in the 
	envelope provided by her to the man in the coffee shop, and to submitting that 
	the circumstantial nature of the prosecution's evidence identifying [K T Yung] 
	as that man was such that it was simply insufficient to prove that to be so...</p>
	<p>In our view the approach taken by [K T Yung] in his own case 
	was simply to attack the fundamentals of the prosecution case. It was not the 
	exceptional sort of case where the stage had been reached that the prosecution 
	case against [K T Yung] could be said to have required some answer or 
	explanation from him.&quot;</p>
</blockquote>
<p>So as with Earnest Leung, they concluded:</p>
<blockquote>
	&quot;the strengthening of any prosecution inference sought against 
	[K T Yung] by the application of the principles expressed in Li Defan was inappropriate. 
	This ground [of appeal] as with [Earnest Leung], must succeed.&quot;
</blockquote>
<h3>The other case</h3>
<p>The Semtech case also spun off a much higher profile case involving an 
alleged conspiracy to pervert the course of public justice, namely, after Becky 
Wong was arrested, she became an ICAC protected witness and was granted immunity 
from prosection, and there was an alleged conspiracy amongst Derek Wong, his 
lover Mandy Chui Man Si, his solicitor <a href="../dbpub/positions.asp?p=5979">
Andrew Lam Ping Cheung</a> and a barrister, <a href="../dbpub/natarts.asp?p=45002">
Kevin Barry Egan</a>, to spring her, culminating in a
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=43111&amp;currpage=T">
writ of <em>Habeas Corpus</em></a>. Kevin Egan was convicted and sentenced to 30 
months in jail, but his conviction was overturned by a 2:1 majority
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=64338&amp;currpage=T">ruling</a> in the Court of Appeal on 12-Feb-09. The convictions against the 
other three were upheld, Mandy Chui's sentence was 2.5 years, and in the other 
two cases the sentences were
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=65877&amp;currpage=T">
increased</a> by the Court of Appeal - Andrew Lam's sentence went from 4 years 
to 6 years and Derek Wong's from 3 years to 5 years (if they ever catch him).</p>
<h3>More options</h3>
<p>As mentioned above, SIH was a heavy issuer of options, having exhausted the 
limit (equal to 10% of existing shares) twice in 3 months in 2004. On 26-Oct-05 it granted 29.25m 
options (equal to the maximum 10% of existing shares) to 11 &quot;customers and 
suppliers&quot; at $0.71, which were all exercised by 31-Dec-05.</p>
<p>On 10-May-06 SIH
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060511/LTN20060511055.pdf">
launched</a> a placing of 58m shares at $0.90 via OSK Asia Securities Ltd, 
raising $52.2m gross ($51m net).</p>
<p>On 5-Aug-06, SIH granted 26.575m options to &quot;customers, suppliers and other 
eligible persons&quot; and 11.4m options to employees at an exercise price of $1.246 
($0.1246 split-adjusted). The total number of 37.975m options (379.75m 
split-adjusted) granted to 11 participants again exhausted the 10% limit under 
the option scheme. None was exercised in 2006, 2007 or 2008. 2m (split-adjusted: 
20m) employee options lapsed in 2008.</p>
<h3>Failed Vietnam chromium mining project</h3>
<p>On 16-Jul-07, after the stock closed at $5.09, up 233% since 7-Jun-07, SIH
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070716/LTN20070716354.pdf">
announced</a> that it didn't know why the price was up, but it was in 
negotiations to invest in a Vietnamese chromium mine. On 17-Jul-07, the stock 
hit a record daily high of $5.64 ($0.564 split-adjusted), up 268% since 
7-Jun-07, and was suspended after the morning session. At this point SIH had a 
market value of $2,141m.</p>
<p>A month later, it was announced that on 17-Jul-07 SIH conditionally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070816/LTN20070816338.pdf">
agreed</a> to buy 80% of Trung Hai Investment Co Ltd (Vietnam, <strong>Trung Hai</strong>) 
from Li Tianmin (<strong>Mr Li</strong>), who owned 100% of it, for HK$300m, 
comprising $88m in cash and 42.4m shares at $5. Three days earlier, Trung Hai 
had signed a JV with Viet Nam Aditives Mine Joint Stock Co to establish a 49:51 JV called Vinaminco Vietnam Mineral 
Exploiting-Processing Group Ltd Co (<strong>Vinaminco</strong>), the operations 
of which were expected to be &quot;exploiting, refining and export of chromium&quot;. 
Vinaminco &quot;expected to be granted&quot; mining rights to 1.5m tonnes of unrefined 
<a target="_blank" href="http://en.wikipedia.org/wiki/Chromite">chromite</a> with an estimated 450,000 tonnes of refined chromite in two mines over 
500 hectares, amounting to HK$31.5bn in value of refined chromite at a market 
price of HK$70,000 per tonne, according to SIH. It was 
unclear how much it would cost to develop the mine, but Trung Hai was to 
&quot;arrange financing&quot; of US$10.82m (HK$84.4m) in the form of a loan on normal 
commercial terms, secured by the mining rights.</p>
<p>Trung Hai was newly-incorporated on 18-May-07 and had net assets of just 
US$1m. So at HK$300m (US$38.5m) SIH was apparently paying a huge 48-fold mark-up for its 80% share. 
A deposit of US$2.5m (HK$19.5m) was paid to Mr Li within 30 days of signing, 
apparently without any security. We know nothing about 
him.</p>
<p>On 31-Oct-07 SIH
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071031/LTN20071031374.pdf">
announced</a> a 10:1 stock split and a bonus issue of 1 warrant for every 5 
shares held, exercisable at $0.48 per split share for 2 years. The stock split 
took effect on 19-Dec-07. On that date, SIH
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20071219/LTN20071219312.pdf">
announced</a> that Vinaminco was still waiting for an exploration permit, so the 
estimated reserves could not be verified, and completion of the acquisition 
would be delayed to 31-Mar-08 or earlier.</p>
<p>On 27-Mar-08, SIH
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080327/LTN20080327337.pdf">
announced</a> that it had received a letter from Mr Li dated 26-Mar-08, 
terminating the deal. SIH &quot;consulted with Mr Li&quot; and understood that he had &quot;met with representatives of the Vietnam 
government&quot; and &quot;the investment permit in respect of the...mines for Vinaminco 
will likely be revoked due to lack of progress in the project.&quot; Mr Li had agreed 
to return the US$2.5m deposit without interest within 3 months.</p>
<p>In its 2008 results
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090415/LTN20090415745.pdf">
announced</a> on 15-Apr-09, SIH finally admitted that Mr Li had not refunded the 
deposit, and booked an impairment loss on the entire $19.6m amount &quot;due to the 
uncertainty in its recoverability&quot;, reducing net profit to just $6.4m. 
Bizarrely, they categorised this loss within the &quot;electronic components&quot; segment 
of the group. The
earlier
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080919/LTN20080919517.pdf">
interim results</a> for the six months to 30-Jun-08 contained no mention of Mr Li's failure to repay on time. 
Investors should not have been kept in the dark for so long. SIH has not said 
what steps, if any, are being taken to pursue Mr Li.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=15005">ALTUS CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9753">Anxian Yuan China Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13754">China Regenerative Medicine International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10865">Ruixin International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5685">STANDARD CHARTERED INTERNATIONAL (USA) LTD.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=48717">VC BROKERAGE LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=45011">Chui, Mandy Man Si</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=45002">Egan, Kevin Barry H</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=5979">Lam, Andrew Ping Cheung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=18129">Lam, Hung Kit</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15672">Lam, Pik Wah (1958)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=44940">Leung, Earnest Chi Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=45019">Wong, Becky Pui See</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11154">Wong, Derek Chong Kwong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2775">Yung, Ka Tim</a></li>
				
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
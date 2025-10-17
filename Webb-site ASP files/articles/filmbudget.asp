
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

<script type="text/javascript">document.title="Lights, camera...budget!";</script>

	<div class="summary">We look at the recent history of HK Government intervention in the movie industry, the land grants involved, and the proposal to throw HK$300m of public money into private movie production. We urge LegCo to cut this scene from Hong Kong's script. Tell them what you think in our opinion poll.</div>

<h2 class="center">Lights, camera...budget!<br>
<span class="headlinedate">9 March 2007</span></h2>
<p>The recent <a target="_blank" href="http://www.budget.gov.hk/">Hong Kong 
budget</a> speech by Henry Tang, while completely devoid of any structural 
reforms, was pleasingly short on new interventionist schemes. However, there is one 
that stood out like a bad scene from a B-movie and should be 
dumped by LegCo on the cutting-room floor. We refer, of course, to his 
<a target="_blank" href="http://www.budget.gov.hk/2007/eng/budget14.htm">proposal</a> to 
establish a new fund to &quot;help finance film production&quot; and &quot;overcome the 
shortage of talent&quot; (in the film industry, not the Finance Bureau).</p>
<p>Mr Tang, who has obviously seen a few too many triad movies (the stories, we 
mean), would like to 
spend HK$300m of the public's money on this, in an undisclosed timeframe. That's equivalent to $50,000 for 
each of the 6,000 people in the HK film industry in 2001, the latest figure we can 
find.</p>
<h3>History</h3>
<p>It's worth pausing to remind you that the
<a target="_blank" href="http://www.gld.gov.hk/egazette/pdf/20061031e/egn2006103172.pdf">
Performing Arts Sub-sub-sector</a> of the 796-member Election Committee which 
chooses Hong Kong's Chief Executive has 10 votes, and the sub-sector overall 
(which includes Performing Arts, Sports, Culture and Publication) has 40 votes. 
There is an additional Election Committee vote held by the legislator for that 
sector.</p>
<p>The recent history of Government intervention in the film industry comes from 
the Film Services Advisory Committee (<b>FSAC</b>),
<a target="_blank" href="http://www.info.gov.hk/gia/general/199805/01/0501132.htm">
established</a> during the Tung dynasty, which
<a target="_blank" href="http://www.info.gov.hk/gia/general/200510/18/P200510180097.htm">
morphed</a> into the Film Development Committee during the current Tsang dynasty on 
1-Nov-05. It all started with Tung's
<a target="_blank" href="http://www.policyaddress.gov.hk/pa97/english/patext.htm">
1997 Policy Address</a>:</p>
<blockquote>
	<p>&quot;We will set up a <a target="_blank" href="http://www.fso-tela.gov.hk/">
	Film Services Office</a> to help the industry with production and location 
	shooting issues. To help the development of this industry, a site designated 
	for film production use has been included in this year's land disposal 
	programme. In addition, the Secretary for Broadcasting, Culture and Sport 
	will establish and chair a Film Services Advisory Committee to promote 
	dialogue between the industry and Government.&quot;</p>
</blockquote>
<h4>The sub-plot</h4>
<p>That sounds fairly innocuous, apart from the bit about allocating land that 
could only possibly be bid for by a few major studios who could then vacate 
existing land and apply to redevelop it. And that's what happened. 
In 1998, after a tender which received just 2 bids, the Government
<a target="_blank" href="http://www.info.gov.hk/gia/general/199808/12/0812106.htm">
sold</a> a 29,800 sq m piece of land known as Tseung Kwan O Town Lot No. 67 to a 
consortium company called Hong Kong Movie City Co Ltd (<b>HKMC</b>) for just 
HK$78m. The site allowed a plot ratio of 2 and hence a gross floor area of 
59,600 sq m. At the time, HKMC was majority-owned by Shaw Holdings Inc. (37%) 
and its listed subsidiary, Shaw Brothers (Hong Kong) Ltd (<b>SB</b>, 0080) 
(35%), with 5 other members holding 28%. SB also controls the larger of the 2 
local TV broadcasters, <a target="_blank" href="../dbpub/articles.asp?p=688">Television Broadcasts 
Ltd</a> (0511).</p>
<h4>Episode II</h4>
<div class="leftpicbox" style="max-width:213px">
	<img src="../images/YodaShaw.jpg" alt="Jedi Knight, Sir Run-run Shaw: give me that site!">
	<p>Jedi Knight, Sir Run-run Shaw: give me that site!</p>
</div>
<p>They came back for a sequel, however. In Tung's
<a target="_blank" href="http://www.policyaddress.gov.hk/pa99/eindex.htm">1999 
Policy Address</a>, you won't find any mention of this, but if you dig deeper 
into the numerous
<a target="_blank" href="http://www.policyaddress.gov.hk/pa99/english/obje.htm">
Policy Objectives Booklets</a> released on the same day, you will find one 
titled
<a target="_blank" href="http://www.policyaddress.gov.hk/pa99/english/epo/ebroad.pdf">
Broadcast and Film Services</a>, and there, the statement:</p>
<blockquote>
	<p>&quot;To encourage infrastructural investment in film production, we shall 
	make available a site for film production facilities in the 1999-2000 land 
	sale programme&quot;</p>
</blockquote>
<p>Not just any piece of land but, it turns out, the site next to the first one. 
Who could possibly have a special interest in winning that? On 16-Aug-00, after 
a
<a target="_blank" href="http://www.gld.gov.hk/egazette/pdf/20000424/egn200004242034.pdf">
tender</a> which attracted only 1 bid, the Government
<a target="_blank" href="http://www.info.gov.hk/gia/general/200008/16/0816179.htm">
sold</a> the site next door, Tseung Kwan O Town Lot No. 81, to
<a target="_blank" href="http://www.gld.gov.hk/egazette/pdf/20000439/egn200004396463.pdf">
Hong Kong Digital Movie City Co Ltd</a> (<b>HKDMC</b>), for just HK$18m. This 
site, half the size of its neighbour, had an area of 14,600 sq m and allowed an 
extra 29,200 sq m of floor area. You won't be surprised to learn that HKMC and 
HKDMC had common ownership. In Mar-02, the consortium was
<a target="_blank" href="http://shawonline.sbmedia.sg/shawstory/shawstory13.htm">
restructured</a>, with Shaw holding 95% (including the 35% still held by SB) and 
a private arm of China Star holding 5%.</p>
<p>The result is a combined site of 44,400 sq m (477,900 sq ft). Somehow even 
that has been enlarged, as it is now
<a target="_blank" href="http://www.shawstudios.hk/overview.htm">quoted</a> as 
523,000 sq ft, with a floor area of 1.1m sq ft. Now, a top-notch US$180m 1.1m sq ft complex known as
<a target="_blank" href="http://www.shawstudios.hk">Shaw Studios</a> (formerly 
Movie City) is almost finished. Meanwhile on 20-Oct-06, SB
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061212/0080/EWF102.pdf">
received</a> Town Planning Board approval to redevelop its Clearwater Bay site 
into about 920,000 sq ft of residential and commercial space, which might make 
you wonder - why didn't they just build their new Movie City on that original 
site? Whatever the reason, that wouldn't have allowed them to make a 
redevelopment profit.</p>
<h4>Film Development Fund</h4>
<p>But we digress. Let's get back to that poverty-stricken film industry, you 
know, the one that cannot afford US$180m studio complexes and has no land to 
redevelop. Inbetween the two land sales, in his
<a target="_blank" href="http://www.policyaddress.gov.hk/pa98/english/econ1.htm">
1998 Policy Address</a>, Tung announced a subsidy of $100m for the Film 
Development Fund (<b>FDF</b>). </p>
<blockquote>
	<p>&quot;To help our film industry keep pace with new technology and skills, we 
	propose to set up a $100 million 
	<a target="_blank" href="http://www.fso-tela.gov.hk/fdf/">Film Development Fund</a> in 1999. This Fund 
	will promote innovation by supporting projects aimed at enhancing the 
	industry's professional and technological capabilities; stimulating the 
	growth of creative productions; facilitating the use of advanced special 
	effects techniques; and improving the skills of employees.&quot;</p>
</blockquote>
<p>However, some filmmakers thought they could get the fund to finance their 
private productions. As the Government
<a target="_blank" href="http://www.info.gov.hk/gia/general/199912/22/1222201.htm">
clarified</a> on 22-Dec-99:</p>
<blockquote>
	<p>&quot;The main purpose of the Film Development Fund is to finance projects 
	that will benefit the long-term development of the Hong Kong film industry 
	and serve the interests of the entire film industry. Film production 
	applications which mainly benefit individual private companies instead of 
	the entire film industry do not fulfil the vetting criteria for the Fund and 
	are therefore not financed under the Fund.&quot;</p>
</blockquote>
<h4>Film Guarantee Fund</h4>
<p>Then on 17-Oct-02, the Government went a step further towards direct funding 
of private film projects, when a
<a target="_blank" href="http://www.legco.gov.hk/yr02-03/english/panels/itb/papers/itbcb1-89-e.pdf">consultation paper</a> was
<a target="_blank" href="http://www.info.gov.hk/gia/general/200210/17/1017175.htm">
published</a> proposing to set aside $50m of the FDF for a 
<a target="_blank" href="http://www.fso-tela.gov.hk/fgf/">Film Guarantee Fund</a> (<b>FGF</b>). 
Providing loan guarantees is a favourite Government way of claiming not to be 
subsidising an industry while at the same time being liable for its losses. 
They've done it with various funds for Small and Medium Enterprises too. On the 
FGF, they said:</p>
<blockquote>
	<p>&quot;This is a loan guarantee scheme. The Government has no intention to 
	invest or take part in film production,&quot; the spokesman emphasised.</p>
</blockquote>
<p>It's always good to emphasise these things, so that we remember them 5 years 
later. Thankfully, the FGF had various strings attached, including that at least half the cast and crew must be 
HK permanent residents, the film company has to bear at least 30% of the budget, 
the FGF would only guarantee 50% of the loan provided by a financial institution 
on a risk-sharing basis, up to a maximum of HK$2.625m, and the film company had made at least 3 films for 
commercial theatrical release in the last 10 years. Finally, your name had to 
begin with &quot;X&quot;. Alright, we made the last criterion up, but the rest are true, 
and it kept the numbers down.</p>
<p>The latest
<a target="_blank" href="http://www.fso-tela.gov.hk/pub/report/QuaRpt_Eng_22.pdf">
progress report</a> shows that 10 applications were made from Apr-03 to Oct-06, 
all of which received loan guarantees, of which 1 never drew the loan and the 
other 9 did, for a total guarantee commitment of $20m. An 11th project was 
approved on 29-Jan-07. As a result of this low usage, on 14-Dec-04, the FSAC
<a target="_blank" href="http://www.info.gov.hk/gia/general/200412/14/1214242.htm">
reallocated</a> $20m of the $50m back to the FDF, which by then was almost 
empty. In Mar-05, LegCo
<a target="_blank" href="http://www.legco.gov.hk/yr04-05/english/fc/fc/papers/f04-48e.pdf">
approved</a> this and relaxed the experience criterion to 2 films in 10 years.</p>
<p>The <a target="_blank" href="http://www.fso-tela.gov.hk/doc/AC_Eng.pdf">list 
of film loans guaranteed by the FGF</a> shows that the 11 loan guarantees have 
gone to just 7 companies, with 4 of them receiving two guarantees each. Two went 
to Mandarin Films Ltd, owned by <a target="_blank" href="../dbpub/articles.asp?p=14072">Mandarin 
Entertainment (Holdings) Ltd</a> (0009). Another two went to Panorama 
Distributions Co Ltd, owned by <a target="_blank" href="../dbpub/articles.asp?p=15780">Intelli-Media 
Group (Holdings) Ltd</a> (8173). One went to One Hundred Years of Film Co Ltd, 
owned by <a target="_blank" href="../dbpub/articles.asp?p=4799">China Star Entertainment Ltd</a> 
(0326). Another went to Brilliant Idea Group Ltd, which was 50% and is now 95% 
owned by Mei Ah Entertainment Group Ltd (0391). So 4 of the 7 recipients, and 6 
of the 11 loan guarantees, went to subsidiaries of listed companies, which have 
other sources of finance, like the stock market, for example. Taxpayers will be 
glad to know that their money is on the line to support these listed companies.</p>
<p>On 18-Oct-05, the Government gave the FSAC a new name, the Film Development 
Committee (<b>FDC</b>), and stopped chairing it, instead appointing Jack So 
Chak-kwong, the Managing Director of PCCW Ltd (0008), which runs a pay-TV 
service.</p>
<p>Then, in the latest
<a target="_blank" href="http://www.policyaddress.gov.hk/06-07/eng/p30.html">
Policy Address</a> on 11-Oct-06, Executive Producer Tsang announced that he would 
upgrade and again rename the FDC, without changing its initials, to the Film 
Development Council, &quot;mainly comprising members of the film industry&quot;, as before.</p>
<h3>The present</h3>
<p>And that synopsis brings us up to the present, or if you prefer, the 
gift, of HK$300m of taxpayers money for the new Film Development Council to play 
with. It makes Tung's $100m look like a trailer for the main feature. We've gone 
all the way from simply facilitating movie shoots by closing roads or renting 
shooting locations, to direct funding of movie production. And still, the Government denies it 
is a subsidy - listen to Joseph Wong, Secretary for Commerce, Industry and 
Technology,
<a target="_blank" href="http://www.info.gov.hk/gia/general/200703/07/P200703070286.htm">
speaking</a> on 7-Mar-07:</p>
<blockquote>
	<p>&quot;I would not categorise this support as subsidy. In a sense it is a limited 
	support in the form of investment...&quot;</p>
</blockquote>
<p>Oh really? According to the
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?pp_cat=11&art_id=39661&sid=12560220&con_type=1">
press</a>, Wong says the Government will invest in movies up to 30% of the 
production cost. Now either they are going to pick and choose the movie 
projects, becoming an active movie fund manager, or they are going to invest in 
every movie which meets certain criteria, in which case all they are doing is 
lowering the overall cost of making movies in HK at taxpayers' expense. In the 
former case, movies which don't get the funding will be at a competitive 
disadvantage to those that do. In either case, it distorts the economy.</p>
<h3>Two thumbs down</h3>
<p>The movie industry should stand or fall on its own merits. There is no 
justification for such blatant intervention in any for-profit sector of our 
economy. If a movie is worth making, then it should find its own funding in the 
free market. If it succeeds, its backers will make a profit, and if not, they 
won't, but the Government has no business throwing public money at it, or 
picking and choosing winners. As we have shown, the local movie industry has a 
number of listed companies, large and small, and is perfectly capable of finding 
and funding its own way.</p>
<p>And if they get their hand-out, where are 
these movie makers going to film their movies? Well don't forget Shaw 
Studios, which has a brand new and very expensively constructed studio on very 
cheap land. Some of your money may end up being spent on renting their studios.</p>
<h3>What do you think?</h3>
<p>Your opinion counts! Do you agree or disagree? Take part in our
<a target="_blank" href="../vote/poll.asp?p=18">Movie Fund opinion poll</a>, and we will send 
the overall result to Legislators who are being asked to approve this plan.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=438">Clear Water Bay Land Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=56821">HONG KONG DIGITAL MOVIE CITY COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=30112">Hong Kong Film Development Council</a></li>
				
				<li><a href="/dbpub/articles.asp?p=38598">SHAW MOVIE CITY HONG KONG LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=688">TELEVISION BROADCASTS LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=192">Tax & budget</a></li>
				
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
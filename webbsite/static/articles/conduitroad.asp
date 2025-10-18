
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

<script type="text/javascript">document.title="Conduit controversy";</script>

	<div class="summary">After watching politicians and the Government thrashing around trying to understand the aborted transactions in a small private building in Conduit Road, it is time for Webb-site to intervene and seek truth from facts. We also call for free online access to the Land Registry to increase transparency.</div>

<h2 class="center">Conduit controversy<br>
<span class="headlinedate">12 July 2010</span></h2>
<p>We must admit to being tempted to let <a href="../dbpub/orgdata.asp?p=412">Henderson Land Development Ltd</a> (<strong>HLD</strong>, 
0012) stew in its own juices and let the populist politicians flay them over the
<a href="http://www.39conduitroad.com.hk" target="_blank">39 Conduit Road</a> 
project. So we did for a bit, but now it's time for Webb-site to intervene. The Government's 
<a href="http://www.landsd.gov.hk/" target="_blank">Lands Department</a> and 
even
<a href="http://www.legco.gov.hk/yr09-10/english/panels/hg/papers/hgcb1-2365-2-e.pdf" target="_blank">the police</a> have got in on the story - for 
a change the Government seems keen to be seen 
acting tough against a developer, after all the past allegations of collusion 
with Hong Kong's feudal property lords who dominate the domestic economy in so 
many sectors.</p>
<p>However, for once, we find ourselves rising to the defence.</p>
<h3>Background &amp; history</h3>
<p>The patch of land at 39 Conduit Road is formally &quot;Section A and the Remaining Portion of Inland Lot No. 
7898&quot;, on a government lease granted for 75 years from 20-Nov-1911 (trivia: 
the day of the world premiere of Gustav Mahler's &quot;The Song of The Earth&quot;) with a 
right of renewal for one further period of 75 years. So the remaining lease runs 
for 51 years to 2061. Part of the site once held a 44-unit apartment block called Rockymount, completed 
in Mar-1964. Before that, there was probably a mansion. [Update: the lot number 
on the developer's web site may be wrong. That site was originally Inland Lot 
1898, as shown by the <a href="../codocs/Gazette1911_S322.pdf">Gazette Notice</a> 
of land auction in 1911].</p>
<p>The site (before the current sale) is 60.75% owned by Carry Express Investment Ltd (HK, <strong>Carry 
Express</strong>) and 39.25% by Nation Sheen Ltd (HK, <strong>Nation Sheen</strong>). 
Carry 
Express was incorporated in 1960 (then known as Tyson Investments Ltd) and was 
the original developer of Rockymount, whereas Nation Sheen was a relative 
newcomer, incorporated in 1999. The Agreement and Conditions of Exchange signed 
by Carry Express relating to the previous development was dated 20-Aug-1962.</p>
<p>Some light is shed on the site's history by a
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=68362&amp;currpage=T" target="_blank">
court action</a> in which Elton Chow Sing Yuet, an architect, is suing Carry 
Express for fees arising from a 1991 contract. Between 1988 and 1991, Carry 
Express had accumulated 22 of the 44 units in Rockymount but was having 
difficulty persuading owners to sell the rest. Carry Express had also acquired 
the land at the rear of Rockymount, known as the &quot;Remaining Portion&quot; of the lot. 
Carry Express told the court that in an attempt to scare out the remaining 
owners, it pretended to plan development of a building on the Remaining Portion, 
hoping that this would persuade the Rockymount owners to sell before the 
development in their back yard started, and that the architect had been engaged 
as part of that pretence. The architect did not sue until 2007, and the 
judgement of a preliminary issue notes that the main trial is due to commence in 
July 2010 (this month).</p>
<p>HLD
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080609/LTN20080609008.pdf" target="_blank">
bought</a> its 60% interest in the project in a connected transaction on 
6-Jun-2008 from the family trust of Lee Shau Kee, HLD's Chairman and controlling 
shareholder, when the building's superstructure had already been completed. Carry Express was 100% owned by Washington Engineering Ltd (HK, <strong>
Washington</strong>), while Nation Sheen was indirectly 100% owned by Cityline 
Venture Ltd (BVI, <strong>Cityline</strong>). Washington and Cityline were each 
30% owned by Furnline Ltd (BVI, <strong>Furnline</strong>) and Perfect Bright 
Properties Inc. (BVI, <strong>Perfect Bright</strong>), both of which were 
&quot;controlled&quot; by the trust, if not 100% owned. The reason the trust 
used two different 
holding companies with equal shareholdings is unknown to us, but perhaps the 
trust earmarks one for each of the Chairman's sons. Probably because of sloppy 
tax-planning, Furnline and Perfect Bright had other assets besides their stakes 
in Washington and Cityline, and we suspect that these could not easily be moved 
out before the sale. So instead, HLD acquired all the &quot;B Shares&quot; in each of 
Furnline and Bright Properties, and these shares carry all the economic 
interests in the &quot;B Assets&quot;, namely the shares in Washington and Cityline.</p>
<p>So, through the B-shares of Furnline and Perfect Bright, HLD has a 60% 
interest in the project. All the media attention has been on HLD, but it is not 
the only owner of the project. 32% of Washington and Cityline are owned by Yeung 
Sai Hong (<strong>Mr Yeung</strong>) who has other joint developments with HLD. 
The remaining 8% is owned by the Executors of an estate, presumably of a dead 
person, although s/he was not named.</p>
<p>Mr Yeung is apparently something of a deal-maker. On 30-Sep-2005, he and 
Yeung Kwok Sang
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20051003/LTN20051003026.pdf" target="_blank">
sold</a> a 70% interest in a company which had assembled all but one apartment 
(11 out of 12) in a redevelopment site then known as Villa Splendor, at 9-12 
Chun Fai Terrace, Tai Hang, HK Island, to <a href="../dbpub/orgdata.asp?p=432">
New World Development Co Ltd</a> (<strong>NWD</strong>, 0017). The auction 
reserve pricing of the compulsory purchase of the remaining unit is something 
that we will write about another time, because it highlights the inequities of 
the building approvals system in HK.</p>
<p>Mr Yeung is a director of privately-held
<a href="../dbpub/orgdata.asp?p=20076">Peterson Holdings Co Ltd</a>, known until 
1994 as &quot;Peterson Embroidery Co Ltd&quot;, which suggests that the family money came 
from the textile industry. Nowadays, they are mainly in property and hotels. 
Previous residential joint ventures with HLD include Metropolitan Rise at 28 Ma 
Tau Kok Road, Kowloon (completed in 2001, 80% HLD) and Splendid Place at 39 Taikoo Shing Road, HK Island 
(75% HLD, 2004). Another joint venture with NWD was Bon Point at 11 
Bonham Road, HK Island (2004, 70% NWD).</p>
<h3>Tax</h3>
<p>The announcement of HLD's buy-in to the venture in 2008 stated that of the 
two subsidiaries, Carry Express intended 
to hold its 60.75% of the finished units (allocated by value) for &quot;long term 
investment purposes&quot;, while Nation Sheen intended to sell its 39.25% share of 
the finished units. We note that in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090907/LTN20090907093.pdf" target="_blank">
Jun-2009 interim report</a>, HLD said that 40 of the 66 residential units were 
&quot;for investment purpose&quot;, very close to the 60.75% figure. However, it appears to have 
later changed its mind, saying in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100428/LTN20100428078.pdf" target="_blank">
Dec-2009 annual report</a> (p13-14) that only 17 units are for investment 
purpose. So it appears that both companies are marketing their units for sale. 
Perhaps Carry Express will try to claim that its sales were capital assets and 
hence generated capital gains, which are tax-free, rather than taxable profits.</p>
<p>This would not be unprecedented - indeed, a company owned by Mr Yeung, 
Weson Investment Ltd, successfully appealed a tax claim in a similar case. In 
1993, Weson purchased a parcel of land in Tsuen Wan District, New Territories, 
and in early 1995 it subdivided the land into two for the purpose of building a 
service station on one part. It sold the redeveloped part which sale completed 
in Jun-1996. Eventually in Dec-1999 the Inland Revenue assessed the profit for 
tax. Weson appealed this in 2002, and the Board of Review granted the appeal in 
2003. Tax appeals are usually private, but this
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=45903&amp;currpage=T" target="_blank">
came to light</a> because Weson then unsuccessfully sued for interest on the tax 
it had paid in Aug-2000. The court ruled that if Weson wanted interest, then it 
should have purchased interest-bearing Tax Reserve Certificates instead.</p>
<h3>Numbering scheme</h3>
<p>39 Conduit Road has already earned itself a place in history by the 
controversy surrounding the somewhat unusual numbering scheme for its floors.
<a href="property888.asp">We saw this</a> as a harmless (and 
unoriginal) marketing gimmick - it was plain to anyone who looked at the 
brochure or web site that the 88th floor was in fact the 33rd residential 
storey and is 40 storeys above the Ground Floor (there are 6 levels of car park 
and club house, and one refuge floor), albeit that a few of the top floors are 
double-height. But the politicians climbed onto a convenient bandwagon and as a result, 
&quot;among the relevant stakeholders,
<a href="http://www.info.gov.hk/gia/general/201004/16/P201004160233.htm" target="_blank">
a consensus was reached</a>&quot; that for future projects, floor numbers should be in &quot;a logical and 
consecutive numerical series&quot;. However to &quot;strike a balance&quot; between logic and 
irrationality, floor numbers 4, 13 and those ending in 4 (but not the forties, 
except 44) can be omitted. The result is
<a href="http://www.bd.gov.hk/english/documents/pnap/ADV/ADV003.pdf" target="_blank">
Buildings Department ADV-3</a>. Never let it be said that HK is not 
quadrophobic, triskaidekaphobic and octophilic. It is a small wonder that the 
Government didn't call in fung shui expert
<a href="../dbpub/natarts.asp?p=39219">Tony Chan Chun Chuen</a> to bless the 
scheme.</p>
<p>Of course, the omission of some floors on an optional basis blows a 
hole in the argument that the new system somehow corrects a purported safety 
issue for the emergency services, who would have no way of knowing whether the 
omissions have been made without looking at the lift lobby. Any fire above the 
3rd floor may be on a different level to its floor number. So this was an 
example of unnecessary official meddling in a rather silly scheme to assuage 
public sentiment.</p>
<h3>The current controversy</h3>
<p>On 13-Oct-2009, HLD launched 39 Conduit Road for sale, with a
<a href="../codocs/ConduitRd39PriceList.pdf" target="_blank">price list</a> 
which grabbed headlines - the split-level &quot;semi-duplex&quot;
<a href="http://www.39conduitroad.com.hk/map_66.html" target="_blank">apartment 
A on the 66th floor (38th storey)</a> was priced at HK$63,472 (US$8,137) 
per gross sq ft. The next day, it was
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=89228&amp;con_type=1" target="_blank">
disclosed</a> to the media that
<a href="http://www.39conduitroad.com.hk/map_68.html" target="_blank">apartment 
A on the 68th floor (39th storey)</a>, which was not on the list, had been sold for $71,280/gsf, a record 
for HK. Your editor David Webb was correctly quoted in the SCMP as saying &quot;how 
ridiculous! I wonder whether the buyer will complete&quot; the deal.</p>
<p class="regbox">A note on floor areas: for readers outside HK, &quot;gross 
floor area&quot; (<strong>GFA</strong>) includes an apartment's share of all common 
areas such as lift lobbies and club house, whereas &quot;saleable area&quot; includes the 
area bounded by the outside of the external walls, the middle of any shared 
walls, and any balconies and utility platforms (but not bay windows). As a rule 
of thumb, saleable area in modern projects is about 75% of GFA, but your mileage 
may vary. Also, what matters to most people is the internal area, which is even 
smaller than the saleable area, because you cannot live in walls. Smaller 
apartments have even lower efficiency because the walls don't get thinner. For 
example, imagine an apartment with a gross floor area of 800 sq ft and a 
saleable area of 600 sq ft, which is a 20 ft x 30 ft box with 1-foot thick 
external walls. The internal area will be 18 ft x 28 ft, or 504 sq ft. That's 
63% of GFA, with 12% in the external walls.</p>
<p>Eventually 25 units at 39 Conduit Road were contracted for sale, of which 1 
completed by year-end. After granting extensions of time, on 15-Jun-2010, HLD
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100615/LTN20100615272.pdf" target="_blank">
announced</a> that 4 of the other 24 sales, units A &amp; B on 30th and 31st Floors 
(26-27th storeys)&nbsp; had been completed, and that the remaining 20 had been 
cancelled at the request of the buyers, with 5% of the purchase price forfeited 
and the rest of the deposit returned. HLD would record a loss on cancellation of 
HK$734m, reversing part of last year's profit when the sales were booked. In the 
18 months (due to a change of year-end) to 31-Dec-2009, HLD made HK$14.32bn.</p>
<p>This is certainly a material amount, but the risk of such a reversal, and the 
amount involved, was flagged in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100330/LTN20100330416.pdf" target="_blank">
results statement</a> on 30-Mar-2010, on pages 4 and 51:</p>
<blockquote><p>&quot;Turnover for the eighteen months ended 31 December 2009 
included an amount of HK$3,280 million relating to the sale of 25 units at 39 
Conduit Road. At the recent requests of the buyers, the completion dates of the 
sale of 24 units have been extended by two to four months from February 2010. 
The turnover and profit after taxation arising from these 24 units attributable 
to the Group for the eighteen months ended 31 December 2009 amounted to HK$1,912 
million and HK$973 million respectively. Currently, there are no reasons to 
believe that the sale of such 24 units would not proceed.</p><p>However, in the 
event that the sale of such 24 units is not completed, and before taking into 
account any re-sale of such units, the Group shall recognise an attributable 
loss of approximately HK$780 million after forfeiture of deposits.&quot;</p></blockquote>
<p>Although it was the two &quot;68th Floor&quot; units that grabbed headlines, if you look closely, 
as we have, you will see that the average price of the 22 normal-unit sales was 
$34,731/gsf, ranging from $24,250/gsf to $42,000/gsf. That average is still a 
mind-numbing price beyond the reach of most people, and way out on the right-hand 
tail of the bell curve, but not beyond the realms of possibility. At that layer 
of the stratosphere, HLD was probably commercially willing to allow people to 
buy &quot;call options&quot; through shell companies, by putting down deposits in the 
expectation of broking them to ultra-high net worth mainlanders or others, 
either as end-users or as investors. It is fairly clear from the transaction 
records that there were several groups of multiple units involved, with 
different representatives and addresses (see below).</p>
<p>The great irony of the current Government investigations is that failed 
speculative transactions are exactly what they should expect if the
<a href="http://www.info.gov.hk/gia/general/201002/24/P201002240185.htm" target="_blank">
cooling measures announced</a> in the budget on 24-Feb-2010 and the
<a href="http://www.info.gov.hk/gia/general/200910/23/P200910230281.htm" target="_blank">
reduction</a> in mortgage loan-to-value ratios were having an effect - so which 
do they want - cooling measures or an escalation of the bubble? They seem to be 
complaining that speculative deals have failed rather than celebrating that 
their measures might be having some mild impact. It is also clear that mainland 
measures to cool their property market and rein in credit are also likely to 
impact on the HK property market, having contributed to the excesses alongside 
low interest rates imported from the US.</p>
<h3 id="Corporate">Corporate buyers</h3>
<p>All transactions in HK are reported to the Land Registry, so even if 
HLD had not disclosed the price and the registered buyers' names, it would have 
been public knowledge soon afterwards. Any criticism that HLD made hay out of 
the transaction news should be tempered by the fact that it would have hit the 
headlines anyway, as the estate agencies all monitor transaction records. The agreements are also filed and open to 
public inspection, so it was quickly evident that the buyers were newly-formed 
HK shell companies.</p>
<p>For various reasons, many buyers of properties, new or 
second-hand, choose to use a dedicated company which has no other assets (often 
called a shell company) to buy and hold the property. These reasons include:</p>
<ul>
	<li>Avoiding disclosure of the ultimate owner's name - using an offshore 
	company where there is no public share register. This is particularly 
	important if you are a mainlander who is bypassing the PRC's capital 
	controls, or if you want to hide assets from your spouse, or if you can't 
	account for so much money in the first place or are a public figure (or 
	both).</li>
	<li>Allowing the ownership to be transferred in future by selling the 
	company rather than the property. If the company is offshore, then there is 
	no stamp duty to pay, whereas properties attract stamp duty of up to 4.25% 
	on every transfer. We called for abolition of stamp duty in our article
	<a href="stampout.asp">HK's stamp duty addicition</a>, 
	2-Mar-2010.</li>
	<li>Allowing children who jointly inherit a property to buy each other's 
	shares in the property by buying shares in the company, without paying stamp stamp duty</li>
	<li>Allowing the property to be resold even before the company has completed 
	the purchase - the company is, in effect, a call warrant on the property, 
	giving the holder the option to pay the completion money to buy the flat, or 
	to walk away and forfeit the deposit. This is particularly useful if the 
	apartment is sold off plan (a &quot;pre-sale&quot;) with a long time until it will be 
	delivered and paid for.</li>
	<li>Avoiding possible assessment for profits tax if the owner is someone who 
	regularly flips apartments - the Inland Revenue has in the past taxed people 
	even with just a few transactions on the grounds that they are running a 
	business of &quot;trading&quot; in properties, but the IRD is never going to know if 
	an offshore company changes hands, and the deal can even be struck outside 
	HK.</li>
	<li>Renting the property to the owner of the company in order to take 
	advantage of the &quot;tax benefits&quot; loophole, whereby the Inland Revenue deems 
	the value of housing provided by an employer as worth only 10% of his cash 
	income. This is worthwhile if the property-owning company does not make 
	taxable profits - for example, it can offset the interest on a mortgage it 
	used to purchase the property. So a salary of $50,000 with a housing benefit 
	of $50,000 is only worth $55,000 for Salaries Tax purposes. We have
	<a href="tax1.asp">called in the past</a> for this loophole to 
	be closed.</li>
</ul>
<p>Given the above incentives and the size of the transactions, there is nothing 
unusual in the fact that the buyers in Conduit Road were all companies. Each 
unit was contracted by a HK company, and each HK company was held and directed 
by a different offshore company. In the cancellation agreements filed with LegCo, the 24 
HK companies have registered offices in three different places. 9 were at unit 
701, 7th Floor, World-Wide House, which is the office of Lo &amp; Lo, the 
solicitors to HLD. There is nothing unusual about a firm of solicitors acting 
for both sides in new property transactions in HK, despite the obvious conflicts 
of interest. So it wouldn't surprise us if part of the service included setting 
up companies for the buyer. Another 8 buyers (including 4 who completed) were 
registered at 10/F, Cosco Tower. That is also the address of financial services 
firm <a href="../dbpub/articles.asp?p=15522">Get Nice Holdings Ltd</a> (0064). 
Perhaps they introduced some clients to the property. The other 7 buyers were 
registered to 18/F, China Hong Kong Tower, 8-12 Hennessy Road, Wanchai. From our desktop we cannot find who 
the tenant there is.</p>
<p>Update, 13-Jul-2010: thanks to a volunteer who visited, we now know that the 
floor includes an office named Yau &amp; Lau, which was a solicitors firm which 
closed practice on 15-Mar-2010. The sole proprietor of that firm,
<a href="../dbpub/positions.asp?p=59125">Rebecca Lau Siu Foon</a>, then rejoined 
Lo &amp; Lo as a partner, having been a solicitor with Lo &amp; Lo until 19-Nov-1998 
when she joined Yau &amp; Lau. Perhaps Lo &amp; Lo referred some of the buyers to her 
firm so that they had separate representation for the purchase.</p>
<h3>Sale and purchase agreement</h3>
<p>Questions have been asked by legislators about the nature of the sale and 
purchase agreement (SPA) used in these transactions. The Civic Party's Ronny 
Tong Ka Wah
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=100247&amp;con_type=1" target="_blank">
called</a> the agreement &quot;abnormal&quot; and accused HLD of showing &quot;incomprehensible 
business logic&quot; in returning the balance of the deposits to the shell companies. 
The Democratic Party's Lee Wing Tat
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=100149&amp;con_type=1" target="_blank">
asked</a> why HLD had not pursued the purchasers for $1bn in damages.</p>
<p>Well, first of all, the SPA is a standard form contract which is actually 
specified by Government regulations - the template is in
<a href="http://www.landsd.gov.hk/en/legco/lcm.htm" target="_blank">Legal 
Advisory and Conveyancing Office</a> (<strong>LACO</strong>)
<a href="http://www.landsd.gov.hk/en/images/doc/60.pdf" target="_blank">Circular 
Memorandum No. 60</a>. This standard agreement is part of the
<a href="http://www.hkclic.org/en/topics/saleAndPurchaseOfProperty/sale_and_purchase_of_property_under_construction/q1.shtml" target="_blank">
pre-sale Consent Scheme</a> for uncompleted projects. Clause 11(3), which was 
used in this case, says:</p>
<blockquote>&quot;(3) In the event of the Purchaser requesting and the Vendor 
agreeing to execute a Cancellation Agreement or any other means which has the 
effect of cancelling this Agreement or the obligations of the Purchaser 
hereunder, the Vendor shall be entitled to retain the sum of <strong>5% of the 
total purchase price</strong> of the Property <strong>as consideration for his 
agreeing to cancel this Agreement and not as a penalty</strong> and the 
Purchaser will in addition pay or reimburse, as the case may be, to the Vendor 
all legal costs, charges, disbursements (including stamp duty, if any) in 
connection with the cancellation of this Agreement.&quot;</blockquote>
<p>Now, of course in theory (absent regulation) the parties to any legal 
agreement can, after the agreement, agree to cancel it on whatever terms they 
like. The fact that the Government-approved standard contract specifies one such 
method of cancellation just provides some hope for purchasers that they might, 
if the vendor agrees, be able to get out of it. If that method is used, then the 
purchaser forfeits 5% and gets the rest back. But legislators and the Government 
are asking why HLD did not use another clause in the standard agreement, clause 
16 which says:</p>
<blockquote>&quot;(1) Should the Purchaser fail...to make the payments in 
accordance with Schedule 5...within 7 days of 
the due date, the Vendor may (subject to Clause 3(3)) give to the Purchaser 
notice in writing calling upon the Purchaser to make good his default. In the 
event of the Purchaser failing within 21 days from the date of service of such 
notice fully to make good his default, the Vendor may by a further notice in 
writing forthwith determine this Agreement.</blockquote>
<blockquote>(2) Upon the determination of this Agreement pursuant to 
sub-clause (1) :-<br>&nbsp;&nbsp;&nbsp; (a) the sum paid by the Purchaser under
<strong>item (i) of Schedule 5</strong> by way only of deposit shall be 
forfeited to the Vendor; and;<br>&nbsp;&nbsp;&nbsp; ...</blockquote>
<blockquote>(3) Upon determination of this Agreement under sub-clause (1) 
the Vendor may resell the Property either by public auction or private contract 
subject to such stipulations as the Vendor may think fit and any increase in 
price on a resale shall belong to the Vendor. On a resale, any deficiency in 
price shall be made good and all expenses attending such resale shall be borne 
by the Purchaser and such deficiency and expenses shall be recoverable by the 
Vendor as and for liquidated damages Provided That the Purchaser shall not be 
called upon to bear such deficiency or expenses unless the Property is resold 
within 6 months of the determination of this Agreement.&quot;</blockquote>
<p>and item (i) of Schedule 5 says:</p>
<blockquote>(i) the amount of $[BLANK] has been <strong>paid as deposit on signing 
of the agreement preliminary to this Agreemen</strong>t;</blockquote>
<p>This refers to the 5% deposit paid upon signing the Provisional Sale and 
Purchase Agreement, not to the amount of any subsequent payments. A second 
payment of 5% is usually made on signing of the formal SPA. In the Conduit Road 
case, HLD held a total of 10% deposits on 22 normal units and 15% on the &quot;68th 
Floor&quot; special units. So if HLD had used Clause 16, then it could only have 
forfeited 5%. There is a reason why the vendor cannot confiscate everything, a 
point of law which any legislator ought to understand: only the courts can order 
penalties. That is why Clause 11 speaks of the 5% as &quot;consideration for agreeing 
to cancel...<u>and not as a penalty</u>&quot;. In clause 16, for 
the vendor to claim any more than 5%, it has to show a loss, by reselling the 
property within a reasonable timeframe (6 months, in this case) at a fair but 
lower price.</p>
<p>Could HLD have withheld the balance of the deposits for 6 months while 
it tried to make such a resale? Well, it could have tried, but in our view it 
had no legal basis for doing so - the standard contract does not provide for 
that. Simply having a potential claim against someone does not in itself entitle 
you to hold on to their cash. The Government could amend the standard contract 
to require this, but we doubt that politicians would be keen on including such a 
clause if they think about it - imagine if a person has paid not 10% but 30% of 
a purchase price, and then he loses his job and is unable to get a mortgage to 
complete the purchase. Would it be OK for the developer to hang on to the 
purchaser's cash for 6 months? Be careful what you wish for, legislators.</p>
<p>After 19 years in HK, we've seen several market cycles, and it is not unusual 
for buyers to default on purchases and walk away from deposits. There were many 
such cases after the 1997 crash. At least in the individual (human) buyer space, 
developers are not keen to make their reputation worse by suing defaulting 
purchasers for the deficiency on resale, pushing the original buyer into 
bankruptcy. Behaviour like that doesn't tend to build customer or brand loyalty.</p>
<p>Furthermore, if HLD could not sell for at least 90% of the original 
prices within 6 months (or 85% for the 68/F), then it would still be out of 
pocket even if it had successfully claimed (or reclaimed) all the deposits. The 
buyers are shell companies, so they would not be able to pay any more than that, 
and there would be no point in suing them. Given a cooler market, HLD might 
reasonably have taken the view that it would rather hold on to the properties 
for now than sell them at more than 10-15% below the previous transaction 
prices. It might also take the view that it needs to maintain goodwill amongst 
speculators and middlemen if it is going to land the big fish in future in such 
a rarified market.</p>
<p>In the absence of any evidence of any connections between the buyers and the 
vendor, and with written statements from HLD to the contrary, we see no reason 
to doubt that these transactions were just plain old-fashioned speculation in 
the midst of a bubble.</p>
<h3>Were the prices &quot;misleading&quot;?</h3>
<p>What has probably grabbed the most publicity is not that 20 deals have defaulted, but that the sale prices were so high in the first place, a 
symptom of the current bubble. This touches on the frustration of not just the 
one third of the population that lives in public housing and another sixth who 
live in subsidised housing, but also the middle classes who face a lifetime of 
paying off mortgages to finance a piece of air enclosed by a small concrete box 
purchased from one of HK's feudal landlords who then pay royalties to the SAR 
crown in the form of land premiums, taking a big fat cut in the middle and 
gaming the system as much as they can. They are a clique without whose support, 
through the Election Committee, the Chief Executive cannot be elected, and 
without whose support, through the functional constituencies, the Government 
cannot govern.</p>
<p>Issues like the Conduit Road numbering controversy and cancellations then 
become a proxy whip with which to thrash the developers, whether it is deserved 
or not.</p>
<p>The market for units in one building, particularly one with only 26 units 
initially available for sale, is not a deep, liquid market where transacted 
prices might be a close approximation to realisable value most of the time, like 
say, the share price of HSBC. That building is not the only building in Conduit 
Road, and Conduit Road is not the only road in Mid-levels. The units in a single 
building are what we call a &quot;micro-market&quot;. Such markets are highly illiquid, 
and buyers need to do their homework and decide what an asset is worth
<u>to them</u> before buying an asset. The same applies to 
small-cap stocks, rare postage stamps, art, coins, gems, vintage cars, wines and 
so on. At least with properties you can look at the rental yield.</p>
<p>Secondly, the prices reported and recorded at the land registry only 
represented agreements to buy, not completed purchases. Many commentators, 
including your editor, were rightly sceptical about whether the transactions 
would complete. If third parties in the property market are putting any reliance 
on other people's transactions at all, then they should be looking at completed 
purchases, which are filed with the Land Registry as &quot;assignments&quot; or delivery 
of the units. Even then, we would caution against such reliance.</p>
<p>So in summary, like most people, we found the agreed prices on the &quot;68th 
Floor&quot; ridiculous, and the other, less-publicised prices for lower floors merely 
silly, but we seriously doubt that any but the most ignorant buyers saw the 
prices as a guide to what they should pay for a property elsewhere in Conduit 
Road or mid-levels, and we have no sympathy for anyone who thought that 
uncompleted transactions in a small project are a guide to the general market. 
These transactions are a symptom of a speculative bubble, not the cause of it.</p>
<p>As we said in our article on the soon-to-be-launched
<a href="larvotto.asp">Larvotto</a> (3-Mar-2010), HK is in one of 
its frequent property bubbles. On 18-May-2010, HLD Chairman Lee Shau Kee's 
family
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=98436&amp;con_type=1" target="_blank">
paid</a> HK$1.82bn (US$233m) for a site at 35 Barker Road in a
<a href="http://www.joneslanglasalle.com.hk/HongKong/EN-GB/Pages/NewsItem.aspx?ItemID=19062" target="_blank">
rare public auction</a> of a private site. The property allows a GFA of 26,675 
sq ft, and they will also pay to demolish the existing block of flats (called 
Falconridge) and build 3-4 houses for the billionaire's family compound. So the 
land alone cost $68,229/gsf. The vendor was another tycoon, the low profile 
billionaire shipping-cum-property tycoon <a href="../dbpub/natperson.asp?p=1040">
Hui Sai Fun</a>. He owns Central Development Ltd, which owns Central Building and 
Central Tower, in Central, and developed the
<a href="http://www.highcliff.hk/" target="_blank">Highcliff</a> skyscraper at 
41D Stubbs Road, which
<a href="http://www.emporis.com/application/?nav=building&amp;lng=3&amp;id=100639" target="_blank">
really does</a> have 72 storeys above ground.</p>
<h3>Improving transparency</h3>
<p><strong>One thing the Government could and should do, is to open the doors 
to free
<a href="https://www.iris.gov.hk/eservices/welcome.jsp?language=en" target="_blank">online inspection</a> of the Land Registry</strong>, so that people can see 
for themselves, with a few clicks, whether a transaction involves a company or 
individual and whether it has completed. Currently, every document involves a 
cumbersome and expensive pay-per-view procedure. The public interest would be 
better served by removing that barrier. The Land Registry's latest
<a href="http://www.landreg.gov.hk/ar08-09/landreg_ar0809.pdf" target="_blank">
annual report</a>, for the year to 31-Mar-2009, shows (note 3, p158) that only 
$73m of its $426m in turnover came from search fees, while $224m came from 
registration of documents. So it wouldn't cost much to shift that burden 
entirely to filing fees, and they don't even need to do that, because this 
government agency booked a profit of $107m (before the tax it pays to its 
parent). So they could simply eliminate inspection fees and adopt a &quot;sunshine 
policy&quot; for public access.</p>
<p>Likewise, the HK Companies Registry's
<a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&amp;username=iguest" target="_blank">
online search</a> is also way behind best practice - you 
can check the name and incorporation date, but anything else, include details of 
directors and registered office, copies of annual returns and other filings, is 
pay-per-view. It should be free to inspect, and remain funded by filing fees.</p>
<h3>Market manipulation</h3>
<p>While we are on the subject of unreasonable expectations from reliance on 
market data, we take a look at the Government and SFC's approach to this in 
today's <a href="manipulation.asp">Manipulation mania</a> article, which also 
looks at shill bidding in auctions generally.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=59101">CARRY EXPRESS INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=505">CENTRAL DEVELOPMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=59111">Cityline Venture Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15522">GET NICE HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=412">HENDERSON LAND DEVELOPMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=59102">NATION SHEEN LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=432">NEW WORLD DEVELOPMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20076">PETERSON HOLDINGS COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=59103">WASHINGTON ENGINEERING LIMITED (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=59112">WESON INVESTMENT LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=59104">Chow, Elton Sing Yuet</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1040">Hui, Sai Fun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11924">Yeung, Franco Sai Hong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=52506">Yeung, Kwok Sang</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
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
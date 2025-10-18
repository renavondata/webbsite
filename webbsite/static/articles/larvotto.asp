
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

<script type="text/javascript">document.title="Larvotto - do you know the boatyard?";</script>

	<div class="summary">We probe the history of the SHKP/Kerry/Paliburg Larvotto, a luxury industrial-cum-residential project overlooking a typhoon shelter but behind boatyards and sawmills, which are noisy enough for the Environmental Protection Department to object to the Town Planning Board's approval, as minutes reveal. "Non-openable windows" were cited as a mitigating measure. Yours for just HK$25k/psf - can you see the bubble?</div>

<h2 class="center">Larvotto - do you know the boatyard?<br>
<span class="headlinedate">3 March 2010</span></h2>
<p>And the Oscar for most outrageous property launch goes to...<a target="_blank" href="http://www.larvotto.com.hk">Larvotto</a>, 
a luxury industrial-cum-residential development 15 years in the making, which 
was auctioned in 1995 for $255 per gross sq ft (gsf), converted to residential use in 
2005 for $4,336/gsf, constructed for (let's say) $2,000/gsf and is now being
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?art_id=94906&amp;con_type=1">
touted</a> at HK$25,000/gsf (including your share of the common 
areas, the cross-sectional area of the walls, etc). At that price, the whole 
thing is tagged at HK$22.8bn (US$2.94bn). You can't blame them for 
trying, but if this isn't evidence of a bubble, then what is?</p>
<p>&quot;How well do you know Ocean?&quot;, &quot;View the Ocean, Feel the Ocean&quot; says the marketing, for a development which faces North-East across Aberdeen 
typhoon shelter, behind some noisy boatyards and sawmills which one day will 
likely be redeveloped, potentially blocking the view. Most residents will have 
to crane their necks to see the South China Sea which is, not unnaturally, to the 
South.</p>
<p>&quot;The Gem on Hong Kong Island&quot; says the Post Office-circulated spam, but it's 
not on Hong Kong Island, it's on Ap Lei Chau (which apparently means &quot;duck 
tongue island&quot; on account of its shape), an island connected by road bridge to 
Hong Kong Island. Here's a 2007 satellite view of the project:</p>
<img class="center" alt="Larvotto and Ap Lei Chau Boatyards" src="../images/Larvotto.jpg">
<h3>Auctioned to one bidder in 1995 as Industrial</h3>
<p>The Larvotto site is Ap Lei Chau Inland Lot 129, or ALCIL129 for short. With 
a land area of 180,511 sf, it was originally sold for industrial use, in a 
government land auction on 25-Jan-1995 at the opening bid of HK$230m to
<a href="../dbpub/orgdata.asp?p=429">Paliburg Holdings Ltd</a> (<strong>Paliburg</strong>, 
0617), via its then wholly-owned subsidiary,
<a href="../dbpub/orgdata.asp?p=56511">Cheerjoy Development Ltd</a> (<strong>Cheerjoy</strong>). 
In the 1994 annual report, Paliburg said it planned to build a &quot;modern 
industrial complex&quot; called &quot;Hong Kong Industrial Trade Plaza&quot; with a floor area 
of 1,714,800 gsf at a plot ratio of 9.5, so the accommodation value of the land 
was just $134/gsf.</p>
<p>By the 1996 report, with site formation work nearing completion, Paliburg was 
beginning to change its mind and by the 1997 report, the application for 
rezoning for &quot;comprehensive development comprising residential, hotel and 
commercial components&quot; was &quot;being further pursued&quot;. On 3-Oct-1997, the
<a href="../dbpub/officers.asp?p=17267">Town Planning Board</a> (<strong>TPB</strong>) 
rejected the application, partly because of the noise and the &quot;fugitive 
industrial emissions&quot; from the boatyards across the road. The application 
changed to &quot;residential and commercial&quot; by the 1998 report.</p>
<h3>SHKP and Kerry Properties buy in</h3>
<p>On 30-Jul-1999, the TPB approved rezoning to permit residential development, 
restricting the site to a plot ratio of 5, so the original premium for 
industrial use now equated to 9.5/5 x $134=<strong>$255</strong>/gsf, before 
conversion. At the same time, the TPB looked across the Ap Lei Chau Praya Road 
to the site occupied by the Ap Lei Chau Boatyards, which was proposed to be 
rezoned from &quot;I&quot; (Industrial) to &quot;U&quot; (Undetermined). The developer had got what 
it wanted.</p>
<p>Two weeks later, on 14-Aug-1999, facing financial pressure, Paliburg
<a target="_blank" href="../codocs/0683_990816a.pdf">sold</a> 70% of 
<a href="../dbpub/orgdata.asp?p=56609">Point 
Perfect Investments Ltd</a> (BVI), which owned Cheerjoy, to
<a href="../dbpub/orgdata.asp?p=56512">Twin Luck Worldwide Ltd</a> (BVI), a 
50:50 joint venture between <a href="../dbpub/orgdata.asp?p=417">Sun Hung Kai 
Properties Ltd</a> (0016) and <a href="../dbpub/orgdata.asp?p=809">Kerry 
Properties Ltd</a> (<strong>Kerry Properties</strong>, 0683). The value of the 
site was agreed at $570m before conversion to residential use, so Paliburg would 
receive $399m for the 70% stake, and the new partners would procure financing 
for the development at market rates of interest or 1.5% over HIBOR (whichever 
was higher), relieving Paliburg of that burden. $99m of the payment was deferred 
pending publication of the zoning approval.</p>
<p>Given that this was announced just 2 weeks after the Town Planning Board 
approval, it would be interesting to know whether negotiations were already 
underway at the time of the approval, and if so, whether any of the members of 
the TPB had any commercial relationship with the two new partners.</p>
<h3>Zoning, planning and boatyard noise</h3>
<p>The Outline Zoning Plan reflecting approved Residential (Group E) zoning was
<a target="_blank" href="http://www.info.gov.hk/gia/general/200003/03/0303211.htm">
amended</a> on 3-Mar-2000, and required further TPB approval of the actual 
residential development plan &quot;with a view to minimizing the possible 
industrial/residential interface problems&quot;. However, there were numerous 
objections from the boatyard operators, and the TPB reverted the zoning of the 
boatyard site to &quot;I&quot; (Industrial) on 26-Sep-00. The Outline Zoning Plan was
<a target="_blank" href="http://www.info.gov.hk/gia/general/200103/02/0302129.htm">
approved</a> by the Chief Executive in Council on 2-Mar-01.</p>
<p>Meanwhile, the developer pressed on with the planning application. On 
8-Mar-02, the TPB rejected a plan for 1290 units in towers up to 50 stories, 
because of the noise from the boatyards and the &quot;visual impact on Aberdeen 
Harbour and its coastal area&quot;. On 25-Jul-03, the Metro Planning Committee (<strong>MPC</strong>) 
of the TPB rejected a plan for 1336 units in 5 blocks up to 38 stories on a 
3-storey podium, again because of the noise problem. </p>
<p>However, on 16-Jan-04, the TPB overruled the MPC and
<a target="_blank" href="../codocs/Larvotto040116.pdf">approved</a> the plan, 
which by now included an additional 1,000 square metres of retail space 
(increasing the plot ratio to 5.06) and 3,000 square metres of club house (which 
is exempt from plot ratio), despite the objections of the Environmental 
Protection Department.</p>
<p>In a classic bureaucratic override, the TPB had approved the project 
even though the Environmental Protection Department did &quot;not support&quot; it. In 
bureau-land, they never use the word &quot;object&quot;. The EPD was opposed because the 
noise from the &quot;unauthorized&quot; steel boat repairing activities in the boatyards, 
which are only 30 metres away, exceeded the noise limit in the
<a target="_blank" href="http://www.pland.gov.hk/pland_en/tech_doc/hkpsg/">Hong 
Kong Planning Standards and Guidelines</a> (<strong>HKPSG</strong>).</p>
<p>The noise problem had been discussed at the TPB meeting on 16-Jan-2004 when the 
scheme was first approved on review. The applicant had incorporated &quot;mitigation 
measures&quot; including &quot;non-openable windows&quot;, but towers 1 to 3 of the 9 Towers 
would still exceed the HKPSG noise limit and nothing further could be done. It 
was noted that the boatyards provided &quot;supporting services to the Aberdeen 
fishing industry&quot; and that the Short Term Tenancies of the boatyards prohibited 
steel boat repair (presumably allowing wooden boats), but this was &quot;difficult to 
enforce&quot;.</p>
<p>The
<a target="_blank" href="http://www.info.gov.hk/tpb/en/meetings/tpb_meeting.html">
minutes</a> of TPB and MPC meetings were not published before 17-Jun-2005, as 
meetings were not open to the public. The disagreement of the EPD with the 2004 
approval is finally revealed in the MPC minutes of
<a href="http://www.info.gov.hk/tpb/en/meetings/MPC/Minutes/m324mpc_e.pdf">
7-Apr-2006</a> (p21-25) and
<a target="_blank" href="http://www.info.gov.hk/tpb/en/meetings/MPC/Minutes/m348mpc_e.pdf">
27-Apr-2007</a> (p24-29). Enjoy!</p>
<p>The negotiations on the land premium for lease modification to residential 
use continued, and on 9-Nov-2005, a land premium of HK$3,913.88m was
<a target="_blank" href="http://www.landsd.gov.hk/en/exc_mod/mod/mod2005e.pdf">
agreed</a>, so the conversion premium was <strong>$4,336</strong>/gsf. The MPC 
gave approval on 25-Nov-05 to amend the plan to 816 larger units, which was 
reduced on 7-Apr-06 to 776 units in 9 towers, on 27-Apr-07 to 770 units, and on 
8-Jul-09 to 715 units. As you can see, they were adjusting to larger flats as 
demand in the luxury market changed. In its 2006 report, Kerry Properties put 
the completion date as &quot;third quarter of 2009&quot;, slipping to &quot;fourth quarter of 
2010&quot; in its 2007 report and &quot;first quarter of 2011&quot; in its 2008 report.</p>
<p>In a Planning and Lands Department
<a target="_blank" href="http://www.pland.gov.hk/pland_en/p_study/comp_s/industrial_report/Index.htm">
report</a> in 2006, the boatyard site was considered further. There is a small 
sliver of land, just 0.05ha (or about 5,300 sf) visible on the ownership plan on
<a target="_blank" href="http://www.pland.gov.hk/pland_en/p_study/comp_s/industrial_report/App06/site06.pdf">
page 3 of the PDF</a>, which is under single private ownership and used for 
&quot;temporary&quot; shipyard. The remaining 2.34ha is Government land leased out on 
Short Term Tenancies for &quot;temporary&quot; shipyards and two sawmills. The shipyards 
had been there for &quot;over 15 years&quot; (now over 19 years) and there are &quot;practical 
difficulties&quot; in their relocation.</p>
<h3>Politics</h3>
<p>Why should anyone on a short-term tenancy expect permanent occupation rights? 
Could it be that there are other interests at stake here, such as the 
redevelopment potential of those boatyard sites and demands for compensation?</p>
<p>We pause to note that the Agriculture and Fisheries sector has 40 seats in 
the 800-member committee which elects HK's Chief Executive, or 5% weighting, 
vastly disproportionate to the sector's economic significance - it
<a target="_blank" href="http://www.censtatd.gov.hk/freedownload.jsp?file=publication/stat_report/national_income_bop/B10300012009QQ04B0100.pdf&amp;title=Gross+Domestic+Product+(Quarterly)&amp;i=Fourth+Quarter+2009&amp;lang=1&amp;c=1">
accounts</a> for just 0.1% of GDP. The 40 seats were
<a target="_blank" href="http://www.gld.gov.hk/egazette/pdf/20061031e/egn2006103167.pdf">returned uncontested</a> 
in 2006. The electorate comprised just 160 organisations in that year, 77 of 
which are named in Appendix B of the
<a target="_blank" href="http://www.reo.gov.hk/pdf/2009/af_e.pdf">guidance notes 
on registration</a>. This neatly illustrates one of the design features of HK's 
Election Committee. Apart from tycoon representatives, it is stuffed with 
over-weighted sectors which depend heavily on government support, such as 
agriculture, fisheries, sports, performing arts and culture. There is inevitably 
reciprocity in government policy in return for political support.</p>
<p>Larvotto is named after a region and beach in Monaco, a place about as densely 
populated as Ap Lei Chau, so it is fitting in that sense, but unless you enjoy &quot;unopenable 
windows&quot; or the pleasant sound of saws on steel in the mornings, you 
might prefer not to pay $25,000 per sq ft (<a href="stampout.asp">plus 
stamp duty</a>), or anything like that, for this &quot;inherent supremacy blessed by 
nature&quot; - especially when it's only on a 37-year lease. Ah yes, Hong Kong's 
dwindling leaseholds - we'll get to that another day.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=56511">CHEERJOY DEVELOPMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17267">HKSAR Town Planning Board</a></li>
				
				<li><a href="/dbpub/articles.asp?p=809">KERRY PROPERTIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=429">PALIBURG HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=56609">Point Perfect Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=417">SUN HUNG KAI PROPERTIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=56512">Twin Luck Worldwide Ltd.</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=106">Bubble/concentration warnings</a></li>
				
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
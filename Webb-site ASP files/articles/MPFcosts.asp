
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

<script type="text/javascript">document.title="MPF Part 1: What it Costs You";</script>

	<div class="summary">In Part 1 of our new MPF series, we look at the frightening first disclosures of expense ratios for MPF funds, and how this will crush the performance of the money trapped in the MPF schemes relative to the markets they invest in.</div>

<h2 class="center">MPF Part 1: What it Costs You<br>
<span class="headlinedate">11 February 2007</span></h2>
<p>In a previous article (<a target="_blank" href="mpfcost.asp">Scrap the MPF</a>, 
23-Jun-05) <i>Webb-site.com</i> drew attention to the fact that a Mandatory 
Provident Fund index-tracking fund cost employees 2% per 
year on their accumulated contributions, equivalent to a 55% value-reduction 
over 40 years, or 33% over 20 years, relative to the underlying investment 
performance. Here's that table again:</p>
<img class="center" alt="" src="../images/mpfcos2.gif">
<p>As you are about to discover, most MPF funds weigh in at well over 2% annual 
expenses.</p>
<h3>Misleading performance</h3>
<p>Partly in response to our criticisms, the MPF Authority came out last 
year with a
<a target="_blank" href="http://www.mpfahk.org/english/quicklinks/quicklinks_pub/files/FullReportEng.pdf">
5-year investment performance review</a>, seeking to draw attention to 
investment returns and away from analysing expenses. The report claimed that the MPF 
system as a whole recorded <i><b>&quot;an annualized return of 6.99% over the 
five-year period after fees and charges&quot;.</b></i> In our view, that claim was 
misleading, and we'll show you why. Page 6 of the report gives 5 yearly returns 
for the scheme:</p>
	<table class="txtable center">
		<tr>
			<th>Year to 31-Mar</th>
			<th class="right"><i>Return</i></th>
		</tr>
		<tr>
			<td>2002</td>
			<td class="right">-2.49%</td>
		</tr>
		<tr>
			<td>2003</td>
			<td class="right">-11.21%</td>
		</tr>
		<tr>
			<td>2004</td>
			<td class="right">20.08%</td>
		</tr>
		<tr>
			<td>2005</td>
			<td class="right">4.56%</td>
		</tr>
		<tr>
			<td>2006</td>
			<td class="right">11.70%</td>
		</tr>
	</table>
	<p>The next line of the table makes that claim of 6.99% again, 
	but if you compound the 5-year returns together, you in fact get a total of 
	21.42% over 5 years, which is a compound average return (<b>CAR</b>) of <b>3.96%</b> 
	per year. The figure used in the report was (as the small print discloses) 
	an internal rate of return (<b>IRR</b>) or &quot;dollar-weighted&quot; figure which 
	was higher because there was more money in the scheme in the later, positive 
	years, than there was in the earlier, negative years of the scheme. You 
	can't depend on that pattern repeating itself, but even if exactly the same 
	sequence of annual returns occurred, for those in the scheme from the 
	beginning, the weight of the money already invested would drag the IRR back 
	towards the compound average. The CAR is the fair measure to use.</p>
	<p>In any event, 5 years is not a long time in market terms. We 
	have no reason to believe that the <u>gross</u> average performance of all 
	funds will be any worse or better than the underlying markets as a whole, but the
	<u>net</u> performance is what matters, and what the report completely 
	avoids mentioning is the annual impact of fees and expenses, and how much 
	lower that impact would be if people were allowed to invest their own money 
	directly in the markets or in index funds.</p>
	<h3>Expenses running at 2.5% per year</h3>
	<p>In Jun-04, the MPFA published the
	<a target="_blank" href="http://www.mpfahk.org/english/leg_reg/leg_reg_cod/files/disclosure_code_e.pdf">
	Code on Disclosure for MPF Investment Funds</a>, but most of its 
	requirements did not kick in until recently. Fund expense ratios (<b>FERs</b>) 
	were calculated for any financial year which commences after 31-Dec-04. Some 
	fund providers, such as HSBC, use a June year-end, so the first figures, for 
	the year to Jun-06, have only recently appeared. The Code requires an 
	&quot;On-going Cost Illustration&quot; in a prescribed format which shows the FER for 
	the latest year, and the dollar cost of such expenses after 5 years for each 
	$1,000 invested, assuming a gross return of 5% per year.</p>
	<p>Some, but not all, trustees publish these figures on their 
	web sites. The table below shows, for each trustee (in alphabetic order), 
	the lowest and highest FERs of the funds in their disclosure, and the 
	projected 5-year cost for each $1,000 invested:</p>
	<table class="numtable center">
		<tr>
			<th class="left" rowspan="2">Trustee</th>
			<th rowspan="2">Min FER %</th>
			<th rowspan="2">Max FER %</th>
			<th colspan="2">5-year cost on $1000</th>
		</tr>
		<tr>
			<th>Min $</th>
			<th>Max $</th>
		</tr>
		<tr>
			<td class="left"><a target="_blank" href="http://www.bcthk.com/BCT/uploadfile/20062916072919Oy5F.pdf">
				Bank Consortium Trust</a></td>
			<td>1.79</td>
			<td>2.04</td>
			<td>100</td>
			<td>114</td>
		</tr>
		<tr>
			<td class="left">
			<a target="_blank" href="http://www.boci-pru.com.hk/cms/cms_upload/english/download_corner/On-going%20cost%20illustration%20Example_C&C.pdf">
				BOCI-Prudential</a></td>
			<td>1.61</td>
			<td>1.75</td>
			<td>90</td>
			<td>98</td>
		</tr>
		<tr>
			<td class="left">
			<a target="_blank" href="http://mpf.fidelity.com.hk/Common/pdf/FRMT_Principal_Brochure_eng.pdf">
				Fidelity</a></td>
			<td>2.24</td>
			<td>2.53</td>
			<td>123 </td>
			<td>139 </td>
		</tr>
		<tr>
			<td class="left">
			<a target="_blank" href="http://www.banking.hsbc.com.hk/hk/mpf/pdf/oci_e_200612.pdf">
				HSBC/Hang Seng Bank</a></td>
			<td>2.00</td>
			<td>2.81</td>
			<td>111</td>
			<td>154</td>
		</tr>
		<tr>
			<td class="left">
			<a target="_blank" href="http://www.ingpension.com.hk/pdf/mpf/OnGoingCostIllustration_Comp(E).pdf">
				ING Pension Trust</a></td>
			<td>2.05</td>
			<td>2.81</td>
			<td>114 </td>
			<td>154 </td>
		</tr>
		<tr>
			<td class="left">
			<a target="_blank" href="http://www.manulife.com.hk/manulife_public/pdf/mpf/LS_OCI.pdf">
			Manulife</a></td>
			<td>2.32</td>
			<td>2.33</td>
			<td>128 </td>
			<td>129 </td>
		</tr>
		<tr>
			<td class="left">
			<a target="_blank" href="http://www.principal.com.hk/download/Brochure/S500_E.pdf">
			Principal Class A</a></td>
			<td>2.23</td>
			<td>2.28</td>
			<td>123 </td>
			<td>126 </td>
		</tr>
		<tr>
			<td class="left">
			<a target="_blank" href="http://www.sunlife.com.hk/pdf/RB65_OCI_en.pdf">
			Sun Life</a></td>
			<td>2.07</td>
			<td>2.11</td>
			<td>115 </td>
			<td>117 </td>
		</tr>
	</table>
	<p><i>Note: BCT maximum FER is adjusted for refund of a 
	maintenance fee</i></p>
	<p>Under the Code, those expense ratios are actually 
	understated, because they exclude transaction costs on the underlying 
	investments, such as stamp duty and brokerage costs on buying or selling 
	equities. If these aren't expenses, then what are they? The more actively a 
	fund turns over its portfolio, the higher those costs will be, eating into 
	the returns on the funds relative to the markets in which they invest. You 
	can probably add another 0.2% to those FERs to take account of underlying 
	transaction costs, so you'll be looking at a mid-point of about <b>2.5% per 
	year, which after 5 years will cost you about $138 for every $1,000 invested</b>.</p>
	<p>That's just 5 years! If the MPF continues, over a lifetime 
	of contributions, the performance of all funds will be crushed by the 
	expenses.</p>
	<p>The lack of competition on MPF fees should be no surprise, because it is 
	the employers who choose the fund providers, not the employees, and the only 
	way to change providers is to change jobs, in which case you can move the 
	money to a fund provider of your choice, or to your new employer's fund provider, 
	but in the process you may incur redemption charges.</p>
	<p>To stimulate competition, the MPFA should publish on its web 
	site the expense ratios and complete historic performance figures of every 
	fund in the MPF schemes, in an easily searchable database with comparison 
	tables by fund type, so that the public can more readily find out which are the 
	highest-cost and lowest-cost providers for each type of fund. At the moment, 
	you can hunt all over the internet and still not find that information. All 
	the MPFA has produced is clumsy Excel
	<a target="_blank" href="http://www.mpfahk.org/english/quicklinks/quicklinks_mcfp/quicklinks_mcfp_mup.html">
	spreadsheets</a> of unit prices, one for each of the last 12 months, but no 
	performance or expense data. The MPF, as long as it exists, is always going 
	to be expensive to administer, and those costs are going to be built into 
	the funds, but competition would help limit the damage to employee's wealth.</p>
	<p>Incidentally, the transparency in the mutual fund industry 
	(outside of the MPF) is even worse, as the SFC's
	<a target="_blank" href="http://www.sfc.hk/sfcRegulatoryHandbook/EN/displayFileServlet?docno=H180">
	Code on Unit Trusts and Mutual Funds</a> contains no disclosure requirement 
	on expense ratios in mutual fund advertisements reports or fact sheets. We 
	call on the SFC to address this problem, and then to publish on its web site 
	a database of mutual fund returns and expense ratios. Indeed it would be 
	better if the SFC and MPF worked together on this so that people can compare 
	MPF funds with non-MPF funds.</p>
	<p>Past investment performance may not be a guide to the future, 
	but past expense ratios are.</p>
<p><b><a href="MPFincrease.asp">Part 2: Stop the MPF Increase</a></b></p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10806">Mandatory Provident Fund Schemes Authority</a></li>
				
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
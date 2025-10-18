
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

<script type="text/javascript">document.title="41 endangered stocks";</script>

	<div class="summary">If HKEX proceeds with an ill-conceived Listing Rule change, companies with disclaimed audit reports for 2019 will be suspended and likely delisted, victimising minority shareholders. We now list those with disclaimed audits up to 30-Jun-2018 which would be affected if the rule applied today. Make your submission to stop this nonsense!</div>

<h2 class="center">41 endangered stocks<br>
<span class="headlinedate">17 November 2018</span></h2>

<p>In our article <a href="adverseopinion.asp">HKEX: shoot patients 
to prevent illness</a> (30-Sep-2018) we opposed HKEX's proposed changes to the 
Listing Rules which would allow it to suspend and subsequently delist 
companies which receive a disclaimed audit opinion. Our reasons are in the first 
article, so we won't 
repeat them here. The deadline for submissions to HKEX on the proposals 
is soon, 30-Nov-2018. Together, these 2 articles consitute our submission. You 
can make your submsission using the
<a href="https://www.hkex.com.hk/News/Market-Consultations/2016-to-Present/September-2018-Adverse-Audit-Opinion?sc_lang=en" target="_blank">
questionnaire here</a> or simply by dropping an email to
<a href="mailto:response@hkex.com.hk?subject=Consultation Paper on Proposal relating to Listed Issuers with Disclaimer or Adverse Audit Opinion on Financial Statements">
<strong>response@hkex.com.hk</strong></a>. </p>
<p>We noted in the first article that HKEX failed to include a 
list of companies that would have been affected if the policy was already in 
effect. We invited readers to find them. A number of readers sent us 
contributions to the following list, which we have enhanced and verified - a 
special shoutout to the team over at <a href="https://www.gekko.ai/" target="_blank">
Gekko Lab</a>, which got most of it right. </p>
<p>We exclude stocks which are already in long-term suspension. If the proposed 
rule is adopted and the companies don't obtain 
(perhaps by opinion-shopping) a non-disclaimed audit report for their financial 
year commencing on or after 1-Jan-2019, then they will be suspended. That means 
we could see the first casualties by 31-Mar-2020 when the 2019 results are due.</p>
<p>It's worth noting that in HKEX's own survey, there were 43 companies (not in 
long-term suspension) with 
disclaimed audit opinions in 2017, of which 24 had received disclaimers for 2 or 
more consecutive years. So the average prospects for a company getting off the 
endangered list in 2019 are 
not great. Without further ado, the current 41 endangered stocks that we can identify with a disclaimed audit opinion 
in the latest financial year are:</p>
<table class="txtable center">
	<tr>
		<th>Stock<br>code</th>
		<th>Name</th>
		<th>Auditor</th>
		<th>Year<br>YY-MM</th>
	</tr>
	<tr>
		<td>0030</td>
		<td><a href="../dbpub/docs.asp?p=645">Ban Loong Hldgs Ltd</a></td>
		<td>HLB</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>0061</td>
		<td><a href="../dbpub/docs.asp?p=9458">Green Leader Hldgs Grp Ltd</a></td>
		<td>Crowe</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0065</td>
		<td><a href="../dbpub/docs.asp?p=14235">Grand Ocean Advanced Resources Co Ltd</a></td>
		<td>BDO</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0110</td>
		<td><a href="../dbpub/docs.asp?p=10574">China Fortune Hldgs Ltd</a></td>
		<td>BDO</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0186</td>
		<td><a href="../dbpub/docs.asp?p=1009">Nimble Hldgs Co Ltd</a></td>
		<td>Moore Stephens</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>0228</td>
		<td><a href="../dbpub/docs.asp?p=15384">China Energy Development Hldgs Ltd</a></td>
		<td>BDO</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0351</td>
		<td><a href="../dbpub/docs.asp?p=4873">Asia Energy Logistics Grp Ltd</a></td>
		<td>BDO</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0353</td>
		<td><a href="../dbpub/docs.asp?p=13757">Energy International Investments Hldgs Ltd</a></td>
		<td>BDO</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0399</td>
		<td><a href="../dbpub/docs.asp?p=11345">Innovative Pharmaceutical Biotech Ltd</a></td>
		<td>BDO</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>0632</td>
		<td><a href="../dbpub/docs.asp?p=421">Pearl Oriental Oil Ltd</a></td>
		<td>Cheng &amp; Cheng</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0651</td>
		<td><a href="../dbpub/docs.asp?p=6406">China Ocean Industry Grp Ltd</a></td>
		<td>Asian Alliance</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0673</td>
		<td><a href="../docs.asp?p=4866">China Health Grp Ltd</a></td>
		<td>Elite</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>0702</td>
		<td><a href="../dbpub/docs.asp?p=11018">Sino Oil and Gas Hldgs Ltd</a></td>
		<td>BDO</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0809</td>
		<td><a href="../dbpub/docs.asp?p=13287">Global Bio-Chem Technology Grp Co Ltd</a></td>
		<td>Mazars</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0845</td>
		<td><a href="../dbpub/docs.asp?p=51570">Glorious Property Hldgs Ltd</a></td>
		<td>PwC</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0858</td>
		<td><a href="../dbpub/docs.asp?p=8266">Extrawell Pharmaceutical Hldgs Ltd</a></td>
		<td>BDO</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>0875</td>
		<td><a href="../dbpub/docs.asp?p=6044">China Finance Investment Hldgs Ltd</a></td>
		<td>Elite</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>0918</td>
		<td><a href="../dbpub/docs.asp?p=3153">State Energy Grp International Assets Hldgs Ltd</a></td>
		<td>Cheng &amp; Cheng</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>0948</td>
		<td><a href="../dbpub/docs.asp?p=56499">Alpha Professional Hldgs Ltd</a></td>
		<td>Crowe</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>0959</td>
		<td><a href="../dbpub/docs.asp?p=4889">Amax International Hldgs Ltd</a></td>
		<td>Elite</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>1007</td>
		<td><a href="../dbpub/docs.asp?p=61364">Longhui International Hldgs Ltd</a>**</td>
		<td>HLB</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>1068</td>
		<td><a href="../dbpub/docs.asp?p=29818">China Yurun Food Grp Ltd</a></td>
		<td>Moore Stephens</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>1101</td>
		<td><a href="../dbpub/docs.asp?p=61870">China Huarong Energy Co Ltd</a></td>
		<td>PwC</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>1103</td>
		<td><a href="../dbpub/docs.asp?p=27505">Shanghai Dasheng Agriculture Finance Technology Co Ltd</a></td>
		<td>BDO</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>1106</td>
		<td><a href="../dbpub/docs.asp?p=18155">Sino Haijing Hldgs Ltd</a></td>
		<td>Mazars</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>1192</td>
		<td><a href="../dbpub/docs.asp?p=5858">Titan Petrochemicals Grp Ltd</a></td>
		<td>Elite</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>1227</td>
		<td><a href="../dbpub/docs.asp?p=17131">National Investments Fund Ltd</a></td>
		<td>HLB</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>1393</td>
		<td><a href="../dbpub/docs.asp?p=41012">Hidili Industry International Development Ltd</a></td>
		<td>Zhonghui</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>1400</td>
		<td><a href="../dbpub/docs.asp?p=2128939">Moody Technology Hldgs Ltd</a></td>
		<td>Zhonghui</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>2700</td>
		<td><a href="../dbpub/docs.asp?p=36243">Green International Hldgs Ltd</a></td>
		<td>HLB</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>3889</td>
		<td><a href="../dbpub/docs.asp?p=41005">Global Sweeteners Hldgs Ltd</a></td>
		<td>Mazars</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>3963</td>
		<td><a href="../dbpub/docs.asp?p=2449667">China Rongzhong Financial Hldgs Co Ltd</a></td>
		<td>BDO</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>8026</td>
		<td><a href="../dbpub/docs.asp?p=10573">China Brilliant Global Ltd</a></td>
		<td>HLB</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>8029</td>
		<td><a href="../dbpub/docs.asp?p=12509">Sun International Grp Ltd</a>*</td>
		<td>Andes Glacier</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>8090</td>
		<td><a href="../dbpub/docs.asp?p=135693">China Assurance Finance Grp Ltd</a></td>
		<td>BDO</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>8132</td>
		<td><a href="../dbpub/docs.asp?p=65779">China Oil Gangran Energy Grp Hldgs Ltd</a></td>
		<td>HLM</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>8153</td>
		<td><a href="../dbpub/docs.asp?p=13386">Code Agriculture (Hldgs) Ltd</a></td>
		<td>Elite</td>
		<td>18-03</td>
	</tr>
	<tr>
		<td>8202</td>
		<td><a href="../dbpub/docs.asp?p=16958">Inno-Tech Hldgs Ltd</a></td>
		<td>Elite</td>
		<td>18-06</td>
	</tr>
	<tr>
		<td>8271</td>
		<td><a href="../dbpub/docs.asp?p=17959">Global Digital Creations Hldgs Ltd</a></td>
		<td>Deloitte</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>8272</td>
		<td><a href="../dbpub/docs.asp?p=18177">Chinese Food and Beverage Grp Ltd</a></td>
		<td>Asian Alliance</td>
		<td>17-12</td>
	</tr>
	<tr>
		<td>8331</td>
		<td><a href="../dbpub/docs.asp?p=2472818">HangKan Grp Ltd</a></td>
		<td>Elite</td>
		<td>17-12</td>
	</tr>
</table>
<p>* Sun International Group Ltd (8029) was the only one to achieve the 
accolade of "adverse opinion" - that is, the auditors didn't just disclaim their 
opinion, but
<a href="http://www3.hkexnews.hk/listedco/listconews/gem/2018/0628/gln20180628041.pdf" target="_blank">
opined</a> that the financial statements <em>do not</em> 
give a true and fair view.</p>
<p>** Longhui (formerly Daqing Dairy) has recently completed a Reverse Takeover 
and new listing application, so it may leave the list when its 2018 results are 
published.</p>
<p>Click the names to find their past financial statements back to 2002. If we have missed any companies 
on the endangered list, <a href="../contact">let us know</a>.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=56499">Alpha Professional Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4873">ASIA ENERGY LOGISTICS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=65779">Century Energy International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4889">Century Entertainment International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=135693">China Assurance Finance Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10573">China Brilliant Global Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15384">China Energy Development Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10574">China Fortune Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4866">China Health Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=61870">China Huarong Energy Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6406">China Ocean Industry Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2449667">China Rongzhong Financial Holdings Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=29818">China Yurun Food Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18177">Chinese Food and Beverage Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=421">CHK Oil Limited (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6044">Congyu Intelligent Agricultural Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13757">Energy International Investments Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=8266">EXTRAWELL PHARMACEUTICAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13287">GLOBAL BIO-CHEM TECHNOLOGY GROUP COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41005">Global Corn Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17959">GLOBAL DIGITAL CREATIONS HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51570">GLORIOUS PROPERTY HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14235">Grand Ocean Advanced Resources Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=36243">Green International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9458">Green Leader Holdings Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41012">Hidili Industry International Development Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12509">IMPERIUM FINANCIAL GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16958">INNO-TECH HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13386">Jiading International Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=61364">Longhui International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3153">Majestic Dragon AeroTech Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18155">Ming Lam Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2128939">Moody Technology Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17131">National Investments Fund Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1009">Nimble Holdings Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2472818">P.B. Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=27505">Shanghai Dasheng Agriculture Finance Technology Co., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11018">SINO OIL AND GAS HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11345">Starcoin Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5858">TITAN PETROCHEMICALS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=645">YNBY International Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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
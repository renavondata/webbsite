
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

<script type="text/javascript">document.title="PCCW - Grounds of Appeal";</script>

	<div class="summary">In our view the judgment in the Court of First Instance on PCCW's scheme of arrangement and the alleged vote-rigging provides ample grounds for appeal. We look at the ruling in detail and where the SFC may be taking this case on Thursday at the Court of Appeal.</div>

<h2 class="center">PCCW - Grounds of Appeal<br>
<span class="headlinedate">13 April 2009</span></h2>
<h3>Background</h3>
<p>Readers may recall that back on 1-Feb-09 Webb-site.com
<a href="pccwrig.asp">ran a story</a> reporting compelling evidence 
of an attempt to rig the vote in the proposed Scheme of Arrangement (<strong>SoA</strong>) 
to privatise PCCW Ltd (<strong>PCCW</strong>, 0008), involving hundreds of 
agents of Fortis Insurance Company (Asia) Ltd (<strong>Fortis Asia</strong>). We 
first reported the allegations to the SFC early on 15-Jan-09 after receiving an 
anonymous tip-off via the <a href="../contact/">contact page</a> on 
Webb-site.com. After inspecting the share register on 29-Jan-09 (the first 
working day after Chinese new year, and the penultimate working day before the 
register closed for the shareholder meeting), we had the evidence to support 
these allegations, and filed it with the SFC. They could have inspected the 
register themselves, but hadn't.</p>
<p>After our second filing, the SFC started taking the allegations seriously, 
and on 30-Jan-09 commenced an inquiry under Section 179 of the 
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&amp;Start=568.1.1&amp;Count=455">Securities and 
Futures Ordinance</a> (<strong>SFO</strong>). At the shareholder meeting on 
4-Feb-09, they seized the voting records, and the next day they commenced an 
investigation under Section 182 of the SFO. To give credit where it is due, they 
really seem to have pulled the stops out on this, interviewing 95 persons so 
far. The SFC sought permission from the Court of First Instance to intervene in the proceedings to 
sanction the SoA, which permission was
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=09PR17">
granted</a> on 24-Feb-09. This was the first time the SFC had used its right 
under Section 385 of the SFO to apply to the court to intervene in proceedings 
after consulting the Financial Secretary. The SFC was given 21 days to put its 
case together by 17-Mar-09 ahead of a 2-day court hearing which began on 
1-Apr-09.</p>
<p>
<a target="_blank" href="http://sc.info.gov.hk/gb/www.info.gov.hk/gia/general/200104/27/0427192.htm">Justice Susan Kwan Shuk-hing</a> issued her 187-paragraph
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=65198&amp;currpage=T">
<strong>Ruling</strong></a> on 6-Apr-09, in which she approved the scheme. The 
SFC immediately asked for a stay of her ruling pending appeal, which she 
declined, so they went straight to the Court of Appeal, which granted a stay 
for 10 days, which would allow the appeal to take place without rendering the 
outcome academic. Without a stay, the SoA would have taken effect the next day. 
Given the 4-day Easter weekend, the appeal team certainly has its work cut out 
to get ready for the hearing on Thursday 16-Apr-09. Let's hope they've been 
busy.</p>
<p>In this article, we review the Ruling and suggest some of the grounds for 
appeal which the SFC should be pursuing at the Court of Appeal. First let's note 
from para 60 of the Ruling:</p>
<blockquote>&quot;The investigation of the SFC into the voting allegations is 
part of a wider and ongoing investigation into the affairs of the Company and 
whether there has been misconduct or the commission of offences under [the SFO]. 
So far, the SFC has been able to interview 95 persons, potential witnesses in 
the matter may exceed 700.&quot;</blockquote>
<h3>Share trading and share registration are not linked</h3>
<p>The judge seems to think that share trading and registration of shares in 
Hong Kong go hand-in-hand. She writes in para 39 of the Ruling:</p>
<blockquote>&quot;The fact that there was such a substantial increase in the 
trading volume and registration of shares of the Company after the announcement 
of the privatisation proposal is not unusual. Increase in the trading volume and 
registration of shares is a common phenomenon after a scheme for privatisation 
is announced, especially where there is a large differential between the market 
price and the offer price.&quot;</blockquote>
<p>She's only half right. For sure, there is an increase in trading volume 
around corporate events, including privatisations. But all share trading in 
almost all HK-listed stocks is settled by electronic book-entry between 
participants in the Central Clearing and Automated Settlement System (<strong>CCASS</strong>) 
run by Hong Kong Securities Clearing Co Ltd (<strong>HKSCC</strong>), a wholly 
owned subsidiary of Hong Kong Exchanges and Clearing Ltd (0388), so there is no 
consequential change in the registered shares held by its nominee, HKSCC 
Nominees Ltd (<strong>HKSCCN</strong>). Until PCCW, there was no evidence of a 
big increase in share registration after a privatisation is announced, as 
we will show below. The judge goes on to rely on this misconception later in the 
Ruling where we get into a discussion of geese and ganders.</p>
<h3>Vote-splitting is not common</h3>
<p>Christopher Howe, Managing Director of
<a href="../dbpub/articles.asp?p=5639">Anglo Chinese Corporate Finance, Ltd</a> was 
engaged by Pacific Century Regional Developments Ltd (<strong>PCRD</strong>) to provide an independent expert opinion. 
As far as we are aware, the SFC did not provide any opposing evidence or an 
expert witness of its own. Para 41 of the Ruling states:</p>
<blockquote>"Mr. Howe further explained that it is not uncommon for "Arbs" 
to protect their investment when a transaction they invest in is implemented by 
a scheme of arrangement by splitting their shares into board lots or acquiring 
odd lots and registering their interests in their own name or those of their 
nominees to increase the number (as opposed to the value) of their votes at a 
meeting of shareholders held to consider a privatisation proposal under a scheme 
of arrangement.&quot;</blockquote>
<p>As we will show, vote-splitting is indeed uncommon. The 
Ruling continues by quoting statistics on just one case, Shaw Brothers (Hong 
Kong) Ltd, which presumably were provided by Mr Howe:</p>
<blockquote>&quot;A useful comparison is the recent privatisation of Shaw 
Brothers (Hong Kong) Limited. There was also a substantial increase of 
approximately 77% (235) in the number of registered shareholders between the 
date of the announcement of the scheme (on 22 December 2008) and the date of the 
closure of the register of members (20 February 2009). Among those newly 
registered shareholders, 78.8% (175) held one board lot of shares. In terms of 
head-count, 237 minority shareholders voted at the meeting and 231 voted for the 
scheme.&quot;</blockquote>
<p><em>Webb-site.com</em> regards that comparison as irrelevant, because the Shaw Brothers meeting
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090227/LTN20090227349.pdf">took 
place</a> well after news of the PCCW vote-rigging scandal broke on 30-Jan-09, so 
the vote-splitting at Shaw Brothers could well have been inspired by what was 
going on at PCCW, whether or not it involved some of the same vote-splitters.</p>
<p>To counter this,<em> Webb-site.com</em> has dug up the voting announcements on every 
privatisation by scheme of arrangement prior to PCCW which we can find since the 
start of 2005, and below are the numbers of shareholders who voted on each of 
these 18 deals. 
Note that in most cases, HKSCCN voted both ways, which is why the number of votes cast is often 1 
more than the number of voters. We also indicate whether the scheme was passed 
or failed, and the reason for it:</p>
<table class="optable c2l" style="font-size:10pt">
	<tr>
		<th>Date</th>
		<th class="style3">Name</th>
		<th>Voters</th>
		<th>For</th>
		<th>Ag.</th>
		<th>P/<br>F</th>
	</tr>
	<tr>
		<td>16-Oct-08</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081016/LTN20081016464.pdf">
		CITIC International Financial Holdings Ltd</a> (<strong>CIFH</strong>)</td>
		<td>170</td>
		<td>160</td>
		<td>10</td>
		<td>P</td>
	</tr>
	<tr>
		<td>17-Sep-08</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080917/LTN20080917445.pdf">
		China Netcom Group Corporation (Hong Kong) Ltd</a></td>
		<td>99</td>
		<td>98</td>
		<td>2</td>
		<td>P</td>
	</tr>
	<tr>
		<td>17-Apr-08</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080417/LTN20080417542.pdf">
		Pacific Century Premium Developments Ltd</a></td>
		<td>31</td>
		<td>10</td>
		<td>22</td>
		<td>F75, F10</td>
	</tr>
	<tr>
		<td>25-Feb-08</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080225/LTN20080225270.pdf">
		Lei Shing Hong Ltd</a></td>
		<td>32</td>
		<td>32</td>
		<td>1</td>
		<td>P</td>
	</tr>
	<tr>
		<td>10-Aug-07</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070810/LTN20070810151.pdf">
		Tom Online, Inc.</a> (<strong>TOI</strong>)</td>
		<td>75</td>
		<td>59</td>
		<td>16</td>
		<td>P</td>
	</tr>
	<tr>
		<td>27-Jun-07</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070627/LTN20070627349.pdf">
		Shimao International Holdings Ltd</a></td>
		<td>1</td>
		<td>1</td>
		<td>0</td>
		<td>P</td>
	</tr>
	<tr>
		<td>15-Dec-06</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061215/LTN20061215181.pdf">
		China National Aviation Co Ltd</a></td>
		<td>38</td>
		<td>38</td>
		<td>1</td>
		<td>P</td>
	</tr>
	<tr>
		<td>13-Nov-06</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061114/LTN20061114066.pdf">
		Winsor Industrial Corp Ltd</a></td>
		<td>49</td>
		<td>48</td>
		<td>1</td>
		<td>P</td>
	</tr>
	<tr>
		<td>18-Oct-06</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061018/LTN20061018113.pdf">
		Wong's Kong King International (Holdings) Ltd</a></td>
		<td>23</td>
		<td>18</td>
		<td>6</td>
		<td>F75</td>
	</tr>
	<tr>
		<td>11-Sep-06</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060911/LTN20060911174.pdf">
		Egana Jewellery &amp; Pearls Ltd</a></td>
		<td>17</td>
		<td>17</td>
		<td>1</td>
		<td>P</td>
	</tr>
	<tr>
		<td>6-Sep-06</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060907/LTN20060907023.pdf">
		SNP Leefung Holdings Ltd</a></td>
		<td>49</td>
		<td>49</td>
		<td>0</td>
		<td>P</td>
	</tr>
	<tr>
		<td>15-Jun-06</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060616/LTN20060616053.pdf">
		China Resources Cement Holdings Ltd</a></td>
		<td>20</td>
		<td>18</td>
		<td>3</td>
		<td>P</td>
	</tr>
	<tr>
		<td>3-May-06</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060503/LTN20060503206.pdf">
		Asia Aluminium Holdings Ltd</a></td>
		<td>20</td>
		<td>17</td>
		<td>3</td>
		<td>P</td>
	</tr>
	<tr>
		<td>20-Jan-06</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060120/LTN20060120107.pdfhttp://www.hkexnews.hk/listedco/listconews/sehk/20060120/LTN20060120107.pdf">
		Henderson Investment Ltd</a> (<strong>HI</strong>)</td>
		<td>153</td>
		<td>111</td>
		<td>42</td>
		<td>F10</td>
	</tr>
	<tr>
		<td>13-Jan-06</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060113/LTN20060113105.pdf">
		New World TMT Ltd</a></td>
		<td>20</td>
		<td>16</td>
		<td>5</td>
		<td>P</td>
	</tr>
	<tr>
		<td>22-Jul-05</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050725/LTN20050725048.pdf">
		Henderson China Holdings Ltd</a> (<strong>HCH</strong>)</td>
		<td>137</td>
		<td>98</td>
		<td>41</td>
		<td>P</td>
	</tr>
	<tr>
		<td>29-Jun-05</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050630/LTN20050630038.pdf">
		Hutchison Global Communications Holdings Ltd</a></td>
		<td>14</td>
		<td>14</td>
		<td>1</td>
		<td>P</td>
	</tr>
	<tr>
		<td>5-Jan-05</td>
		<td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050105/LTN20050105090.pdf">
		Kwong Sang Hong International Ltd</a> (<strong>KSH</strong>)</td>
		<td>77</td>
		<td>63</td>
		<td>15</td>
		<td>P</td>
	</tr>
	<tr class="total">
		<td>Average</td>
		<td>
		&nbsp;</td>
		<td>56.9</td>
		<td>48.2</td>
		<td>9.4</td>
		<td>&nbsp;</td>
	</tr>
</table>
<p><em>Key:</em><br>
P = Pass, F=Fail<br>
F75 = failed because less than 75% of shares voted were in favour<br>
F10 = failed more than 10% of all independent shares were voted against</p>
<p>The table shows that the average number of voters in these meetings was just 
57, of which 48 were in favour and 9 against. On only two occasions did the 
number in favour reach triple-digits. One of those had the largest number of 
votes against (42). It is possible, of course, that some small-scale vote-splitting was done in 
some of these transactions, but given the small numbers of votes cast, it 
certainly wasn't a common practice. If it had been, then the SFC 
would doubtless have intervened before, as they did in 1992 in the Chinese 
Estates case (pre-CCASS), when there were 491 newly registered holders among the 
644 in favour of that scheme, of whom 527 held just one board lot, and there 
were 214 shareholders opposed, of whom only one held a single lot.</p>
<p>Note that among the larger figures in the table above:</p>
<ul>
	<li>there tends to be a greater number of existing registered 
shareholders in old companies which were listed before the advent of CCASS in 1993, which immobilised 
share certificates. Many old shareholders kept their certificates after 1993 
	unless and until they wanted to sell the shares. This may account for the larger number of votes in CIFH, 
which was listed in 1980 as Ka Wah Bank.</li>
	<li>Similarly, HI was listed in 1972, pre-CCASS. In fact, there were two 
	attempts to privatise it, and the number of voters on the
	<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030102/LTN20030102118.pdf">
	first attempt</a>, on 2-Jan-03, totalled 440. By comparison, the number who 
	voted in 2006 was reduced to 153, presumably because a lot of registered 
	shareholders had since deposited their shares in CCASS in order to sell.</li>
	<li>KSH was listed back 
in 1941 just before the Japanese invaded, long before CCASS.</li>
	<li>HCH was listed in 1996 but it was a 
spin-off of Henderson Land Development Co Ltd (<strong>HLD</strong>, 0012) and holders 
of HLD were entitled to subscribe 1 share for every 250 held by them, so that 
could explain the larger number of voters there, because HLD was listed in 1981, 
before CCASS.</li>
	<li>TOI was listed in 2004 but it was a spin-off of Tom Group Ltd which in 
	turn had 10,700 HK residents who subscribed to its web-site in a lucky draw 
	to qualify for its IPO, of whom 8.975 subscribed, giving it a large 
	registered shareholder base, not to mention the thousands who applied for 
	the IPO, which was 669 times over-subscribed with 453,202 applications 
	(about 1 in 50 succeeded).</li>
</ul>
<p><strong>If you take out CIFH, HI, KSH, HCH and TOI from the above table for 
the reasons given, then the average number of voters in the remaining 13 cases 
was just 32, with 29 in favour and 4 against.</strong></p>
<p>PCCW inherited most of its registered shareholders from Cable &amp; 
Wireless HKT Ltd (<strong>HKT</strong>) upon the takeover in 2000, as this was 
partly a share swap. HKT in turn inherited its shareholder base from Hong Kong Telephone Company 
Ltd (<strong>HK Telephone</strong>) on 22-Jan-1988, when HK Telephone and Cable 
and Wireless (Hong Kong) Ltd were merged and each share in HK Telephone was 
swapped for two shares of HKT. HK Telephone was incorporated in 1925 and listed 
so long ago nobody seems to know when, but it was in the Hang Seng Index when 
that was established in 1964. So it had a large registered shareholder base before the 
privatisation proposal was announced.</p>
<p>When PCCW took over HKT by SoA, the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000703/LTN20000703064.doc">
announcement</a> of the HKT meeting results didn't bother to state the numbers of 
shareholders who voted, or even the numbers of shares voted. Fortunately, however, 
para 19 of 
the Ruling sanctioning that scheme
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=34303&amp;currpage=T">
states</a> that 1,704 shareholders voted, of whom 97.36% were in favour, which 
implies that 1,659 were in favour and 45 against. By comparison, at the PCCW meeting 
on 4-Feb-09, there were 2,263 votes (an increase of 604), of which 1,404 were in 
favour and 859 were against. These figures were actually 6 higher (1 in favour, 
5 against) than the numbers in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090205/LTN20090205941.pdf">
announcement</a> of results on 5-Feb-09, which says something about the accuracy 
of Computershare's counting and checking. The miscount was discovered during the 
vote-rigging investigations and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090224/LTN20090224358.pdf">
attributed</a> to a &quot;clerical error&quot; caused by &quot;manual counting at the Court 
Meeting venue&quot;.</p>
<p>So we can conclude this section by stating that <strong>there is no evidence 
that vote splitting was common before PCCW</strong>. However, if the Ruling is 
upheld on appeal, then vote-splitting will certainly be common in future, 
because proponents and opponents of privatisations will engage in a chaotic 
paper chase to approve or block the deal by legal, court-endorsed 
vote-splitting. This is not the way privatisations should be decided, but until 
the law is amended to remove the headcount, that is the way it may be, if the Ruling is upheld.</p>
<h3>Voting analysis</h3>
<h4>Pre-existing shareholders were overwhelmingly opposed, by headcount</h4>
<p>Consider the statistics in para 61 of the Ruling, which relates 
whether holders were registered before or after the proposed privatisation was 
announced on 30-Oct-08:</p>
<table class="optable center fcl">
	<tr>
		<th>When were they registered?</th>
		<th>For</th>
		<th>Against</th>
		<th>Total</th>
	</tr>
	<tr>
		<td>Registered before 30-Oct-08</td>
		<td>116</td>
		<td>829</td>
		<td>945</td>
	</tr>
	<tr>
		<td>Registered after 30-Oct-08</td>
		<td>1288</td>
		<td>30</td>
		<td>1318</td>
	</tr>
	<tr class="total">
		<td style="text-align: left">Total</td>
		<td>1404</td>
		<td>859</td>
		<td>&nbsp;2263</td>
	</tr>
</table>
<p>It is clear from this that of those holders who voted against, 96.5% of them 
were shareholders before the proposal was announced, and for those who voted in 
favour, 91.7% of them became shareholders after the proposal was announced. 
<strong>87.7% of the pre-existing registered shareholders who voted were opposed to the 
scheme</strong>. </p>
<h4>The first meeting would probably have failed if not adjourned</h4>
<p>From para 61 of the Ruling, of the 1,288 newly-registered holders in favour, there were 940 registered 
after 30-Dec-08, the day the first meeting was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081230/LTN20081230621.pdf">adjourned</a> to receive an increased 
offer. Therefore 348 were registered between 30-Oct-08 and 31-Dec-08. This gives 
us a clear indication that, if the first meeting had gone ahead, the headcount would 
probably have voted it down, even if the share count was in favour. The likely outcome would have been as follows 
(conservatively ignoring the 30 opposing voters who registered after 30-Oct-08):</p>
<table class="optable center fcl">
	<tr>
		<th>What if the first meeting had gone ahead?</th>
		<th>For</th>
		<th>Against</th>
		<th>Total</th>
	</tr>
	<tr>
		<td>Registered before 30-Oct-08</td>
		<td>116</td>
		<td>829</td>
		<td>945</td>
	</tr>
	<tr>
		<td>Registered from 30-Oct-08 to 30-Dec-08</td>
		<td>348</td>
		<td>NA</td>
		<td>348</td>
	</tr>
	<tr class="total">
		<td style="text-align: left">Total</td>
		<td>464</td>
		<td>829</td>
		<td>1293</td>
	</tr>
</table>
<p>So as we can see, if the vote had gone ahead, 64.1% would likely have been 
opposed, and possibly more, because the offer price was lower then. Based on the 
flood of newly-registered holders who eventually voted in favour, there was probably some vote-splitting going on before the first meeting, 
but it wasn't enough. By the time of the first meeting, the Registrar would 
already have a very good idea of how the vote would go from the proxies which 
had been mailed in. We assume 
that PCCW and, by extension, the Offeror, had access to this information. 
Perhaps this is why the meeting was adjourned, and the only credible way to do 
that was to table an increase in the offer.</p>
<h4>The majority of those who held more or less than 1 board lot were opposed</h4>
<p>From para 47 of the Ruling, here's how the votes in the final meeting break down:</p>
<table class="optable center fcl">
	<tr>
		<th>&nbsp;</th>
		<th>For</th>
		<th>Against</th>
		<th>Total</th>
	</tr>
	<tr>
		<td>Less than 1,000 shares</td>
		<td>27</td>
		<td>181</td>
		<td>208</td>
	</tr>
	<tr>
		<td>1,000 shares</td>
		<td>777</td>
		<td>63</td>
		<td>840</td>
	</tr>
	<tr>
		<td>More than 1,000 shares</td>
		<td>600</td>
		<td>615</td>
		<td>1215</td>
	</tr>
	<tr class="total">
		<td style="text-align: left">Total</td>
		<td>1404</td>
		<td>859</td>
		<td>2263</td>
	</tr>
</table>
<p>
Clearly, the majority of those who held less than one board lot, and the 
majority of those who held more than one board lot, were opposed to the scheme. 
Also, note from para 63 of the Ruling that the 600 holders in favour with more than 1,000 shares include 
142 persons who became holders after 30-Dec-08 with exactly 3,000 shares each, 
of whom 136 acquired their shares through Kingston Securities Ltd (<strong>Kingston</strong>) 
and the judge accepts that these were subject to buy-back offers, see later in 
this article. 
So without them, the majority opposition amongst &quot;larger&quot; small shareholders was even stronger 
than the figures suggest.</p>
<h3>
Francis Yuen and Inneo Lam</h3>
<p>
The SFC alleged a conspiracy between Francis Yuen Tin-fan (<strong>Mr Yuen</strong>), 
Deputy Chairman of PCRD, and Inneo Lam Hau-wah (<strong>Mr Lam</strong>), a 
regional director of Fortis Asia, to rig the vote. In the last annual report before Fortis Asia 
Holdings Ltd was privatised, Mr Lam was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070330/00065/EWF107.pdf">
listed</a> as one of two &quot;Executive Regional Directors&quot;, the other being Paul Ng 
Wing-keung. Below them, there were 28 &quot;Regional Directors&quot;.</p>
<p>
It is established fact that Mr Lam acquired 500,000 shares through Newpont 
Securities Ltd on 5-Jan-09, shortly after a phone call with Francis Yuen, and 
that the shares were withdrawn from CCASS as single board lots. Mr Lam 
distributed the shares to 5 team heads, and they in turn distributed these to 
underlings in the insurance agent food chain. The SFC said there were 9 calls 
between Mr Yuen and Mr Lam between 30-Dec-08 (the day of the first shareholder 
meeting) and 4-Feb-09 (the day of the second shareholder meeting). The longest 
lasted 7.5 minutes on 30-Dec-08. Five of the calls were on 5-Jan-09, the day Mr 
Lam purchased the 500 board lots. This information was obtained by the SFC 
during its investigation, 
presumably from phone logs, so the content of those calls remains unknown. There 
were also 2 SMS messages from Mr Yuen to Mr Lam on 4-Feb-09, shortly before the 
shareholder meeting, the contents of which are also unknown.</p>
<p>
Of the 500 lots, 494 were voted in favour of the Scheme (para 65). Mr Lam claimed 
that the shares were a bonus to his subordinates. Fortis Asia does not prohibit 
such inter-agent bonuses, and the agents are all self-employed.</p>
<p class="regbox">
Off-topic: this employment status, common in the industry, is somewhat elegant - 
the Pacific Century Insurance prospectus in 1999 described them as<em>
&quot;full-time, self-employed agents who operate out of its branch network and are 
contracted to sell the Group's products exclusively&quot;</em>. So they spend all day 
selling only Fortis Asia products from Fortis Asia offices, but are not employed 
by Fortis Asia. It's probably just a matter of time before (former) insurance 
agents of one of these insurers start suing their principal alleging an 
employer-employee relationship and demanding paid leave (including commissions 
they could have earned if they were working) and all the other trinkets that our 
interventionist Employment Ordinance provides, including long-service and 
severance payments. If the minimum wage comes in, then it will otherwise leave 
all &quot;self-employed&quot; insurance agents outside its scope, as they are now outside 
the Employment Ordinance. We could then likely see all the estate agencies in 
Hong Kong laying off their employees and making them self-employed &quot;agents&quot; too. 
Same goes for travel agents and any other commission-based profession you can 
think of. Tens of thousands of &quot;agents&quot; will be outside the scope of the minimum 
wage - which is another reason why it is such a bad idea. But we digress - back 
to the story!</p>
<p>
The 500,000 shares were worth (at the 5-Jan-09 closing price) about $1.75m, so this was 
indeed a generous gift, given that Mr Lam's own bonus from Fortis was just $5m 
subject to adjustment, of which $2.5m was paid in Nov-08 and $1.9m in Feb-09. 
Also, as he has 1,000 agents under him (para 82), he appears to have chosen to 
give bonuses to only half of the agents under him (at most) rather than all of 
them, and claims to have chosen 5 team-heads to distribute the shares. The 
Ruling does not shed any light on why he picked these particular 5 teams to 
distribute the shares to - have they performed particularly well? Were they not 
rewarded for that by commissions from Fortis Asia itself?</p>
<p>
Mr Lam had also purchased 1.9m shares for his own account, on which he stood to 
gain about the same amount as the cost of giving away 500,000 shares, if the 
privatisation succeeded.</p>
<p>
The judge rightly states that the Court cannot infer wrong-doing 
when there are two equally probably inferences from the facts, one of which is 
an innocent explanation. In para 79 She quotes from Bradshaw v McEwans Pty Ltd (1951), which in 
turn was quoted in Luxton v Vines (1952), both in the Australian High Court:</p>
<blockquote>
&quot;In questions of this sort, where direct proof is not available, it is enough if 
the circumstances appearing in evidence give rise to a reasonable and definite 
inference: they must do more than give rise to conflicting inferences of equal 
degrees of probability so that the choice between them is mere matter of 
conjecture... But if circumstances are proved in which it is reasonable to find a 
balance of probabilities in favour of the conclusion sought then, though the 
conclusion may fall short of certainty, it is not to be regarded as a mere 
conjecture or surmise&quot;</blockquote>
<p>
The SFC submitted that Mr Lam's explanation of bonuses-for-agents was 
&quot;incredible&quot; and the judge cited 9 reasons set out in para 88 of the Ruling. In turn, she 
says PCRD gave (coincidentally) 9 matters why this submission should be 
rejected, set out in para 91 of the Ruling. Amongst these 9 matters, she 
mentions in item (3) that two of the team heads sold some of the shares they 
received. Almost as if to bring the total of reasons to 9, the judge cites the 
same sales in item (7) of her list.</p>
<p>
But let's examine that sales claim more closely. When Mr Lam withdrew the 500 
lots from CCASS, he would have received certificates in the name of HKSCCN. In 
order to sell those shares in the market, a holder would have to put them back 
into CCASS, at which point they could no longer count separately for the 
headcount vote. But the SFC says that 494 of the lots were voted at the meeting. 
So at most, only 6 of the lots were sold in the market, or 1.2% of the donated 
lots. It is possible that that the two team heads sold shares off-market to 
friends, but this would be highly unusual and suspicious in itself. Off-market 
sales and purchases normally involve a huge amount of paperwork, including a 
trip to the stamp-duty office and the registrars. It would have been difficult 
to turn around 2 transfers in the time available, once from HKSCCN to the team 
head, and once from the team head to the purchaser. Instead, the HKSCCN 
certificates could have been sold on by the team heads before being registered 
into the names of the purchasers. If that is the case, then there is an issue of 
stamp duty evasion.</p>
<p>
The judge concludes in para 93:</p>
<blockquote>
&quot;The existing information gives rise to no more than conflicting inferences of 
equal degrees of probability. This court is not authorised to choose between 
guesses. In my judgment, we have not moved from the realm of conjecture to the 
realm of legitimate inference.&quot;</blockquote>
<p>
and continues in para 94:</p>
<blockquote>
&quot;I decline to infer that Inneo Lam had implemented a scheme in splitting up his 
500,000 shares to assist in the privatisation of the Company. He did not even 
vote at the court meeting.&quot;</blockquote>
<p>
We don't see that whether he voted is relevant - what matters is that 
almost 500 other people who received those shares voted, not whether he did. 
Indeed, if he gave away all the 500 lots he withdrew, then he could not have 
voted them himself. He also bought 1.9m shares for himself, but the Ruling 
doesn't mention whether he withdrew those from CCASS. Assuming he didn't, then 
he may have simply given voting instructions to CCASS via his broker, as was his 
right, assuming he was independent of the offeror. Which brings us on to our 
next point.</p>
<h4>Where do you normally get 500 proxy forms from?</h4>
<p>One point the judge did not cite in the SFC's case (if they made this point) is the significance of 
this evidence in para 66 of the Ruling:</p>
<blockquote>&quot;Inneo Lam's secretary, who is his sister Lam Hau Yuk Herea, 
had obtained from Francis Yuen's secretary, Lesley Wai, 500 to 600 proxy forms 
for distribution together with the share certificates.&quot;</blockquote>
<p>The Ruling makes no comment on this, but to us it screams an obvious question 
- if there was nothing going on between the two men, then why would Mr Lam's 
secretary/sister ask Mr Yuen's secretary for 500 to 600 proxy forms? Normally if 
you need a lot of proxy forms, you ask the registrar of the company (in this 
case, Computershare). They are the ones in charge of the mailing and collecting 
of proxy forms, and that is where the bulk supply of forms would be held. Mr 
Yuen is not Computershare, and is not even a director or employee of PCCW, 
having left that company on 30-Nov-06. So why would Mr Lam turn to Mr Yuen for 
the proxy forms? In our view, this shifts the probabilities way beyond <em>
&quot;conflicting inferences of equal degrees of probability&quot; </em>if it 
wasn't there already<em>.</em> The SFC should 
argue that there is indeed a legitimate inference to be drawn from the mosaic of 
facts.</p>
<p>The SFC's statement about the source of the proxy forms presumably came from 
Mr Lam's secretary, because Mr Yuen's secretary has become uncontactable: </p>
<blockquote>&quot;The SFC has not been able to interview Lesley Wai, who 
applied for long leave on 11 February 2009. She went on leave from 18 February 
2009 and her leave period is to end on 9 April. Attempts to contact her in Hong 
Kong and Canada were not successful.&quot;</blockquote>
<p>We hope Mr Yuen's secretary is enjoying her long leave - perhaps she will 
decide to extend it for another week?</p>
<h4>
Two parts of the same allegation - Bayesian inference</h4>
<p>
Since the judge declined to find that there was any 
scheme of Mr Lam to assist in the privatisation of the Company, she said it 
was <em>&quot;strictly unnecessary to consider&quot;</em> whether Francis Yuen was 
involved in the <em>&quot;alleged scheme of Inneo Lam&quot; </em>(para 96) but states in 
para 97:</p>
<blockquote>
&quot;The basis for the allegation of the SFC rests largely on coincidental telephone 
contacts between Francis Yuen and Inneo Lam on critical dates, being 30 December 
2008, 5 January and 4 February 2009&quot;</blockquote>
<p>
This again ignores the question of why Mr Lam's secretary/sister was seeking 
500-600 proxy forms from Mr Yuen's secretary rather than the registrar. The 
judge concludes in para 105:</p>
<blockquote>
&quot;I decline to infer from the coincidence of timing of telephone communications 
and SMS messages that Francis Yuen had anything to do with, or had any knowledge 
of, what Inneo Lam did. There is merely suspicion, wholly unsubstantiated by 
evidence.&quot;</blockquote>
<p>
We suggest that it is artificial to consider this as two separate allegations - 
one that Mr Lam had a scheme, and one that Francis Yuen was involved in a scheme 
with Mr Lam. It seems to disregard the interconnectedness of the evidence (in 
particular, the obtaining of blank proxies from Francis Yuen's secretary) that 
supports an inference that both of them were involved in planning the 
vote-splitting. She should have considered this as a single allegation, and then 
compared it with the alternative (innocent) explanation, rather than splitting 
it into two mutually independent allegations, each of lower probability when 
examined in isolation than if examined together.</p>
<p>
This is what
<a target="_blank" href="http://en.wikipedia.org/wiki/Bayesian_inference">
Bayesian inference</a> is all about. Put simply, the probability that Mr Lam had 
a vote-splitting scheme (rather than a bonus scheme) if he did not have any 
contact with Mr Yuen (or anyone else from the offeror) is lower than the 
probability of a vote-splitting scheme if he had multiple contacts with Yuen at 
key points in he timetable and obtained proxy forms from Mr Yuen's secretary. 
Similarly, the probability of some conspiracy between the two men, from the 
phone contacts alone, would be much lower if Mr Lam had not bought 500 board 
lots and gifted them to his agents, and obtained proxy forms from Mr Yuen's 
secretary. If Mr Yuen had called someone else at the same times, and that person 
had not bought, split and registered any shares and had not asked Mr Yuen's 
secretary for 500 proxy forms, then nobody would be alleging a conspiracy 
between them.</p>
<h3>
Preventing share-splitting</h3>
<p>
Para 147 of the Ruling cites the question asked by 
<a target="_blank" href="http://www.erskine-chambers.co.uk/michael_todd_qc/">Michael Todd QC</a>, 
flown-in counsel for PCCW:</p>
<blockquote>
&quot;As Mr. Todd has asked, how is the company or the court to inquire into the 
reasons for the splitting of shares every time, with none of the investigatory 
powers of the SFC? Is the SFC to investigate all transfers of single or small 
board lots or odd lots between the announcement of a scheme and the court 
meeting in every proposal for privatisation in future? And if such an 
investigation is to be expected, with the attendant uncertainty involved, is it 
not likely to deter or hinder the transfer of shares in a free market once there 
is an announcement for proposed privatisation?&quot;</blockquote>
<p>
So long as we have the headcount law, the simple answer to this question would 
be to prohibit withdrawals of shares from CCASS from the date on which the 
proposal is announced until the date of the meeting, but to allow deposits of 
shares into CCASS. This would allow anyone (including registered shareholders) 
to sell, and it would allow anyone to buy shares on the stock exchange, because, 
as we have explained, 
all transactions on the exchange are settled by book-entry in CCASS without any 
transfer of registered shares taking place.</p>
<p>
There is still the possibility that pre-existing registered shareholders would 
split their shares into multiple names to support or oppose a scheme, but this 
is something that could be monitored much more easily, as off-market trading in 
registered shares is very rare.</p>
<h3>
Yes, there is a public policy</h3>
<p>
In para 151, the judge complains that:</p>
<blockquote>
&quot;There is no discernible public policy in Hong Kong regarding share splitting in 
the context of a scheme for privatisation of a company. Share splitting is not 
new in Hong Kong. Arbitrageurs have been very active in the stock market here.&quot;</blockquote>
<p>
We have already dealt with her second point - yes, arbitrageurs are very active 
in the market, but there is no evidence that they commonly engage in 
share-splitting. As for her first point, we disagree - there was a clearly 
discernible public policy when the SFC intervened in the proposed privatisation 
of Chinese Estates in 1992, filing an affidavit with the Court in Bermuda and 
alleging vote-rigging. The SCMP wrote on 2-Apr-92:</p>
<blockquote>
&quot;The SFC said in a statement issued last night that it had told the Bermuda 
Court that the Takeovers Committee was &quot;of the view that there are strong prima 
facie grounds for concern about the fairness of the vote at the February 10 
meeting&quot;.</blockquote>
<p>
<strong>So there you have it - an SFC statement, and an affidavit filed in a Bermuda 
Court, both clearly indicating a public policy against vote-rigging. Even if 
there wasn't a policy before 1992, there surely was afterwards, and the market 
was well aware of it.</strong></p>
<p>
In our view, the court should not try to bounce this back to the SFC. The judge 
clearly accepts (para 125) that it has discretion to approve an SoA, sanction is 
not a formality, and it looks at all the circumstances of the case. It surely 
has to take account of any evidence of unfairness in the process by which the 
proposal was approved by the requisite majority of shareholders, particularly 
when the proposal involves a compulsory purchase of shares from dissenting 
shareholders.</p>
<h3>
A wild goose chase?</h3>
<p>
The judge does accept the SFC's submission in relation to certain other brokers 
who arranged split votes. She says of Eugene Chuang Yue-chien, the owner of 
Chung Nam Securities Ltd and Radland International Ltd, in para 109:</p>
<blockquote>
&quot;I agree with the submission of the SFC that there are sufficiently cogent 
reasons to infer that the 132 and 18 persons in whose names the single board 
lots were acquired through Chung Nam and Radland did so as a result of a plan 
devised by Eugene Chuang, and this was done to boost the head-count in favour of 
the Scheme...The purchase of 125 of single board lots would appear to have been 
financed by Eugene Chuang.&quot;</blockquote>
<p>
And she says of Pollyanna Chu Li Yuet-wah, the Managing Director of Kingston, in para 116:</p>
<blockquote>
&quot;There was a denial of Chu Li Yuet Wah but I do not regard this as 
credible....Notwithstanding her denial and the denials of some of the 
interviewees, I accept the submission of the SFC and infer that a scheme was 
devised by her as stated above. The 175 shareholders are the beneficial owners 
of the shares, but their shares are subject to a buy-back offer.&quot;</blockquote>
<p>
However, the judge also sees nothing wrong with this in relation to the SoA, 
again relying on Mr Howe's evidence (which we have refuted above) in para 120:</p>
<blockquote>
&quot;As Mr. Howe had observed, arbitrageurs are very active in the Hong Kong stock 
market and it is not uncommon for them to adopt the device of splitting their 
shares into board lots or acquiring odd lots and registering them in the names 
of others to boost the number of their votes for the head-count requirement.&quot;</blockquote>
<p>
As we have already shown, vote-splitting is uncommon.
In para 152, the judge argues:</p>
<blockquote>
&quot;It must also be borne in mind what is sauce for the goose is sauce for the 
gander. Neither the court nor any other body in Hong Kong has the power to 
disregard any vote properly cast against a scheme, which may have the result of 
defeating the resolution such that the court will have no jurisdiction to 
sanction the scheme. In the absence of such a power, it would not be fair if the 
court were to start disregarding shares which are voted in favour of a scheme.&quot;</blockquote>
<p>
With respect, rigging a vote against a scheme would certainly be unfair, and 
could 
prevent it ever getting to court for a sanction, but <strong>since when do two wrongs 
make a right?</strong> Is the judge arguing that because we couldn't stop such 
unfairness by those opposed to a scheme, we should accept unfairness by those in 
favour?</p>
<p>
Secondly, the &quot;geese and ganders&quot; argument takes a <strong>symmetric view of an asymmetric situation</strong>. Schemes of 
Arrangement impose an outcome on all members of a class. If a scheme is approved 
in a rigged vote, then those who opposed it are permanently deprived of their 
assets at a price they regarded as unacceptable. This fundamental <em>&quot;right to 
compensation for lawful deprivation of property&quot;</em> is protected by
<a target="_blank" href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html">
Article 105 of the Basic Law</a>. That compulsory purchase doesn't happen if a vote 
is rigged to fail, in which case no property is displaced, and the offeror still 
has the option of making a general offer which individuals can accept or not, 
avoiding the headcount of an SoA altogether. So the consequences of possible 
vote-rigging in either direction are not symmetric. In any case, there is no evidence 
that anyone has ever split votes to vote against a deal, so is this argument a 
wild goose chase?</p>
<h3>
A &quot;benefit&quot; to the class?</h3>
<p>
After a citation of various cases, the judge says in para 164:</p>
<blockquote>
&quot;I am inclined to agree with Mr Yu there is a lack of evidence, let alone strong 
and cogent evidence, to show that any particular Independent Shareholder who 
voted at the court meeting was not acting bona fide for the benefit of the 
Independent Shareholders as a class, namely, to ensure that they can realise 
their investment in the Company's shares at a premium. Other than the wish to 
attain the return of HK$4.50 a share, which would go to benefit the whole 
class, I am unable to discern any collateral interest on the part of those who 
had voted in favour of the Scheme&quot;</blockquote>
<p>
With respect, surely those who voted against the scheme do not see it as a 
&quot;benefit&quot;, otherwise they would have supported it. They presumably thought they 
would be better off in the long run if their shares were not cancelled at $4.50 
each. Imagine, for the sake of argument, that the vote-splitting was done by 
opponents rather than proponents of the deal. Would the judge still argue that 
those who received these split votes were voting against the scheme &quot;for the 
benefit of the class, namely, to ensure that they do not sell out at $4.50 per 
share&quot;?</p>
<p>
The point here is that those who vote in favour regard the scheme as a benefit 
to them, and those who vote against regard it as detrimental to their interests. 
<strong>The judge seems to be saying that those who vote in favour are conferring a 
benefit on those who vote against, because the opponents don't know what is good 
for them!</strong> A scheme of arrangement is binding on everyone in the class. It is not 
that they &quot;can&quot; receive $4.50 per share, as the judge put it, but that they &quot;must&quot; receive $4.50 per 
share. that is to say, if approved, the scheme imposes a compulsory purchase of 
shares from those who objected. It's not optional.</p>
<p>
Secondly, if a shareholder was voting for the deal but had an indemnity against 
loss (as the judge accepted was true in some cases) then they did not have any 
financial interest in the outcome of the vote - so how can it be true that they 
were voting out of a &quot;wish to attain the return of HK$4.50 per share&quot;? They 
would get that anyway. As for those recipients of board lots who were acting as nominees, they had not financial interest in the 
outcome.</p>
<h3>Conclusions</h3>
<p>In our view, there is plenty of material in the Ruling for grounds of 
appeal. If the SFC wins, then PCCW will probably take it to the Court of Final Appeal 
(<strong>CFA</strong>), given the money at stake. If the SFC loses, there will 
be pressure on them to throw in the towel, but it will depend on the reasons 
given by the Court of Appeal. If there are important points of law at stake, 
then it should go the CFA and clear the air for good, because we need certainty 
on where the law stands. Either way, this case has 
highlighted an urgent need to amend the law to remove the headcount requirement, 
as we have consistently called for. The Government seems less than enthusiastic 
about this, talking through an anonymous spokesperson on the day of the Ruling 
about throwing the issue into a broader consultation on the Companies Ordinance 
in the 4th quarter of this year, which means it is unlikely to pass before 2011. 
They should accelerate it into a separate consultation and legislative bill - 
they have done so with urgent items before, such as the bill which enabled the
<a target="_blank" href="http://www.legco.gov.hk/yr07-08/english/bc/bc09/general/bc09.htm">
MPF injection</a> for low-income members. Virtually everyone, tycoons and 
investors alike, would like to see an end to the headcount rule, so it is 
unlikely to be a contentious proposal.</p>
<p>If the Ruling is upheld on appeal, then until the headcount is removed from 
law, vote-splitting will indeed become 
common and chaotic in the future on both sides of transactions. The Ruling would 
be an endorsement of vote-splitting from the Court, and Webb-site.com could use it to oppose 
transactions by donating 1 share to each reader as a souvenir of a transaction, 
in return for a signed proxy form, of course. If ganders can get away with it, 
then we'll be geese.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=16123">KINGSTON SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20730">Oshidori Securities Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12651">SEEKERS MARKETS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9425">TongChuang Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=8770">Chu Lee, Pollyanna Yuet Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=20431">Chuang, Eugene Yue Chien</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=48697">Lam, Herea Hau Yuk</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=48696">Lam, Inneo Hau Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=872">Yuen, Francis Tin Fan</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=149">Headcount test</a></li>
				
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
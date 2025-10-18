
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

<script type="text/javascript">document.title="20% of 70 is not 12";</script>

	<div class="summary">A little-noticed provision of the Government's constitutional proposals seeks to contravene the Basic Law by restricting the percentage of legislators who can hold right of foreign abode to less than that provided by the Basic Law. If the proposal proceeds into local law, then we will consider bringing a judicial review. Ironically, when it suits them, the Government proposes a percentage nomination criterion for the Chief Executive rather than the absolute number in the Basic Law.</div>

<h2 class="center">20% of 70 is not 12<br>
<span class="headlinedate">30 November 2005</span></h2>
<p>In the heat of the battle for universal suffrage, nobody seems to have 
noticed that one aspect of the Government
<a target="_blank" href="http://www.info.gov.hk/cab/cab-review/eng/report5/index.htm">
proposals</a> for constitutional reform does not comply with the Basic Law.</p>
<p>
<a target="_blank" href="http://www.info.gov.hk/basic_law/fulltext/content0204.htm#Section_3">
Article 67</a> of the Basic Law states:</p>
<blockquote>
	<p>&quot;permanent residents of the Region who are not of Chinese nationality or 
	who have the right of abode in foreign countries may also be elected members 
	of the Legislative Council of the Region, provided that the proportion of 
	such members does not exceed <b>20 percent</b> of the total membership of 
	the Council&quot;</p>
</blockquote>
<p>That's right, it says &quot;20 percent&quot;, not 12. The Government proposes to 
increase the number of legislators from 60 to 70, by creating 5 new Functional 
Constituencies to be elected by District Councillors, and 5 to be elected by 
Geographic Constituencies.</p>
<p>It doesn't take a supercomputer to tell you that 20% of 70 is 14. Ignoring 
this, paragraph 5.23 of the Government's
<a target="_blank" href="http://www.info.gov.hk/cab/cab-review/eng/report5/pdf/5th_Report_English.pdf">
report</a> states:</p>
<blockquote>
	<p>&quot;The Task Force also considers that the existing arrangement would enable 
	individuals who are not of Chinese nationality to continue to contribute to 
	Hong Kong. It would also help maintain the image of Hong Kong as an 
	international city. Therefore, the Task Force proposes that the existing 
	arrangement of 12 seats be maintained&quot;</p>
</blockquote>
<p><b>That's not the &quot;existing arrangement&quot;. 12 out of 70 is only 17.1%. Setting 
a limit of less than 20% in local law contravenes the Basic Law by restricting 
the right of permanent residents who are not Chinese and those with right of 
foreign abode to serve in the Council. If the Government claims that the Basic 
Law allows the local law to set a lower limit, then by implication the limit 
could be set at 1 seat or zero - there's nothing magical about 12. In the 
interests of full disclosure, your editor is a permanent resident with the right 
of foreign abode.&nbsp; If this proposal proceeds, then in the public interest 
we will seek legal support with a view to bringing a judicial review of the 
lower limit.</b></p>
<p>Now obviously it is not easy for local members of the pro-democracy camp to 
make this point without being accused of being &quot;unpatriotic&quot; or kow-towing to 
foreigners, but the point should be made, because Hong Kong's economic success 
is built on foreign trade and the rule of law, which itself is a foreign import. 
If the Government can subvert the rule of law by passing local legislation which 
restricts rights contained in the Basic Law, then we are on a slippery slope 
towards One Country, One System. Rights of permanent residents who have right of 
foreign abode should be protected. Let's not forget that several of the current 
Executive Councillors held, and their relatives may still hold, foreign right of 
abode.</p>
<p>Currently the reform proposals only involve amending Annexes I and II of the 
Basic Law, on the election methods of the Chief Executive and Legislative 
Council. If Government wants to amend Article 67, in the main body of the Basic 
Law, 
then it must follow due process under
<a target="_blank" href="http://www.info.gov.hk/basic_law/fulltext/content0208.htm">
Article 159</a>, and it would be the first ever amendment of 
the main body of the SAR constitution.</p>
<h3>The allocation of seats</h3>
<p>The obvious question that Article 67 of the Basic Law raises is how to 
allocate the quota of 20% when all elections are held simultaneously. So in 
1997, the Government tabled a bill to the Provisional Legislative Council which 
took the easy way out by making it independent of the election process and 
allocating the 12 out of 60 seats that could hold foreign passports to 
Functional Constituencies as follows:</p>
<ul>
	<li>Legal</li>
	<li>Accountancy</li>
	<li>Engineering</li>
	<li>Architectural, Surveying &amp; Planning</li>
	<li>Real Estate and Construction</li>
	<li>Tourism</li>
	<li>Commercial (1st) (Hong Kong General Chamber of Commerce)</li>
	<li>Industrial (1st) (Federation of Hong Kong Industries)</li>
	<li>Finance</li>
	<li>Financial Services</li>
	<li>Import &amp; Export</li>
	<li>Insurance</li>
</ul>
<p><i>Source:
<a href="http://www.hklii.hk/eng/hk/legis/ord/542/s37.html" target="_blank">Section 37(3)</a> of the Legislative Council Ordinance.</i></p>
<p>As two of the current 12 (former British passport holder David Li Kwok Po in 
Finance and Bernard Chan Chi-sze, also known by his Thai name of Charnwut 
Sophonpanich, in Insurance) have been appointed as members of the Executive 
Council, they can no longer hold right of abode in foreign countries.</p>
<p><b>Obviously this allocation makes it impossible for any non-Chinese person or a 
person with the right of foreign abode to run for election in the Geographic 
constituencies. The Basic Law was not intended to prevent this, but only to 
place a 20% cap on the legislature as a whole. If we bring a judicial review, 
then we will tackle this issue too.</b></p>
<p>A fairer system would split the 14 seats of the 70 seat council which could 
be held by permanent residents who are foreign passport-holders between the 
Functional Constituencies (7) and the Geographic constituencies (7). The 
Geographic constituency elections are determined by a distorted from of 
proportional representation which we have explained in a previous article
<a target="_blank" href="../articles/PRreform.asp">One Vote, 
Wrong System</a>. </p>
<p>Candidates who are not Chinese or have foreign right of abode would declare 
this in their candidacy, and if, apart form their right of foreign abode, more 
than 7 of them would have been elected by popular vote, then those among them 
with the 7 highest percentages of the vote in their respective constituencies 
would be elected, while the rest would be disqualified. The same process could 
be used in both the Functional and Geographic halves of LegCo.</p>
<p>The likely outcome of our suggested arrangement is that at any point in time, 
fewer than the maximum 14 legislators would hold foreign right of abode, but it 
would comply with the Basic Law, which is more than you can say for the 
Government's proposal in this matter.</p>
<h3>Fractions when it suits them</h3>
<p>Ironically, when it suits them, the Government prefers to use percentages 
rather than absolute numbers. The &quot;existing arrangement&quot; for nominating the 
Chief Executive is in
<a target="_blank" href="http://www.info.gov.hk/basic_law/fulltext/content0210.htm">
Annex I</a>, paragraph 4 of the Basic Law, which states:</p>
<blockquote>
	<p>&quot;Candidates for the office of Chief Executive may be nominated jointly by 
	not less than <b>100 members</b> of the Election Committee. Each member may 
	nominated only one candidate.&quot;</p>
</blockquote>
<p>That's a numeric limit, not a percentage. Now the Government proposes to 
raise the membership of the Election Committee to 1600, but says:</p>
<blockquote>
	<p>&quot;The Task Force proposes that...the threshold required for nominating 
	candidates be maintained at the existing level i.e. at the ratio of 
	one-eighth of total membership...the number of subscribers required shall be 
	not less than 200.&quot;</p>
</blockquote>
<p>The &quot;existing level&quot; is of course 100, not one-eighth or 12.5%. If the Basic 
Law meant one-eighth, then it should have stated a fraction or percentage, as it did in Article 67. Raising 
the threshold to 200, and also keeping the existing public nomination system 
(with all the peer pressure it brings) rather than the secret ballot used in the 
1996 nominations, will make it substantially harder for a pro-democracy 
candidate to be nominated, which of course is the Government's intent.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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
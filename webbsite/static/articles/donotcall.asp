
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

<script type="text/javascript">document.title="PCPD not answering our calls";</script>

	<div class="summary">After blogging about parts of an "intemperate grilling" from the Commerce and Economic Development Bureau over his call for a do-not-call person-to-person register, igniting public debate, the Privacy Commissioner has now refused our request, under the Code on Access to Information, for copies of the CEDB's letter and his reply letter, citing a lack of public interest. He can't have it both ways.</div>

<h2 class="center">PCPD not answering our calls<br>
<span class="headlinedate">5 September 2014</span></h2>
<p>What should we make of the recent tiff between Privacy Commissioner for 
Personal Data (<strong>PCPD</strong>) <a href="../dbpub/positions.asp?p=40255">
Allan Chiang Yam Wang</a>, and Secretary for Commerce and Economic Development,
<a href="../dbpub/positions.asp?p=27071">Gregory So Kam Leung</a>, over the 
PCPD's
<a href="http://www.pcpd.org.hk/english/infocentre/press_20140805.htm" target="_blank">
call</a> for a do-not-call register for person-to-person (<strong>P2P</strong>) 
calls?</p>
<p>Normally correspondence between Government Bureaux, or in this case, a Bureau 
(CEDB) and a statutory body, takes place behind closed doors, but Mr Chiang 
chose to bring it into the open
<a href="http://www.pcpd.org.hk/english/about/blog.html" target="_blank">in his 
blog</a> (&quot;Renewed Call to Set Up a Do-not-call Register for Person-to-person 
Telemarketing Calls caught between two Bureaux&quot;, 21-Aug-2014) by disclosing (at 
least some of) what the CEDB had said to him <em>&quot;in a letter dated 11 August 
2014&quot;</em>, with selected quotes from the CEDB's letter, generating substantial
<a href="http://www.scmp.com/print/news/hong-kong/article/1578742/hong-kong-commerce-minister-greg-so-hits-out-privacy-commission" target="_blank">
media coverage</a>.</p>
<p>Mr Chiang complained <em>&quot;It is not entirely clear why CEDB grilled on the 
figures intemperately&quot;</em>. Perhaps that's because grills are inherently hot - 
have you ever heard of a cold grilling? Leaving behind the tautology, Mr Chiang 
wrote <em>&quot;I am confident that I have in my written reply satisfied all the 
queries&quot;.</em></p>
<p>When public officials divulge selected contents of internal documents in 
their public statements, that makes those documents matters of public interest. 
&quot;Let's get to the bottom of this&quot;, we thought, and find out, in the public 
interest, what the CEDB's exact concerns are, and what the PCPD's written reply was. 
Which side was right? So on 22-Aug-2014, Webb-site filed an information request 
with the PCPD under HK's toothless
<a href="http://www.access.gov.hk/" target="_blank">Code on Access to 
Information</a>. Suddenly, the PCPD went all shy on us, and denied our request 
for both letters. The PCPD wrote in a response on 4-Sep-2014:</p>
<blockquote>&quot;The requested documents form part of the discussion with 
and consultation from the Government and should be afforded with a degree of 
protection so that the frankness and candour of such discussion is not to be 
inhibited by their being subject to public debate and criticism (<a href="http://www.access.gov.hk/en/code.htm#part2" target="_blank">paragraph 
2.10 (b)</a> of the Code refers).&quot;</blockquote>
<p>Oh really? Then why did you partially disclose what what was in them and 
ignite public debate in the first place? Is the CEDB really likely to keep 
writing to you with &quot;frankness and candour&quot; if you behave this way? But this 
hypocrisy gets richer:</p>
<blockquote>&quot;In this regard, our Office has already informed the 
public (through the Commissioner's blog) the major contents as considered 
appropriate and necessary for the further pursuit of the introduction of the 
Register in the interest of personal data privacy protection. We fail to see the 
public interest in disclosing the requested documents.</blockquote>
<blockquote>Further or 
alternatively, the said letter issued by CEDB to our Office providing 
information on the Register and related topic is third party information that 
should not be further disclosed unless with the third party's consent or the 
public interest outweighs any harm or prejudice that would result (paragraph 
2.14(a) of the Code refers). Having considered the possible harm and prejudice 
as well as the lack of public interest as pointed out above, we consider it 
inappropriate to accede to your request.&quot;</blockquote>
<p>Sorry Mr Chiang, but you cannot have it both ways. You could have kept the 
CEDB's letter confidential, and the public would never have known about your 
private exchange of letters or disagreement, but you chose to make it public, 
and thereby generate public interest. You have waived the privilege of claiming 
bureaucratic confidentiality over these letters.</p>
<p>Indeed, under paragraph 2.14(a) of the 
Code, by publishing your blog, you must have concluded that <em>&quot;the public interest in 
disclosure outweighs any harm or prejudice that would result&quot;</em>. You 
disclosed it on that basis, and now you claim that the public has a &quot;lack of 
interest&quot; in seeing the whole letters, and that &quot;harm or prejudice&quot; outweighs 
disclosure. What are you trying to hide that is so harmful or prejudicial, if you have already disclosed &quot;the major contents&quot; 
as you claim?</p>
<p>Webb-site will now file this article with the Ombudsman as a complaint under the Code 
on Access to Information.</p>
<h3>If the phone don't ring, it's me not calling you</h3>
<p>For what it is worth, Webb-site agrees with Mr Chiang's call for a 
do-not-call P2P register, even if his call is somewhat unsolicited by CEDB or 
OFCA. The 
public should have the right to opt-out of being randomly called for marketing 
purposes, disturbing their concentration while writing and publishing articles 
like this one.</p>
<p>At a glance, there are two issues with the survey though: first, the public 
views on this were ascertained by, you guessed it, randomly calling fixed-line 
phone numbers until someone answered, and then asking them what they thought 
about unsolicited calls. Yes, really. So you are bound to get a sample of people 
who tend to answer the phone. Not everyone will answer an unknown caller ID, or 
have a fixed line at home.</p>
<p>The second great irony is that one of Mr Chiang's previous jobs before this 
was Postmaster General (2003-2006), where he led an organisation which thrived 
on delivering unsolicited mail via the
<a href="http://www.hongkongpost.hk/eng/services/circular/" target="_blank">
Hongkong Post Circular Service</a>. In his
<a href="http://www.hongkongpost.hk/doc/publications/annual/2004_2005/annual_report_05.pdf" target="_blank">
final annual report</a> as Postmaster-General, Mr Chiang wrote:</p>
<blockquote>&quot;In direct mail we are...collaborating with the 
local direct marketing industry to help make this a cost-effective took for 
marketers in Hong Kong, Initiatives such as this will help to maintain growth of 
mail volumes despite the proliferation of e-mail.&quot;</blockquote>
<p>Thank goodness for that. It was only 4 years after he left that job that HK 
Post introduced a &quot;<a href="http://hongkongpost.hk/eng/publications/news/sticker/" target="_blank">No 
circular mail</a>&quot; sticker that you can put on your letter box to opt-out, 
although almost nobody uses it.</p>
<a href="https://www.youtube.com/watch?v=WwsG3PyGvL0">
<img class="center" alt="" src="../images/circular_sticker.jpg"></a>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2242652">HKSAR Privacy Commissioner for Personal Data</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=40255">Chiang, Allan Yam Wang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=27071">So, Gregory Kam Leung</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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
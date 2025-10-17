
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://webb-site.com/templates/main.css">
<title>Webb-site Reports</title>
</head>
<body>

<div id="banner" style="background-color:blue">
	<div class="box1">
		<a href="https://webb-site.com/" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="https://webb-site.com/rss.asp"><img alt="RSS feed" src="https://webb-site.com/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="https://webb-site.com/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="https://webb-site.com/images/facebook28x28.png" style="margin-left:2px"></a>
			</div>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
		<div id="loginbtn">
			
				<a href="https://webb-site.com/webbmail/login.asp" class="nodec">log in</a>
			
		</div>
		<div class="clear"></div>
		<div id="volunteer">
			<a href="https://webb-site.com/webbmail/username.asp" class="nodec"><b>Volunteer to edit the database</b></a>
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
			<form class="box4b" method="post" action="https://webb-site.com/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="https://webb-site.com/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="https://webb-site.com/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="https://webb-site.com/dbpub/orgdata.asp" method="get" name="f1">
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
		<li><a href="https://webb-site.com/">Home</a></li>
		<li><a href="https://webb-site.com/dbpub/">Database</a></li>
		<li><a href="https://webb-site.com/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="https://webb-site.com/webbmail/login.asp">Log in</a></li>
				
				<li><a href="https://webb-site.com/webbmail/join.asp">Sign up</a></li>
				<li><a href="https://webb-site.com/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="index.html">Archive</a></li>
		<li><a href="https://webb-site.com/pages/tools.asp">Tools</a>
			<ul>
				<li><a href="https://webb-site.com/pages/howtovote.asp">How to vote</a></li>
				<li><a href="https://webb-site.com/library/">Reference library</a></li>
				<li><a href="https://webb-site.com/cg/">CG directory</a></li>
				<li><a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&OPT_01=1&OPT_02=1&OPT_03=1&OPT_04=1&OPT_05=1&OPT_06=1&OPT_07=1&OPT_08=1&OPT_09=1">Companies Registry</a></li>
				<li><a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&lang=EN&in=1">Dealing disclosures</a></li>
				<li><a href="http://www.hsi.com.hk">Hang Seng Index</a></li>
				<li><a href="http://legalref.judiciary.gov.hk/lrs/common/ju/newjudgments.jsp">Judgments</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/vote/">Polls</a></li>
		<li><a href="https://webb-site.com/pages/hallofshame.asp">Hall of Shame</a></li>
		<li><a href="https://webb-site.com/pages/stuff.asp">Other stuff</a>
			<ul>
				<li><a href="https://webb-site.com/HAMS/">HAMS proposal</a></li>
				<li><a href="https://webb-site.com/pages/electiondisclosures.asp">Election returns</a></li>
				<li><a href="PECSregister.asp">PECS register</a></li>
				<li><a href="https://webb-site.com/pages/loopholes.asp">Listing Loopholes</a></li>
				<li><a href="https://webb-site.com/books/">Webb-Books</a></li>
				<li><a href="https://webb-site.com/news/">Old newsletters</a></li>
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=160">Laughing Stock</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page">Flight arrivals</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/departures/passenger.page">Flight departures</a></li>
				<li><a href="https://www.liveatc.net/search/?icao=HKG">Air traffic radio</a></li>
				<li><a href="https://www.hkemobility.gov.hk/en/traffic-information/live/cctv">Road traffic</a></li>
				<li><a href="https://www.weather.gov.hk/en/">Weather</a></li>
				<li><a href="https://webb-site.com/dbpub/idcheck.asp">HKID check digit</a></li>
				<li><a href="https://webb-site.com/dbpub/HKBRcheck.asp">HKBR check digit</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/pages/about.asp">About</a>
			<ul>
				<li><a href="https://webb-site.com/pages/aboutus.asp">About us</a></li>
				<li><a href="https://webb-site.com/photos/">Webb-Photos</a></li>
				<li><a href="https://webb-site.com/pages/mediaroom.asp">Media room</a></li>
				<li><a href="https://webb-site.com/dbpub/webbchips.asp">Webb-chips</a></li>
				<li><a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/contact/">Contact</a></li>
		<li><a href="https://webb-site.com/pages/refer.asp">Tell a Friend!</a></li>
		<li><a href="https://webb-site.com/pages/hkradio.asp">Radio</a>
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
		<li><a href="https://webb-site.com/pages/TV.asp">TV</a>
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

<script type="text/javascript">document.title="Post-service Employment of Civil Servants";</script>

	<div class="summary">Watching the Leung Chin Man case, we discovered that the not-so-public register of approved employment of ex-senior civil servants is only available offline, and entries are "unpublished" as soon as people quit. This must be the only government in the world which tries to make official secrets out of public documents rather than vice versa. To improve transparency, we are now putting the register online, along with annual reports of the advisory committee from 1990 to 2003.</div>

<h2 class="center">Post-service Employment of Civil Servants<br>
<span class="headlinedate">8 October 2009</span></h2>
<h3>Background</h3>
<p>Given the close nexus between tycoons and Government here in the Big Lychee, 
not least because you can't get elected as Chief Executive without the support of 
the tycoons and their gofers in the
<a href="https://webb-site.com/dbpub/officers.asp?p=8576&amp;hide=Y">Election Committee</a>, there is increasing public focus on the relationships at 
the working level, between the senior civil servants and the business world.</p>
<p>The issue isn't helped by the fact that anyone recruited before 1-Jul-1987 
has a
<a target="_blank" href="http://www.csb.gov.hk/english/admin/retirement/184.html">
retirement age of 55</a>, so there are quite a few people still in the service 
(anyone who was under 33 in 1987) who will be leaving the nest and making their 
way out into the community in the next few years. Since 1987, the pensionable 
age has been 60, still leaving plenty of time to top up that iron rice-bowl 
defined-benefit pension scheme (which only became an MPF-style 
defined-contribution scheme for recruitments after 1-Jun-00).</p>
<p>As HK-based readers will be well aware, there is an ongoing
<a target="_blank" href="http://www.legco.gov.hk/yr08-09/english/sc/sc_lcm/hearings/lcm_hearings.htm">
Legislative Council Select Committee</a> inquiry into the employment by
<a href="https://webb-site.com/dbpub/orgdata.asp?p=9500">New World China Land Ltd</a> (<strong>NWCL</strong>) 
of former Permanent Secretary for Housing Mr
<a href="https://webb-site.com/dbpub/positions.asp?p=26138">Leung Chin Man</a> (<strong>Mr Leung</strong>). A
<a target="_blank" href="http://gia.info.gov.hk/general/200808/15/P200808150187_0186_43442.pdf">
report</a> from the Civil Service Bureau (<strong>CSB</strong>) on 15-Aug-08 mentioned the procedures by which former Directorate-level civil servants must seek 
permission to accept employment during certain periods after they leave the 
Civil Service. The &quot;control period&quot; depends on seniority, as there are at least 
8 levels of Directorate - the details are set out in
<a target="_blank" href="http://www.csb.gov.hk/english/admin/retirement/files/c200510e.pdf">
CSB Circular 10/2005</a> and applied to people retiring on or after 1-Jan-06.</p>
<h3>The not-so-public register</h3>
<p>As the CSB report mentions in paragraph 19, for approved outside work taken 
up by officers at grade D4 or above, information on the employment &quot;will be 
placed on a register for public inspection on request&quot;. Great, we thought. Some 
transparency, to enable members of the public to spot any potential conflicts of 
interest, rewards, or non-compliance with the restrictions on employment. So we 
looked on the CSB web site for this &quot;public register&quot; but could not find it. In 
response to inquiries from Webb-site.com,
<a target="_blank" href="http://www.directory.gov.hk/details.jsp?lang=eng&amp;dn=cn%3D1119000024%2Cou%3DCSB%2Cou%3DPeople%2Co%3DGOVERNMENT%2Cc%3DHK">
Jenny Cheung Ching</a> for the CSB confirmed that:</p>
<blockquote>&quot;Members of the public may conduct physical inspection of the 
register on request. In addition, we also process enquiries through e-mail.&quot;</blockquote>
<p>This is ridiculous. What they are basically saying is that if you don't come 
looking for it (and identify yourself), we won't give it to you. This is a 
government which claims to be pursuing a
<a target="_blank" href="http://www.digital21.gov.hk/">Digital 21 strategy</a> 
of e-government, but when it suits it, everything is offline. Imagine the cost 
of labour to process each individual request by e-mail instead of simply posting 
it on a web site. You're paying for it through your taxes. By comparison, you 
will find similar registers for
<a target="_blank" href="http://www.ceo.gov.hk/exco/eng/interests.html">
Executive Councillors</a> and
<a target="_blank" href="http://www.legco.gov.hk/general/english/cmi/yr08-12/reg_0812.htm">
Legislators</a> online.</p>
<p>After the CSB had e-mailed us the files in the &quot;public register&quot;, we noticed that 
at least one was missing - the case file approving Mr Leung's employment by 
NWCL. We asked again, and CSB explained that after a civil servant ceases the 
said employment, or his &quot;control period&quot; expires (whichever comes first), then 
the approval file is removed from the register. Since Mr Leung resigned from 
NWCL on 16-Aug-08, after 16 days in the job, almost as soon as the controversy 
blew up (and 2 days before we asked for the register), the file was no longer on 
the public register. So there you have another Hong Kong example of something 
being published and then &quot;unpublished&quot; by the Government.</p>
<p>Clearly this file and others like it are a matter of public interest after 
the employment ceases - if there is any question of post-service reward for 
favours done by a civil servant, then the issue does not go away after the 
employment reward ends. Secondly, it is simply silly to put things in the public 
domain and then expect that they can be removed, as we pointed out in the
<a href="https://webb-site.com/articles/sdibreaches.asp">SFC's redaction of information</a> in its 
own press-release archive.</p>
<p>This must be the only government in the world that tries to create official 
secrets out of public documents rather than the other way around. Next, they 
will try to make steam go back into a kettle.</p>
<p>So here's what we are going to do. To make it easier for the public to 
inspect the register, until the Government starts publishing it online, we will 
request the files by e-mail on a monthly basis and publish them on 
Webb-site.com. Of course, if someone is granted approval and then quickly 
resigns their new employment within one month, like Mr Leung did, then we won't 
be able to get the file, because it simply is not practical to ask for the 
register every day. So our version of the register may not be complete. But at 
least we won't be deleting public information after it is published.</p>
<p>So <strong><a href="PECSregister.asp">click here</a></strong> to inspect our 
version of the Post-service Employment of Civil Servants (PECS) register if you 
want. It is pretty boring stuff to most readers, but there is a principle at 
stake. You'll also find it under &quot;Other Stuff&quot; in our navigation bar above.</p>
<h3>ACPECS Annual reports, 1990-2003</h3>
<p>And there's one more thing. The CSB is advised by the
<a href="https://webb-site.com/dbpub/officers.asp?p=46264">Advisory Committee on Post-service Employment of Civil 
Servants</a>, or <strong>ACPECS</strong>. They produce annual reports. Only the 
latest one was online when we looked. After our inquiry, CSB uploaded 4 more. 
But this thing has been going since October 1987, and given the current interest 
in its processes, students of governance, not to mention Legislators, might like 
to know more about the history of its work. We asked CSB to upload the rest, and 
they responded:</p>
<blockquote>&quot;the website...is not designed as the Bureau's archive&quot;.</blockquote>
<p>Well it should be, not least because it is the cheapest way to make archives 
available to the public, far cheaper than employing civil servants to deal with 
individual requests by e-mail, as they did with us. They even took the trouble 
to delete the 15th (2003) report when they uploaded the 20th (2008) report. They 
simply don't &quot;get&quot; the web. If Google can digitise all the world's books, then 
surely the HK Government can put its archives online. So, until the bureaucrats 
figure out how to use the web properly, we have obtained the missing reports 
from them and are now publishing them on the <strong><a href="PECSregister.asp">
same page</a></strong> as the register.</p>
<h3>How you can help improve Government transparency</h3>
<p>If you have access to any other government-published documents (in any area 
of its work) which should be online but are not, then <a href="https://webb-site.com/contact/">let 
us know</a>, and we will try to publish them on Webb-site.com until the 
Government puts them on its own site.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=46264">HKSAR Advisory Committee on Post-service Employment of Civil Servants</a></li>
				
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=9500">NEW WORLD CHINA LAND LIMITED</a></li>
				
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=432">NEW WORLD DEVELOPMENT COMPANY LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/natarts.asp?p=26138">Leung, Chin Man</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
		</ul>
	<hr>
<p><a href="https://webb-site.com/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="https://webb-site.com/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="https://webb-site.com/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="PECSpub.asp#top">Back to top</a></p>
<hr>
</div>

</body>
</html>
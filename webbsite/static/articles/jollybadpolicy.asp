
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

<script type="text/javascript">document.title="The wrong way to pay civil servants";</script>

	<div class="summary">A new ICAC case reminds us that the Government and public sector get bad value for taxpayers and lose good people by paying time-limited benefits that are based on irrelevant factors rather than the value of their services. Scrap all the benefits schemes and pay people what they are worth. At the same time, remove the housing loophole from salaries tax, raise personal allowances and bring down the tax rate to compensate.</div>

<h2 class="center">The wrong way to pay civil servants<br>
<span class="headlinedate">13 January 2018</span></h2>

<p>Yesterday (12-Jan-2018) the ICAC
<a href="../codocs/ICAC180112a.pdf" target="_blank">announced</a> that
<a href="../dbpub/positions.asp?p=36538&amp;hide=N">Jolly Wong Chun Kau</a>, the Chief 
Telecommunications Engineer of the <a href="../dbpub/articles.asp?p=63405">Hong Kong Police Force</a>, has appeared in 
Eastern Magistracy on charges of housing allowance fraud. Mr Wong, 58, joined 
the HKPF in 1981. On 8-Sep-1997 he allegedly submitted a "Statement on Housing 
and Housing-Related Benefits Received by an Officer/His Spouse" which contained 
a false statement that he was single, allegedly concealing the fact that his 
spouse had also received housing benefits. He received a downpayment loan and 
home financing allowances totalling over HK$1.9m under the Home Financing Scheme 
(or as the
<a href="https://www.police.gov.hk/ppp_en/15_recruit/welfare.html" target="_blank">
police web site</a> calls it, a "Home Finanching Scheme").</p>
<p>Mr Wong was a member of the
<a href="../dbpub/officers.asp?p=28824&amp;sort=namup&amp;d=2015-04-01">HKSAR 
Advisory Committee on Innovation and Technology</a> from 1-Apr-2015 to 
1-Apr-2017 and in Nov-2015
<a href="http://www.scmp.com/print/news/hong-kong/politics/article/1876634/man-tipped-head-hong-kongs-new-technology-bureau-prefers" target="_blank">
was rumoured</a> to be lined up as Undersecretary for Innovation and Technology, 
a job which eventually went to someone else. The ICAC says that the case arose 
from a complaint referred by the Treasury Department. Perhaps the case arose 
during vetting for the post. Mr Wong is of course innocent unless proven guilty.</p>
<p>The case once again reminds us of the stupidity of Government remuneration 
policy (see also <a href="housinglark.asp">The Housing Lark</a>, 9-Dec-2006). Rather than 
paying people of equal skills, experience and 
productivity the same amount, their remuneration depends in part on whether they 
are married to someone who is also receiving a housing benefit, whether they 
have a mortgage, whether they are renting a home and so on. Also, after 10 years, the benefit expires and they receive a drop in 
remuneration for doing the same work as before. Some good people who are worth 
more in the private sector then leave, while under-performers who were never 
worth what they were paid stay on despite the pay cut.</p>
<p>The policy is prevalent 
not just in Government and the uniformed services but also in other public 
sector entities such as universities. It certainly results in bad 
value-for-money for the taxpayer, as at least some of the people who stay on 
after losing the benefit were paid above the market value of their services 
while receiving the benefit.</p>
<p>Details of the Police quarters and housing benefits are at
<a href="https://www.police.gov.hk/info/doc/pgo/en/Epgo062.pdf" target="_blank">
this link</a>, including Order 62-25 on "Double Housing Benefits". Rule 4 
states:</p>
<blockquote>"An officer and his/her spouse shall not receive more than one 
housing benefit at any one time, irrespective of whether the benefit is provided 
by the Government, a public funded organization or a private sector employer."</blockquote>
<p>So there is actually a marriage penalty - it is better to stay unmarried and 
pool your benefits with your partner.</p>
<p>All of this complexity across the public sector should be scrapped in favour 
of straight-forward cash remuneration. Pay people what they are worth, no more 
and no less, regardless of how they choose to spend it. If quarters are currently provided, then a fair market rent should 
be charged until those properties are sold off in the market, whereupon they 
would have to bear market rents anyway. There is no reason why the Government 
should be both a person's employer and landlord or why public capital should be 
tied up in such property.</p>
<p>The only possible exceptions are properties which are also used for official 
functions, such as Government House in Upper Albert Road (just charge the Chief 
Executive rental for the private apartment) and perhaps the Chief Secretary's 
1951 Victoria House at
<a href="https://goo.gl/maps/iYcHR1i9afR2" target="_blank">15 Barker Road</a>, 
the Financial Secretary's 1935 mansion at
<a href="https://goo.gl/maps/nTbtJC2nKdx" target="_blank">45 Shouson Hill Road</a>, 
and the Secretary for Justice's official residence at
<a href="https://goo.gl/maps/jXekYdFUq8k" target="_blank">19 Severn Road</a> 
(which, we assume, does not currently have an illegal basement). There is also 
the Commissioner of Police's mansion at
<a href="https://goo.gl/maps/QKiKLLJ9Ay22" target="_blank">50 Magazine Gap Road.</a></p>
<p>However, it is questionable whether any of these posts, other than 
Chief Executive, can really justify an official residence when the official 
concerned could do any necessary entertaining elsewhere. Each of these splendid old 
houses is a hangover from colonial days when senior officials were sent to Hong 
Kong for a few years at a time. If it were really felt necessary to keep the 
houses for entertaining, then they could be leased out as high-end restaurants 
or "private kitchens" and closed to the public when they are needed to host an 
official function. Several of them have lovely lawns, also suitable for wedding 
receptions.</p>
<p>At the same time as scrapping Government and public sector housing benefit 
schemes, as we have <a href="tax1.asp">said before</a>, the housing 
loophole in HK's salaries tax system should be closed. This loophole deems 
housing provided or reimbursed by the employer to be worth only 10% of cash 
remuneration for salaries tax purposes, so for example, a person can be paid a 
monthly salary of $50k and rental reimbursement of $50k but only be taxed on 
$55k of value, paying much less tax than a person earning $100k in cash. Closing 
the loophole would of course result in higher revenues, so the tax rate should 
be cut to a flat rate and personal allowances raised to compensate (for more 
detail, see <a href="salariestax.asp">Reforming Salaries Tax</a>, 
24-Feb-2011).</p>
<p>So whatever happens to Jolly Wong, this remuneration policy is jolly wrong 
and should be fixed.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=63405">Hong Kong Police Force</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=36538">Wong, Jolly Chun Kau</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=62">Civil Service</a></li>
				
				<li><a href="/dbpub/subject.asp?c=60">Labour</a></li>
				
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
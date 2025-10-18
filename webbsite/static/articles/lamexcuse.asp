
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

<script type="text/javascript">document.title="Why Carrie Lam must go";</script>

	<div class="summary">The "suspension" of the Extradition Bill, which will likely lapse in July 2020, is not the end of an increasing erosion of HK's autonomy. With a rubber-stamp legislature, the only thing that now prevents draconian legislation is massive public pressure. Mrs Lam has irrevocably lost the public trust. Beijing will hold her accountable for the loss of control last week, after a suitable interval to disconnect the issues, but this will not prevent the increasing erosion of HK's autonomy.</div>

<h2 class="center">Why Carrie Lam must go<br>
<span class="headlinedate">16 June 2019</span></h2>
<p>Who said this?</p>
<blockquote>"we have decided, after detailed deliberations, to defer the 
resumption of the second reading of the Bill and to step up our efforts to 
explain the amendments to the community in the coming days."</blockquote>
<p>No, that wasn't HK Chief Executive <a href="../dbpub/natarts.asp?p=40475">Carrie Lam Cheng Yuet Ngor</a> yesterday. It was 
the first Chief Executive <a href="../dbpub/natarts.asp?p=1303">Tung Chee Hwa</a> on 7-Jul-2003,
<a href="https://www.info.gov.hk/gia/general/200307/07/0707019.htm" target="_blank">deferring</a> 
proposals for Article 23
<a href="https://www.legco.gov.hk/yr02-03/english/bc/bc55/general/bc55.htm" target="_blank">
National Security legislation</a>, after a massive and
<a href="july1.asp">peaceful protest</a> on 1-Jul-2003, and after 
Liberal Party leader <a href="../dbpub/positions.asp?p=6609">James Tien Pei Chun</a> 
resigned from the Executive Council on 6-Jul-2003.</p>
<p>On 3-4-Jul-2003, Tien had made a
<a href="https://www.scmp.com/print/article/420746/liberals-back-delay-security-legislation" target="_blank">
flying visit to Beijing</a> to check that his 8-legislator party would not face 
reprisals if they called for a 6-month delay. The bill was due to have its 
second reading on 9-Jul-2003, and protestors had planned to surround the LegCo 
building (then in Central, where the Court of Final Appeal now sits). That 
showdown was avoided with 2 days to spare and without violence. As readers will 
know, the second reading of that bill never came, and the bill lapsed at the end 
of the Legislative Council term in Jul-2004.</p>
<h3>History repeating</h3>
<p>Fast-forward 16 years to the current controversy over the
<a href="https://www.legco.gov.hk/yr18-19/english/rescindedbc/b201903291/general/b201903291.htm" target="_blank">
Extradition Bill</a>, which threatens to drive a tank through the legal firewall 
that separates the "Two Systems" of the HKSAR and the mainland. Yesterday, 
Carrie Lam
<a href="https://www.info.gov.hk/gia/general/201906/15/P2019061500707.htm" target="_blank">
announced</a> a "suspension" of the bill, stating:</p>
<blockquote>"the Government has decided to suspend the legislative amendment 
exercise, restart our communication with all sectors of society, do more 
explanation work and listen to different views of society."</blockquote>
<p>There are striking similarities to the cases of the National Security and the 
Extradition bills. In both cases, they were not stopped by the turnout of 
hundreds of thousands of people in peaceful marches on sweltering summer days 
defending HK's autonomy and way of life, nor by the objections of the legal 
community, nor by the objections of foreign governments upon whose recognition 
many of the "Special" characteristics of the SAR depend. Both Chief Executives 
were willing to press ahead against all those opinions. </p>
<p>Mr Tung only stopped because of the withdrawal of the Liberal Party's 
near-term support for the bill. He 
<a href="https://www.info.gov.hk/gia/general/200503/10/03100209.htm" target="_blank">resigned</a> in Mar-2005, citing health 
reasons, although the old geezer is alive and kicking 14 years later and 
regularly interjects in HK policies such as housing and the Lantau 
Mega-reclamation proposal.</p>
<p>Mrs Lam yesterday admitted that she only stopped because on Wednesday, when 
LegCo had been due to commence the second reading, the protests turned violent 
as some protesters tried to invade the Legislative Council precinct, including 
its official "protest zone" which, ironically,
<a href="https://news.rthk.hk/rthk/en/component/k2/1462111-20190611.htm" target="_blank">
had been closed</a> because of the pending protest. The Police then cleared 
surrounding occupied streets with a moving wave of CS gas, baton rounds, bean 
bag shots and
<a href="https://www.scmp.com/print/news/hong-kong/law-crime/article/1995693/pepper-balls-and-paintball-guns-hong-kong-police-test-tear" target="_blank">
pepper balls</a>, in what we regard as an excessive use of force against unarmed 
and largely peaceful protestors. For Mrs Lam, who was Chief Secretary during the 
months-long
<a href="https://en.wikipedia.org/wiki/2014_Hong_Kong_protests" target="_blank">
2014 Occupy movement</a>, there was to be no Occupy 2.0, at all costs.</p>
<p>In response to a CNN question on why she had taken so long to back down 
on the bill, <a href="https://isd.wecast.hk/vod/?id=9710" target="_blank">she 
said</a> (at 46:23 in the video):</p>
<blockquote>“last Sunday, we had a large number of people coming out. It was 
very peaceful. It was generally orderly. So this is part of Hong Kong. We do 
have that sort of protest from time to time. But it is on Wednesday that that 
sort of polarisation views in society relating to this bill has given rise to 
violence, very serious confrontations, people being hurt, police on the ground 
sort of being forced to take some of those measures. That’s why I come to the 
view, I told myself, that I need to do something decisively, to address two 
issues – how could I restore as fast as possible the calm in society, and how 
could I avoid any more law enforcement officers and ordinary citizens being 
injured?”</blockquote>
<p>Put simply, if Wednesday's protests had been peaceful and LegCo was operating 
(legislators could have been escorted in on foot), then she would have rammed 
the bill through what is now a majority rubber-stamp legislature. It was only 
the violence that made her stop. That's a shocking admission in itself. She 
shrugs off enormous protests as just "part of Hong Kong". The whole tone of her 
remarks yesterday was that there was nothing wrong with the bill, it was merely 
a failure of explanation, and that if we weren't all so stupid then we would 
agree with her, but she wouldn't have stopped if we had peacefully disagreed.</p>
<p>Mr Tung's administration used the same failure-to-understand messaging 
about the National Security bill in 2003. In a TVB interview on Wednesday, Mrs 
Lam compounded her insult to the intelligence of thousands of lawyers and the 
majority of the population by
<a href="http://www.thestandard.com.hk/breaking-news.php?id=129667&amp;sid=8" target="_blank">
comparing</a> the objectors to a spoilt son who doesn't know what is good for 
him.</p>
<h3>The rubber stamp still needs public consent</h3>
<p>Let's be clear: the ability to propose and pass unpopular legislation derives 
entirely from the lack of a popularly-elected legislature or chief executive. 
Only 35 of the 70 seats are elected by geographical constituencies, and even 
then, using a <a href="PRreform.asp">defective</a> proportional 
representation system which ensures that pro-democracy candidates will never get 
more than about 60% of the 35 seats and will be splintered into small parties. A 
handful of the Functional Constituencies including accounting, legal, education 
and I.T. also have broad enough professional electorates to elect pro-democracy 
candidates. So this bill would not have made any progress without the 
small-circle FCs who place their business interests and relationships with 
Beijing ahead of public opinion.</p>
<p>If HK did not tolerate free speech and public assembly then 
rubber-stamping legislation would work as it does in the PRC, North Korea and 
other authoritarian states. But when you have a public freedom to speak, debate 
and protest, then a rubber stamp is not sufficient - you must also correctly 
gauge public opinion, and gain the public's trust and consent for your 
proposals. The neutered legislature won't stop you, but the public can.</p>
<h3>Dodgy data</h3>
<p>The vast majority of the HK population correctly perceives the mainland 
judicial system as unreliable. In a randomised Cantonese
<a href="https://www.hkupop.hku.hk/english/report/singming_extradition_bill/" target="_blank">
telephone poll</a> conducted by the University of Hong Kong in late May-2019, on 
the question of whether mainland China provides fair trials, those who agreed 
were outnumbered by 4.2 to 1 (59% v 14%). That was the fundamental reason for 
public opposition to the bill - not a lack of understanding.</p>
<p>The Government dressed up the proposals by excluding certain (but not all) 
white-collar crimes at the request of nervous business tycoons, but that just 
underlined that the business community doesn't trust the mainland courts either 
- and these same tycoons have to deal with the mainland system, so they should 
know. Then the Government narrowed the scope from offences with a maximum term 
of at least 3 years, to those with a maximum of at least 7 years. That just 
means that those who are unfairly convicted will face longer terms - it doesn't 
change the unfairness.</p>
<p>In desperation, Secretary for Security 
<a href="../dbpub/positions.asp?p=1952426">John Lee ka Chiu</a>
<a href="https://news.rthk.hk/rthk/en/component/k2/1461077-20190605.htm" target="_blank">
extracted figures</a> from the World Economic Forum's
<a href="http://reports.weforum.org/global-competitiveness-report-2018/competitiveness-rankings/#series=EOSQ144" target="_blank">
Global Competitiveness Report</a>, in which China ranks 45th out of 145 for 
judicial independence with a score of 4.5 (out of 7), better than Spain on 4.1 and South 
Korea on 4.0, he said. So what's the problem then? What he failed to mention is 
that this is not the opinion of the WEF, it is an in-country "Executive Opinion 
Survey" conducted by different bodies in each country. In China's case, the 
survey
<a href="http://reports.weforum.org/global-competitiveness-report-2018/contributors-and-acknowledgements/" target="_blank">is conducted</a> either by the National Development and Reform Commission or 
Tianjin University of Finance and Economics. What you are seeing is the opinion 
of senior mainland executives, many of whom are Communist Party members running 
state-controlled companies. What did you expect them to say? We are surprised 
that China didn't score higher. North Korea, if it had participated, would 
probably have topped the rankings.</p>
<p>No amount of window-dressing on this bill can change the unfairness of the 
mainland judicial system. Historic documentation
<a href="https://www.scmp.com/print/comment/opinion/article/3012853/there-no-loophole-hong-kongs-current-extradition-law-rather-it" target="_blank">clearly shows</a> that excluding it from the scope of extradition 
legislation 
was not a loophole or an error, it was essential to the One Country Two Systems 
model. Macau, with its Portuguese-inherited civil-law system, and Taiwan, with 
its own, could have been dealt with by separate arrangements, but this was 
politically unacceptable, and once Beijing got wind of the bill (assuming they 
didn't propose it), they jumped in with gusto - at last, they could assert their 
jurisdiction over HK via the back door.</p>
<h3>Mrs Lam is now on borrowed time</h3>
<p>The current 4-year term of LegCo expires in July 2020, and with it, any 
outstanding bills will lapse. It would be political suicide for any Chief 
Executive to try to resume the second reading of the Extradition Bill between 
now and then, so we can be fairly confident that the bill will lapse in July 
2020 and then rejoin the National Security bill on the long-term to-do list.</p>
<p>But that leaves us with one loose end: Mrs Lam. Her stubborn insistence that 
the bill was right and should not be withdrawn shows either willful ignorance of 
the damage it would do to HK's autonomy, or that her masters in Beijing will not 
let her drop it, or both. To drop it would be to admit that they are fallible, 
and an authoritarian leadership can never show weakness. To Beijing, the bill 
was correct and they need to be able to extradite suspects to face the shoddy 
mainland justice system.</p>
<p>But privately, Beijing will hold her responsible for leading them down 
this path and triggering huge public protests, which despite the great firewall 
of China, will become known to mainland citizens, not least because they are 
increasingly free to travel. Since the shock of 2003, Beijing's overriding 
instruction has been to prevent large public protests, for fear that it could 
inspire protests in the mainland. It's why both Mr Tung and 
<a href="../dbpub/natarts.asp?p=1680">Leung Chun Ying</a> did 
not see a second term of office, and nor will she.</p>
<p>If she were a stock, we would recommend shorting Mrs Lam with a target 
price of zero. Call it the Carrie trade. She has irrevocably lost the public's 
trust. Her 5-year term of office runs to 
30-Jun-2022 but she has proven herself as tone-deaf as Mr Tung and a second term 
is out of the question. Her minders in Beijing, while expressing public support 
for now, have clearly lined her up for the chop by distancing themselves from 
the proposal in recent days, while she refuses to confirm that she
<a href="https://www.hongkongfp.com/2019/06/15/just-hong-kong-leader-carrie-lam-pause-controversial-extradition-bill-reports/" target="_blank">
crossed into the mainland</a> to visit her
<a href="https://news.rthk.hk/rthk/en/component/k2/1458612-20190521.htm" target="_blank">
immediate boss</a> Vice Premier Han Zheng in Shenzhen on Friday night (intra-day 
absences of the CE are not gazetted).</p>
<p>To avoid loss of face for both Beijing and Mrs Lam, there will be a decent 
interval before she excuses herself, but go she must, perhaps to spend more time 
with her family, something that she claimed she wanted before her
<a href="https://www.hongkongfp.com/2017/03/30/newly-elected-carrie-lam-reiterates-god-called-upon-run-begins-forming-cabinet/" target="_blank">
god called on her to run</a> (and who knew that her god speaks mandarin?).</p>
<h3>Erosion of the Special in SAR</h3>
<p>Mrs Lam's now-inevitable departure won't resolve HK's problems though. Under 
Beijing's increasingly hands-on approach, it is only a matter of time before the 
next attack on HK's freedoms - perhaps with the thought-crimes
<a href="https://www.legco.gov.hk/yr18-19/english/bc/bc53/general/bc53.htm" target="_blank">
National Anthem Bill</a>, which will soon make it an offence to
<a href="anthem2019.asp">satirise</a> the national anthem or not to
<em>show</em> respect when it is played, whether the person actually respects it 
or not.</p>
<p>The more that the PRC Government interferes with the autonomy promised to 
Hong Kong in the 1984
<a href="https://www.cmab.gov.hk/en/issues/joint.htm" target="_blank">Joint 
Declaration</a>, the more likely it becomes that foreign governments, most 
likely led by the US, will withdraw their recognition of Hong Kong as a separate 
customs, tax and legal territory within China and all the privileges that go 
with it. That would be severely damaging to Hong Kong’s economy, and at that 
point, having lost the benefits, the PRC Government would likely accelerate its 
destruction of the boundary between the “Two Systems”. Put simply, Hong Kong is 
unlikely to remain a Special Administrative Region if the rest of the world no 
longer regards it as special.</p>
<p>With a majority rubber-stamp legislature, the public cannot take their 
freedoms for granted. Like muscle tissue, they must exercise those freedoms or 
lose them, and that is what they did last Sunday and Wednesday. Today's 
hopefully-peaceful march will be one to celebrate that those freedoms are now the 
only thing that can prevent draconian legislation, and that is why we will 
join. The price of freedom is eternal vigilance.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1952426">Lee, John Ka Chiu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1680">Leung, Chun Ying</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1303">Tung, Chee Hwa</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
				<li><a href="/dbpub/subject.asp?c=27">Politics</a></li>
				
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
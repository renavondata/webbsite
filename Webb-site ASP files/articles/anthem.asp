
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

<script type="text/javascript">document.title="Respect, the national anthem and the Basic Law";</script>

	<div class="summary">By imposing the National Anthem Law on HK, the CPG seeks to command rather than earn respect. It will trigger another constitutional test of the freedoms promised in the Basic Law as soon as the first international HK soccer match after the law is passed kicks off. We also find a 1941 recording, 8 years before the song became an anthem, including a translation that Beijing would not regard as politically correct today. March on!</div>

<h2 class="center">Respect, the national anthem and the Basic Law<br>
<span class="headlinedate">25 March 2018</span></h2>

<p>Respect: a feeling of deep admiration for someone or something elicited by 
their abilities, qualities or achievements. Something to be earned, not 
demanded. The insecure leadership of China, however, has passed the National 
Anthem Law (<strong>NAL</strong>) demanding respect for the national anthem on 
pain of jail and, by decision of the National People's Congress Standing 
Committee on 7-Nov-2017, it has "applied" the law to Hong Kong via an amendment 
to Annex III of the
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/index.html" target="_blank">
Basic Law</a>, Hong Kong's mini-constitution.</p>
<p>Under
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_2.html" target="_blank">
Article 18(2)</a> of the Basic Law, the NAL "shall be applied locally by way of 
promulgation or legislation". Promulgation or legislation, those are the only 
choices, but the NAL as written would not directly work in HK, so it must now be 
adapted and legislated rather than promulgated.</p>
<h3>The anthem</h3>
<p>The PRC national anthem,
<a href="http://www.fmcoprc.gov.hk/eng/syzx/tyflsw/t944933.htm" target="_blank">
adopted</a> in 1949, is
<a href="https://en.wikipedia.org/wiki/March_of_the_Volunteers" target="_blank">
March of the Volunteers</a>, the lyrics of which were written by a poet and 
playwright, <a href="https://en.wikipedia.org/wiki/Tian_Han" target="_blank">
Tian Han</a>, in 1934. During the
<a href="https://en.wikipedia.org/wiki/Cultural_Revolution" target="_blank">Cultural 
Revolution</a>, Mr Tian was jailed without trial as a "counterrevolutionary" for 
a play criticising Chairman Mao's policies, and died in jail on 10-Dec-1968. The 
anthem's repetitive and pithy lyrics relate to the Chinese battle against the 
Japanese invasion. Translated, they are as follows:</p>
<blockquote>Arise, ye who refuse to be slaves!<br>With our flesh and blood,<br>
let us build a new Great Wall!<br>As China faces its greatest peril<br>From each 
one the urgent call to action comes forth.<br>Arise! Arise! Arise!<br>Millions 
of but one heart<br>Braving the enemies' fire! March on!<br>Braving the enemies' 
fire! March on!<br>March on! March, march on!</blockquote>
<p><a href="https://en.wikipedia.org/wiki/Paul_Robeson" target="_blank">Paul 
Robeson</a>, an American singer and civil rights activist,
<a href="https://www.youtube.com/watch?v=GYGYvQICcks" target="_blank">recorded</a> 
in 1941 
a variant translated with the help of
<a href="https://en.wikipedia.org/wiki/Liu_Liangmo" target="_blank">Liu Liangmo</a> 
and more in keeping with his times in the USA. This version, produced during the 
Sino-Japanese war and 8 years before the Communist Party adopted the anthem, is a version that the people of Hong 
Kong today might well prefer, but perhaps not one which today's PRC leadership 
would find politically correct:</p>
<blockquote>Arise, you who refuse to be bond slaves,<br>Let's stand up and fight 
for liberty and true democracy,<br>All our world is facing the change of the 
	tyrant!<br>Everyone who works for freedom is now crying:<br>Arise, Arise, Arise!<br>
All of us with one heart,<br>With the torch of freedom, march on,<br>With the 
	torch of freedom, <br>March on, March on! March on and on!</blockquote>
<div class="videobox"><iframe src="https://www.youtube.com/embed/GYGYvQICcks" allowfullscreen></iframe></div>
<h3>Legislation</h3>
<p>The HK Government has now sent an
<a href="https://www.legco.gov.hk/yr17-18/english/panels/ca/papers/ca20180323cb2-1063-3-e.pdf" target="_blank">
outline</a> (see annex 2) of the forthcoming National Anthem Bill to the 
Legislative Council. Article 7 proposes that every person who is present when 
the national anthem is performed or sung "must stand and deport themselves 
respectfully, and must not display any behaviour that is disrespectful to the 
national anthem". As proposed, any person who "insults the national anthem" will 
be liable to 3 years in jail and a HK$50,000 fine. Of course, the anthem is not 
a person. It doesn't have feelings, and is not capable of being insulted. What 
the Governments must mean by "insulting" is insulting the Government or the 
people it purportedly represents (albeit without democratic elections).</p>
<p>Leaving aside the fact that some attendees at official events may have fallen 
asleep during boring speeches preceding the anthem, or may be unable to stand 
due to disability, the obvious problem with the proposed requirement is that 
respect is a feeling. You either have it (to a greater or lesser extent) or you 
don't. It is earned, not taken. One can no more command respect than one can 
command a thought or a belief. Under the new law, those who don't have respect 
will be obligated to fake it - to show a respect that they don't actually have. 
Instead of rolling their eyes, crossing their fingers, turning their backs, 
looking at their shoes or booing, they must fake respect. So how will the 
authorities know who really respects the anthem, and who is faking it? </p>
<p>The NAL and its HK implementation are a sad indictment of the Government of 
1.4 billion people, some 19% of the global population. After so much economic 
progress since 1979, the Central People's Government should have the confidence 
to allow its people the freedom of thought, speech and expression to respect or 
not respect anything they want, whether or not it is a nationally-endorsed song 
or a piece of cloth on a pole. The NAL is a great leap backwards towards 
authoritarianism rather than a step towards open society.</p>
<p>When some football stars in the USA recently decided to kneel during 
the national anthem as a form of protest, they were not hauled away and jailed. 
They were exercising their constitutional freedom of expression, and so were the people who 
criticised them. The US did not even see the need for a national anthem until
<a href="https://en.wikipedia.org/wiki/The_Star-Spangled_Banner" target="_blank">
The Star-Spangled Banner</a> was signed into law by President Herbert Hoover in 
1931, just 3 years before Mr Tian wrote his poem. Just like the Chinese anthem, 
the US anthem originates from a poem about a battle against invasion, the "<a href="https://www.poetryfoundation.org/poems/47349/defence-of-fort-mhenry" target="_blank">Defence 
of Fort M'Henry</a>" in Baltimore against the British in 1814. This adopts a 
common theme to the French national anthem
<a href="https://en.wikipedia.org/wiki/La_Marseillaise" target="_blank">La 
Marseillaise</a>, written in 1792 to mobilise citizens against invasion by 
Austria and Prussia.</p>
<h3>Judicial review</h3>
<p>The great irony is that applying the NAL to HK will make the freedom-loving 
citizens less respectful, not more, of the Central People's Government. It is 
like, well, raising a red flag. It also conflicts with the freedom of expression promised in HK by the Basic Law. Any 
restriction on such freedoms must satisfy judicial tests of 
constitutional necessity. So the National Anthem Ordinance, if passed by the 
Government-majority legislature,&nbsp; will face the real prospect of judicial 
review as soon as the first crowd of
<a href="http://www.scmp.com/print/news/hong-kong/politics/article/2119909/hong-kong-soccer-fans-grow-bolder-they-boo-chinese-national" target="_blank">
booing soccer fans</a> is arrested and charged after an "international" soccer match 
in HK for insulting the anthem. </p>
<p>During a street protest on 1-Jan-1998, six months after the handover, the new 
law against flag desecration was tested by Ng Kung Siu and Lee Kin Yun. Mr Ng 
was convicted by a magistrate, but successfully appealed to the Court of Appeal,
<a href="http://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=19719" target="_blank">
which unanimously held</a> that it was "unable to accede to the [HKSAR]'s 
submission that the enactment of the Flag Ordinances was necessary for the 
normal operation of the [HKSAR]". However, that was overturned by the Court of 
Final Appeal which
<a href="http://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=18937" target="_blank">
unanimously held</a> that the flag laws were necessary "for the protection of 
public order (ordre public)". The essence of the CFA judgment appears to be that 
the restriction against desecration of flags only limited the <em>means</em> 
of expression but did not prevent a person expressing the same views in other 
ways. That judgment, which relates to an expression by means of a physical 
action involving an object (a flag), may not be sufficient to support a 
restriction on freedom of speech and expression and indeed, a compulsion to show respect, when 
it comes to performances of the anthem. <a href="../dbpub/positions.asp?p=5085">Justice Kemal Bokhary</a>, in the CFA ruling 
said:</p>
<blockquote>"If these restrictions are permissible, where does it stop? It is a 
perfectly legitimate question. And the answer, as I see it, is that it stops 
where these restrictions are located. For they lie just within the outer limits 
of constitutionality. Beneath the national and regional flags and emblems, all 
persons in Hong Kong are - and can be confident that they will remain - equally 
free under our law to express their views on all matters whether political or 
non-political: saying what they like, how they like."</blockquote>
<p>Those who respect the Basic Law will find it very hard to respect a law which 
disrespects it.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
				<li><a href="/dbpub/subject.asp?c=170">National anthem law</a></li>
				
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
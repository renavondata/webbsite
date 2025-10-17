
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

<script type="text/javascript">document.title="D-graded PERL of the Orient";</script>

	<div class="summary">The Government has announced its decision on Proposals to Enhance the Regulation of Listing. This represents only glacial progress. While they leave the door open for more meaningful reform in future phases, that is about as likely and imminent as universal suffrage, and not unrelated to that problem. We also look at the way investors have been relegated to a footnote in the report.</div>

<h2 class="center">D-graded PERL of the Orient<br>
<span class="headlinedate">28 March 2004</span></h2>
<p>Friday 26-Mar-04 was a busy day. Amid the noise of the decision 
by the National People's Congress to rewrite - sorry, <i>interpret </i>- the 
Basic Law's provisions for electoral reform (or non-reform as the case may be), 
and the kick-off of the Rugby Sevens, the Government on Friday night also
<a target="_blank" href="http://www.info.gov.hk/gia/general/200403/26/0326182.htm">
announced</a> its decision on the
<a target="_blank" href="http://www.info.gov.hk/fstb/fsb/ppr/consult/erl.htm">
Consultation on Proposals to Enhance the Regulation of Listing</a> (<b>PERL</b>).</p>

<p>To read the Government's conclusions paper,
<a target="_blank" href="http://www.info.gov.hk/fstb/fsb/ppr/consult/doc/erlcon-e.pdf">
click here</a>. The Government has its own problems with disclosure, failing to 
publish the submissions received. However, it did publish a list of respondents, 
excluding those who did not even have the transparency to reveal their names. 
The list reveals that your editor was not the only Director of Hong Kong 
Exchanges and Clearing Ltd (<b>HKEx</b>, 0388) to make a personal submission. 
See our <a target="_blank" href="PERLstrickland.asp">separate article</a> for 
John Strickland's submission.</p>

<h3>The framework</h3>

<p>The Government has decided to allow the SFC to exercise existing 
powers to make Listing Rules under Section 36 of the Securities and Futures 
Ordinance (<b>SFO</b>). Wait a minute, we hear you say - if they had these 
powers anyway, then why didn't they use them before?</p>

<p>Well that's politics - the SFO requires the SFC to first consult 
the Financial Secretary and HKEx, and in practice that means that the SFC cannot 
go any further than the Government allows. So what the Government has said is 
that the SFC can now use these powers, but only for three narrow areas of the 
Listing Rules:</p>

<ul>
  <li>financial reporting - including interim 
and annual reports</li>
  <li>the requirement to disclose 
price-sensitive information</li>
  <li>the requirement for shareholders' 
approval of some types of notifiable transactions; and...</li>
</ul>

<p>...and that's all. It's a far cry from the original 
recommendation of the Expert Group that the entire regulatory function be 
transferred to a new Listing Authority under the SFC. It also is far less than 
the SFC had proposed in the latest consultation, which in itself was a 
compromise. The SFC had proposed taking over all disclosure-related listing 
regulation, dealing with it directly as the US SEC does, and leaving HKEx to 
make rules on corporate governance. But under the Government's plan, HKEx keeps 
control of all the disclosure rules, including the disclosure rules on 
notifiable transactions (such as acquisitions and disposals), other than the 3 
areas mentioned above, and retains its front-line role.</p>

<h3>Sanctions</h3>

<p>The Government proposes to give two sanctioning powers to the 
SFC, subject to a right of appeal. If you break the new statutory Listing Rules, 
then you could be reprimanded by the SFC - but as virtually everyone (including 
HKEx) has accepted, reprimands are an ineffective toothless sanction. The other 
proposed sanction is that the SFC could disqualify you from being a director - 
this may have some marginal deterrent effect, but we can think of one or two 
crooks who successfully control their companies from the shadows without being 
directors. Indeed, being off the board avoids pesky things like the rules on 
directors' dealings and undertakings to abide by the Listing Rules. So 
ironically, the use of this sanction for breaking the statutory Listing Rules 
could put the individual beyond the reach of the statutory Listing Rules in 
future, since these rules apply to companies, directors and officers, not 
shareholders.</p>

<p>However, the paper also makes progress by proposing two further 
options. In a civil route, the SFC can refer the case to the Financial Secretary 
who may then refer it to the Market Misconduct Tribunal (<b>MMT</b>), which may 
then require you to pay up the profit you have made or the loss you avoided from 
the rule breach, although that money would go to the Government rather than the 
minority shareholders. Well at least the Financial Secretary would have a better 
chance of balancing the fiscal budget, so that should incentivise referral!</p>

<p>Alternatively, in a criminal route, if the SFC can show that the 
breach was intentional and not inadvertent (as people usually claim when their 
connected transactions are uncovered), then it can refer the case to the 
Secretary for Justice who may prosecute you, provided you don't run a newspaper 
company on whose board the Hong Kong Chief Executive used to sit. Such 
prosecution could lead to 10 years in jail and/or fines.</p>

<h3>Don't just disgorge</h3>

<p>Notably, the Government stops short of treating listed company 
directors the same way it treats licensed stockbrokers and asset managers. Such 
licensed intermediaries are subject to fining powers of the SFC, up to 3 times 
the amount of profit made or loss avoided from misconduct, subject to appeal. 
The 3 times multiplier means that if you get caught, it isn't enough just to pay 
the Government what you've made. Such punitive fines are needed to balance the 
equation of risk and reward from malfeasance.</p>

<p>We believe there is no reason why listed company directors 
should not be subject to the same level of sanctions as other financial 
intermediaries - both are entrusted with your money. If this means treating 
directors as licensed persons to bring them within the scope of this regime, 
then so be it.</p>

<h3>D-Graded PERL</h3>

<p>So while the Government has established the principle of 
statutory backing for a few listing rules, which will be made under existing 
powers of the SFC, what we are looking at is just the nucleus of the pearl, with 
just one layer of nacre.</p>

<p>The reforms are so tentative as to be of little use to 
investors. Nothing has been done to reform the composition of the Listing 
Committee or to remove its ability to veto reforms to the (non-statutory) 
Listing Rules, or to address the fundamental conflicts of being a regulator and 
for-profit at the same time. The Government again dismisses this with a 
masterpiece of semantic noodles:</p>

<blockquote>

<p>&quot;It appears from the submissions received that, from the market 
users' point of views, any conflict of interest is perceived rather than real&quot;</p>

</blockquote>

<p>Hang on a minute - if <i>&quot;it appears&quot;</i> that market users have 
a <i>&quot;point of view&quot;</i>, then they are, by definition, perceiving something, 
and if they perceive a conflict of interest, then how does that make it unreal? 
Are we all just looking at a mirage? And besides, 98% of investor submissions 
(see below) endorsed our perception that the conflict was real, and several 
organisations said the same thing.</p>

<p>Next thing you know, the Government will be talking about a 
&quot;perceived rather than real&quot; need for democracy -&nbsp; the public doesn't <i>
really</i> need the right to vote for their leader, they just <i>think</i> that 
they do.</p>

<h3>Glacial and orderly progress?</h3>

<p>The only glimmer of hope for further progress is that the 
Government has chosen to give statutory backing by way of subsidiary legislation 
under the SFO rather than primary legislation. This allows the possibility of 
further statutory rules to be made by the SFC (subject to negative vetting by 
LegCo) in what the government calls a <i>&quot;phased approach&quot;</i>. But this can 
only happen after consultation with the Government and HKEx, and no timetable is 
offered.</p>

<p>Don't hold your breath. This has many parallels with the much 
wider debate on constitutional reform in Hong Kong, where it was decided in the 
Basic Law, published in 1990, that there would be <i>&quot;gradual and orderly 
progress&quot;</i> towards the <i>&quot;ultimate aim&quot;</i> of <i>&quot;universal suffrage&quot;</i>. 
Ironically, the same day as the HK Government announced the PERL conclusions, 
the PRC Government announced that it would make an interpretation of the Basic 
Law, and will almost certainly decide that 2007 is too soon for democracy.</p>

<p>These two issues are not unrelated. If there were investor 
pressure at the ballot box, then the competing candidates and elected Chief 
Executive would be much more inclined to listen to the calls for stronger and 
more effective regulation, class action rights, a competition law and many other 
pro-consumer measures. Corporate governance and investor protection have been an 
election issue in many democracies in recent times. But in plutocratic Hong 
Kong, where the Chief Executive is elected by an 800-member committee dominated 
by tycoons, this will not be an election issue.</p>

<h3>It starts at the top</h3>

<p>Let us not forget that Hong Kong Chief Executive Tung Chee-hwa's 
own listed company, then known as Orient Overseas (Holdings) Ltd (<b>OOHL</b>), 
was steered to the brink of bankruptcy in the mid-1980s principally because of a 
mass of connected transactions between OOHL and his private family companies. 
He's an old master of bad governance. As Mr Tung himself wrote in a 
restructuring circular on 10-Nov-86:</p>

<blockquote>

<p>&quot;In the course of 1985 the OOHL Group's financial position 
seriously worsened principally as a consequence of the rapid deterioration in 
the financial position of the Tung Private Group, with which the OOHL Group is 
closely associated and from whom substantial amounts were owing.&quot;</p>

</blockquote>

<p>OOHL wrote off US$156m of debts due from the Tung Private Group, 
which comprised over 200 trading companies, and was only bailed out as a result 
of a US$120m equity injection <i>&quot;signed by&quot; </i>tycoon Henry Fok Ying-tung on 
behalf of a Liberian company called Treelane Co Ltd, the owners and financiers 
of which were never disclosed. During his selection campaign in 1996, Mr Tung 
did admit that he had received unspecified help from the mainland government 
during the rescue.</p>

<h3>Government transparency, please</h3>

<p>Speaking of disclosure, and turning back to the PERL conclusions 
paper, the Government said there had been 48 submissions. In Annex A of the 
paper, 35 respondents are named, but the other 13 requested not to be 
identified. We wonder whether any of the other 11 directors of HKEx, besides Mr 
Strickland and your editor, made personal submissions.</p>

<p>The public interest would be better served if the Government 
practiced transparency and published all submissions, as HKEx
<a target="_blank" href="http://www.hkex.com.hk/library/listpaper/details1.htm">
did</a> on sponsor regulation and as telecom regulator OFTA does. Those who 
decline to be named or published often have a vested interest to protect or are 
simply trying to pad the numbers.</p>

<p>Speaking of which, of the 35 PERL respondents who were named, 4 
of them fall under the same control; Melco International Development Ltd (<b>Melco</b>, 
200) is 50.8% owned by Lawrence Ho Yau-lung and his father, casino tycoon 
Stanley Ho Hung-sun. Melco owns 67.6% of Value Convergence Holdings Ltd (<b>VC</b>, 
8101), which in turn owns 100% of both VC CEF Brokerage Ltd and VC CEF Capital 
Ltd. Melco and its three subsidiaries each made PERL submissions. Not only that, 
but Lawrence Ho is Vice Chairman of The Chamber of Hong Kong Listed Companies, 
which also made a submission. Could any of these 5 submissions be the same, by 
any chance? And how many of the unnamed submissions also are members of that 
chamber?</p>

<p>History may provide a guide - thanks to transparency, we can 
tell you that of the
<a target="_blank" href="http://www.hkex.com.hk/library/listpaper/details1.htm">
98 submissions</a> to the HKEx/SFC consultation on sponsor regulation, 36 of 
them were identical photocopies, coming from the Chamber of Hong Kong Listed 
Companies, 34 listed companies and one law firm, Arculli &amp; Associates.</p>

<p>Meanwhile, back to the Government conclusions on Listing, where 
in the appendix the public were dealt the final insult - 52 people who sent 
e-mails supporting our submission, some including their own comments, and one 
who disagreed, were listed only as a footnote and not counted as submissions in 
their own right.</p>

<p>Now we know full well that this is not a referendum, and that 
the number of investors in Hong Kong far outweighs the number of listed 
companies, but it is nevertheless insulting to the public to stuff them all into 
a footnote and leave only one investor (your editor) on the list of submissions. 
Instead, the Government should have listed them out, numbered 1 to 53, and 
summarised investors' views on a separate basis. Only 5 of the 53 people asked 
to remain anonymous.</p>

<p>This brings back memories of the way HKEx handled the last 
consultation on the Listing Rules. When it
<a target="_blank" href="investorsignored.asp">published</a> it's conclusions in 
Jan-03, HKEx decided that there were 167 submissions - including 110 from listed 
companies, and one from your editor. They chose to ignore 337 e-mails from the 
public supporting our submission, some including their own additional comments. 
We would be amazed if the 110 listed companies were all unrelated to each other 
and astounded if many of those submissions were not identical, but the public 
will never know, because the submissions were not published.</p>

<h3>PERLs online</h3>

<p>Some organisations have published their PERL submissions online. The ones we have 
found online or published on our server can be found in our
<a target="_blank" href="PERLsubs.asp">index</a> at this link.</p>

<p>We call on the Government to publish all the submissions, but in 
the meantime, if you or your organisation made a submission which has not been 
published, and you believe in transparency, then please just <a href="../contact">
let us know</a> and we will publish it for you on our server and add it to the 
list.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=190">Statutory backing of Listing Rules</a></li>
				
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
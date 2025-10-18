
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

<script type="text/javascript">document.title="GEM Waivers Reviewed";</script>

	<div class="summary">Following our recent criticisms of the confetti of waivers granted by GEM, the SFC and SEHK have hammered out a compromise which relaxes some rules but contains some encouraging news and a minor victory for minority shareholder protection. However, the new proposals are being effected before public consultation, and by the time this is over too many horses will have bolted. The whole affair underlines the need to transfer the listing division to the SFC and let the Exchange focus on exchanging.</div>

<h2 class="center">GEM Waivers Reviewed<br>
<span class="headlinedate">12 March 2000</span></h2>
<p>In a Saturday afternoon joint <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=gem-waiver" target="_blank">announcement</a>,
the SFC and SEHK set out proposals designed to end the controversy over the way
in which the GEM listing committee has handed out listing rule waivers faster
than a sponsor can hand out dot-com application forms. </p>

<h3>Option limits imposed</h3>

<p>The good news is that the proposals will slash the waiver on
share option schemes from 50% to 30%, half way back to the existing limit of
10%, reducing the potential dilution of investors' interests. The proposals also
include a rule limiting options granted to connected persons who are also
substantial shareholders or independent non-executive directors (INEDs). This is a small but significant victory for the
protection of minority shareholders. However, it does not apply to executive
directors or anyone who owns less than 10% of the company, and that's a major
gap. </p>

<p>If the total grant of options in a twelve month period to a
substantial shareholder or INED exceeds 0.1% of the issued share capital <u>and</u> HK$5m of
share value, then the latest grant must be subject to shareholders approval, and
<u>all</u> connected persons, including substantial (10%) shareholders, must
abstain from voting (or vote against). </p>

<p>The announcement does not state that such votes should be held
on a poll (one share, one vote) rather than a show of hands (one shareholder,
one vote) but we presume that this will be confirmed and will follow the
existing GEM poll requirement as set out in rule 20.15 and 23.03(14). That is
essential to prevent meetings being rigged with employees holding as little as 1
share each. </p>

<p>The proposals also include a rule in which the 30% limit is
broken down into 3 slugs of 10%, each one requiring shareholders approval. It's
better than nothing, and slows down the potential rate of issue (10% every 3
weeks), but in most cases it will make little difference because controlling
shareholders will vote to back the directors they already appointed, effectively
allowing them to renew their own mandate. </p>

<h3>Yearlings allowed</h3>

<p>On the downside, the proposals shorten the required period of
&quot;active business pursuits&quot; from 2 years to 1 year. So far no listed
GEM company had applied for a waiver of that requirement, so we can only presume
that GEM has received an application along those lines and was about to grant
it. In practice, they had already been waiving the rule by allowing companies
like Tom.com and Sunevision (both of which launched their portals only in the
last few months) to list by transferring older subsidiaries into their listing
vehicle and then calling that a track record. </p>

<p>Tom.com did it by acquiring a Shenzhen developer of software for
electronic customs documentation, and Sunevision included a company which
installs satellite dishes on the roofs of apartment blocks. Neither of these had
much to do with the core businesses on which the stocks were promoted. </p>

<p>The GEM market was not designed to be a market for seed capital.
One-year-old start-ups are highly risky investments, and a line has to be drawn
between helping to fund young companies and protecting public investors from
their own stupidity. That is why we have laws against the free market in heroin,
cocaine, guns and explosives. </p>

<p>Your correspondent was on the committee which designed GEM, and
much time was devoted to finding a way to exclude inexperienced investors from
the market. One suggestion (not from us) was to have an enormous board lot (or
minimum transaction size), up to HK$250,000. It was ultimately determined that
this was impractical, since small investors would end up putting too much money
into one stock or &quot;syndicating&quot; a board lot amongst friends and
relatives. It would also impede liquidity. So instead a risk disclosure
statement was produced which every GEM investor must sign before dealing. </p>

<p>Recent weeks have shown that this is not a practical deterrent,
as some 10% of the adult population has applied for dot-com concept stocks.
Accepting this fact, we therefore need to ensure some level of quality on new
issuers entering the market. </p>

<p>Remember that venture capitalists are experienced investors and
are probably a better judge of start-ups than the mass market. The VC industry
in Hong Kong has been developing rapidly on the back of the technology boom, and
any firm which cannot raise sufficient venture capital to survive its first 2
years, probably does not deserve to be taking public money. We therefore believe
the requirement for a 2-year trading record should stay and should be more
rigorously enforced.&nbsp; </p>

<h3>Lock-ups reduced</h3>

<p>In another concession, the proposals scrap the 2-year lock-up on
management shareholders and reduce it to 6 months. For the following 6 months,
the management must retain 35% control of the company. That brings the GEM into
line with the main board rules. </p>

<p>A certain amount of misinformation has been spread suggesting
that the current rules prevent venture capitalists from selling their shares for
2 years, but this is not true. They were only subject to a 6-month lock-up under
Rule 13.18, no worse than underwriters typically require on Nasdaq. Therefore
the relaxation is aimed solely at management shareholders (including controlling
shareholders). </p>

<p>The proposed reduction of the lock-up period, coupled with the
reduction in the track record period, mean that after 12 months of listing, and
with a trading history of only 2 years, the management of a start-up may dump
all their shares. They can start this process when the company is only 18 months
old (aside from any shares that they may sell in the IPO). Buyer beware, be <i>very</i>
aware. </p>

<h3>What about the existing waivers?</h3>

<p>The announcement by the SEHK and SFC makes no comment on the 50%
share option limits already granted to Tom.com and Hongkong.com, which exceeds
the proposed 30% limit. In addition, Tom.com has an implicit waiver permitting
new share issues within the first 6 months. </p>

<p>This requires urgent clarification. The same rules should apply
to all companies, and if the regulators are going to implement rules by way of
continual waiver then the terms of the existing waivers should be revised
immediately to be consistent with the proposals. </p>

<p>The proposals also make no mention of the waiver granted to
Hongkong.com which allows them to issue options not just to full-time staff but
also to advisers, consultants, independent directors and part-time employees. As
we said in the previous article, this waiver raises accounting questions if
options are used to remunerate advisers and avoid recording the true cost of
services in the profit and loss account. No reason has been given for the grant
of this waiver and it should be revoked immediately. </p>

<h3>Stable doors</h3>

<p>The announcement states that the new proposals will be
implemented by way of continual waivers until the consultation period is over.
The SFC and SEHK have painted themselves into a corner on this by allowing
precedent-setting waivers to be granted before reaching this agreement. Now they
are compounding it by lowering the barriers before public consultation on the
proposals. It's like implementing laws and then asking Legco to approve them. </p>

<p>It would have been better to call a halt to all waivers and
revert to the listing rules (remember them?) pending amendment to the rules. By
the time the consultation is over, so many listings will have taken advantage of
the waivers that raising the barriers again would create a two-tier market of
those who got in before the stable doors were shut, and those who are excluded.
This will put great pressure on the regulators not to tighten any of the
proposals. </p>

<p>The SEHK and SFC have frequently been at loggerheads in past
years, and it is clear from yesterday's compromise announcement that ground had
to be given to the SEHK in order to prevent them continuing on a path strewn
with waiver confetti and complaining that the SFC is hampering market
development. </p>

<p>This whole affair serves to underline the more general point
that we should not continue with the regulatory function sitting in the
for-profit SEHK, now a subsidiary of the HKEC. What we need is a clear
separation of functions. The HKEC, as its name suggests, should focus on
developing an efficient market for transactions in securities, and the listing
division and listing committees should be transferred to the SFC. It now seems
unlikely that this problem will be resolved prior to the flotation of the HKEC,
which is reportedly being brought forward from September to June to capitalise
on the record market conditions. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10220">Sino Splendid Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10577">SUNEVISION HOLDINGS LTD.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10265">TOM GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=147">Growth Enterprise Market</a></li>
				
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
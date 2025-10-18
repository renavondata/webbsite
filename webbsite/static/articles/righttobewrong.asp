
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

<script type="text/javascript">document.title="Andrew Left and the right to be wrong";</script>

	<div class="summary">We take a close look at the Market Misconduct Tribunal's report on Mr Left's erroneous criticism of China Evergrande (3333), and what that says about free speech amongst participants in the HK market.</div>

<h2 class="center">Andrew Left and the right to be wrong<br>
<span class="headlinedate">23 October 2016</span></h2>

<p>Is it market misconduct for unlicensed members of the public to be stupid, 
ignorant or just plain wrong when commenting on listed companies? We say not, 
but the <a href="../dbpub/orgdata.asp?p=29802">Market Misconduct Tribunal</a> (<strong>MMT</strong>) 
has taken the alternative view, finding that
<a href="../dbpub/natarts.asp?p=2362187">Andrew Edward Left</a> (<strong>Mr Left</strong>), 
operating as <a href="http://www.citronresearch.com/" target="_blank">Citron 
Research</a>, disclosed false or misleading information inducing transactions 
and so engaged in market misconduct when criticising
<a href="../dbpub/articles.asp?p=44714">China Evergrande Group</a> (<strong>Evergrande</strong>, 
3333) in a
<a href="http://web.archive.org/web/20120626173320/http://www.citronresearch.com/wp-content/uploads/2012/06/Evergrande-Real-Estate-Research.pdf" target="_blank">
report</a> he published on 21-Jun-2012.</p>
<p>In the
<a href="http://web.archive.org/web/20120624020452/http://www.citronresearch.com/" target="_blank">
introduction web page</a> for the report, Citron said:</p>
<blockquote>"This research and analysis, compiled over several months, 
presents the conclusion that HK:3333 is essentially an insolvent company that 
has consistently presented fraudulent information to the investing public".</blockquote>
<p>Citron purported to "prove this conclusion" in the report. Evergrande's 
response to this was swift. A denial was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/0621/LTN20120621076.pdf" target="_blank">
published</a> at 12:48 on 21-Jun-2012, stating that the allegation was untrue, 
followed by a more detailed
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/0622/LTN20120622107.pdf" target="_blank">
rebuttal</a> at 11:56 the next day, which stated that it "will consider taking 
legal actions against Citron Research". So far, it has not sued Mr Left for 
libel or defamation.</p>
<p>The tribunal was chaired by Justice <a href="../dbpub/positions.asp?p=29934">
Michael J Hartmann</a> with 2 lay members, Mr
<a href="../dbpub/positions.asp?p=20070">Kwok Kam Hoi</a> and Dr
<a href="../dbpub/positions.asp?p=102444">Michael Wong Chak Sham</a>. Open the 
<strong><a href="../codocs/MMT160826.pdf" target="_blank">MMT report</a></strong> dated 26-Aug-2016 and we will guide you through it in this article.</p>
<p>Last week, the MMT gave an oral ruling on sanctions,
<a href="../codocs/SFC161020b.pdf" target="_blank">ordering</a> that Mr Left be 
banned from trading securities in HK for the
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s257.html" target="_blank">
maximum period</a> of 5 years, disgorge HK$1,596,240 in short-selling profits, 
pay the SFC's investigation and legal costs and cease and desist from such 
misconduct in future. Failure to comply with the order is an offence. A written 
version of the ruling is awaited (update:
<a href="../codocs/MMT161110.pdf" target="_blank">here it is</a>, dated 
10-Nov-2016). Mr Left has reportedly
<a href="http://www.reuters.com/article/hongkong-court-citron-idUSL4N1CP3BP" target="_blank">
told Reuters</a> that he plans to appeal to the Court of Appeal. This right is 
provided under
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s266.html" target="_blank">
Section 266</a> of the SFO.</p>
<h3>Racy tabloid</h3>
<p>Mr Left's style of reporting is not one that Webb-site would ever use - the 
MMT called it a "racy 'tabloid' format" and a "hard-hitting 'tabloid' style", 
using "direct, plain, Tabloid language". Tabloid is not our style, we're more of 
a "detailed broadsheet" in our approach. Nevertheless, there is room in this 
world for both the
<a href="https://en.wikipedia.org/wiki/New_York_Post" target="_blank">New York 
Post</a> and the
<a href="https://en.wikipedia.org/wiki/The_New_York_Times" target="_blank">New 
York Times</a>, the Sun and the Times of London. Anyone reading Mr Left's report 
would, in our <em>opinion</em>, be clear that Mr Left was expressing his 
opinions and making allegations, not stating outright facts. They would also be 
clear that he had no inside information - his analysis, with all its mistakes, 
was based on publicly available information which was extensively quoted in the 
report. He wasn't claiming to have some inside scoop.</p>
<p>Search the Citron report for the words "suggest(s)" or "indicate(s)" and you 
will see numerous instances in which the report was clearly expressing a view or 
conclusion, not a fact.</p>
<p>If Mr Left had been an SFC-licensed person, then he would have been held to 
the higher standard of the
<a href="http://www.sfc.hk/web/EN/assets/components/codes/files-current/web/codes/code-of-conduct-for-persons-licensed-by-or-registered-with-the-securities-and-futures-commission/Code%20of%20Conduct%20for%20Persons%20Licensed%20by%20or%20Registered%20with%20the%20Securities%20and%20Futures%20Commission.pdf" target="_blank">
Code of Conduct</a> in the quality of his analysis and output, but he was not - 
he was just a member of the investing public, not licensed and not paid by 
anyone for his opinions. The fact that he expressed his views on a web site 
under a brand (Citron Research) and has a 
<a href="http://web.archive.org/web/20120624020538/http://www.citronresearch.com/index.php/citron-knows-china" target="_blank">track record</a> of some good calls in the 
past, doesn't change that.</p>
<h3>When can a statement of opinion be false?</h3>
<p>As Mr Left is not SFC-licensed and not providing a paid service, the SFC 
could not take disciplinary action against him for shoddy analysis or prosecute 
him for operating without a license. So 
instead, they pursued him under
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s277.html" target="_blank">
Section 277(1)</a> of the SFO, alleging disclosure of false or misleading 
information inducing transactions. The detailed wording of this misconduct 
requires that a person knows that, or is reckless or negligent as to whether:</p>
<blockquote>&nbsp;"the information is false or misleading as to a material fact, 
or is false or misleading through the omission of a material fact"</blockquote>
<p>So what was the "information" that he was disclosing? In our view, the 
"information" was his analysis and resulting opinion. Everything else in the 
report was already in the public domain and not "disclosed" by him. But if it is clear that 
the "information" is his analysis and opinion, then even if that opinion is wrong, how can 
that "information" be false? After all, professional licensed analysts are often 
wrong in their analysis that a company's profits will improve, wrong that a stock 
will go up rather than down, and wrong that you should therefore buy the shares, but 
they don't normally get taken to the MMT for disclosing false or misleading 
information.</p>
<p>There's a reason for that. In our view, the "information" that someone holds 
a certain opinion can only be false if he doesn't actually hold that opinion, 
that is, he doesn't believe what he is saying. But the SFC, in bringing this 
case, did not allege that Mr Left did not believe what he was saying, and 
nothing in the MMT report suggests any 
evidence was advanced in that direction.</p>
<p>Contrast that with the infamous case of
<a href="https://en.wikipedia.org/wiki/Henry_Blodget" target="_blank">Henry 
Blodget</a>, the former Merrill Lynch analyst who was barred from the US 
Securities Industry for life after internal e-mails
<a href="https://www.sec.gov/litigation/complaints/comp18115b.htm" target="_blank">
revealed</a> that he was privately trash-talking stocks that he and his firm 
were publicly promoting. In that case, the e-mails were a smoking gun that his 
public statements of opinion were false, because he didn't actually hold that 
opinion.</p>
<p>The MMT did briefly acknowledge the difference between facts and opinions. 
Paragraph 85 (ii) of the report states:</p>
<blockquote>"a fact may be said to be an item of verified information, that is, 
the independent reality of a matter as opposed to an opinion concerning it. It 
is important to recognise the difference between an asserted fact and a comment 
concerning it"</blockquote>
<p>Paragraph 116 also states:</p>
<blockquote>"the information must be shown to be false and/or misleading as to a 
material fact, that is, a fact and not simply an expression of opinion..."</blockquote>
<p>Unfortunately, for the rest of the report, the MMT does not return to this 
distinction, and the report does not at any point analyse whether Mr Left was 
simply expressing an opinion when making his allegations. The closest it comes 
to this is in paragraph 217, where it states:</p>
<blockquote>"Opinions that are critical, however, are to be contrasted with 
direct accusations going to matters of fact"</blockquote>
<p>Here, in our opinion, the Tribunal is drawing a distinction without a 
difference. If a person says about a company "I think they are cooking the 
books", then that is clearly both an accusation and an opinion - it is not a 
representation of a fact. The allegation could only be determined to be right in 
a successful prosecution for fraud.</p>
<h3>The legislative intent</h3>
<p>Section 27 of the
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html" target="_blank">
Basic Law</a> provides a constitutional right of free speech, and Article 16 of 
the <a href="http://www.hklii.hk/eng/hk/legis/ord/383/s8.html" target="_blank">
HK Bill of Rights</a> provides freedom of expression and opinion, including the 
right to "seek, receive and impart information and ideas of all kinds", 
mirroring Article 19 of the
<a href="http://www.ohchr.org/en/professionalinterest/pages/ccpr.aspx" target="_blank">
International Covenant on Civil and Political Rights</a>. Such rights are not 
absolute. For example, you can be sued for libel and defamation, it is a crime 
to <a href="http://www.hklii.hk/eng/hk/legis/ord/200/s6.html" target="_blank">
incite mutiny</a> from the People's Liberation Army (punishable by life in 
jail), and if you are a corporate insider, you cannot selectively disclose 
price-sensitive information. If you are an SFC-licensed person, then your speech 
(including publication of research) is held to the standard of the Code of 
Conduct and you can be ordered to pay a "pecuniary penalty" (a fine) or lose 
your license with
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s194.html" target="_blank">
disciplinary action</a> for sloppy research under
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s194.html" target="_blank">
Section 194</a>.</p>
<p>However, in our view the clear legislative intent of Section 277(1) was to 
outlaw disclosure of false and misleading factual information, not incorrect but 
honestly-held opinions of the general unlicensed public. We have the law of 
libel and defamation to deal with that, and if Evergrande or companies in 
similar situations wish to sue, they can. The SFC should not be stepping into 
their shoes.</p>
<h3>Standards of comment</h3>
<p>Paragraph 182 of the MMT report states that
<a href="../dbpub/positions.asp?p=59393">Paul Anthony Phenix</a> (<strong>Mr 
Phenix</strong>) was called by 
the SFC to give evidence as an expert witness "in matters of accountancy". Fair 
enough, he is a fellow of the HKICPA and a 
<a href="https://web.archive.org/web/20161024085446/http://www.bakertillyhk.com/about-us/meet-the-team/paul-phenix/" target="_blank">
team member</a> and former director of an audit firm, 
<a href="../dbpub/adviserships.asp?p=22184">Baker 
Tilly Hong Kong Ltd</a> (<strong>Baker Tilly</strong>). However, in paragraph 234, the MMT cites his opinion on 
something else - standards of analysis and comment, on which he has no professed 
expertise. The MMT writes:</p>
<blockquote>"As [Mr Phenix] expressed it, if [a] person seeks to conduct an 
analysis of the finances of a company listed on the Hong Kong Stock Exchange, he 
must - for a start - have an understanding of the relevant accounting standards. 
If a person does not have such an understanding of these...then he should not 
comment on them. Mr Phenix built on this by saying that, if you are a 
professional analyst, then the proper thing to do is to go the company and seek 
clarification."</blockquote>
<p>This is wrong on several levels. First of all, the market is awash with 
people expressing opinions on blogs, forums and in newspaper columns as well as 
the higher-quality <em>Webb-site Reports</em>. This again is free speech, part 
of the lifeblood of free markets. There is no prohibition on people who do not 
understand accounting standards from voicing their opinions, however wrong they may be. 
Without free speech, others will not have the chance to put them right by 
criticising those opinions and voicing their own.</p>
<p>This is particularly the case if a person <em>thinks</em> they have 
understood the accounting, even if they have misunderstood it. One does not 
always know when one has misunderstood something. There is no obligation on 
commentators to appoint accounting experts before commenting, nor to seek 
comment from companies before criticising or praising them, even for licensed 
professionals, which Mr Left is not.</p>
<p>There is also no prohibition on boasting (assuming it is true) about a 
successful track record of past reports, as Citron did. That doesn't mean they 
will not make mistakes and be wrong on occasion.&nbsp; </p>
<p>Does the fact that <em>Webb-site Reports</em> has usually been right 
prohibit us from ever reaching the wrong conclusion through faulty analysis when 
we criticise companies? If so, we had better stop right now, and so should all 
other leading commentators, because we don't want to get banned from the market 
for making a mistake.</p>
<p>That's what makes a market - the constant 
debate in the court of public opinion, not in a tribunal. We cannot have 
subjective legal standards in which erroneous analysis and comment by unlicensed 
members of the public is judged to be "market misconduct" if you have usually 
been right in the past and your comments tend to move markets, but not market 
misconduct if you are usually wrong and nobody listens to you. Otherwise 
commentators will have to withdraw from the market as soon as they become 
successful enough for their opinions to influence it, leaving behind a market of 
mediocrity.</p>
<p>Put simply, in the words of Joss Stone, you have the
<a href="https://www.youtube.com/watch?v=xHVSptF3_G8" target="_blank">right to 
be wrong</a>.</p>
<p>The SFC's action and the MMT's finding, unless and until overturned on 
appeal, have cast a dark cloud over freedom of speech in the Hong Kong markets, 
wherever the commentator lives.</p>
<h3>Insolvency is a matter of opinion</h3>
<p>One area which is closer to Mr Phenix's expertise was in paragraph 188, 
regarding the allegation that Evergrande was "insolvent":</p>
<blockquote>"Mr Phenix commented in his Issue Summary that the allegation 
was not, <em>judged</em> on the available evidence, a reasonable one to make. 
Evergrande, he said, was not, <em>in his opinion</em>, "remarkably or 
comparatively illiquid"." (our italics)</blockquote>
<p>Two things come from this citation. First, Mr Phenix clearly accepts that 
insolvency is a matter of judgment and opinion, not fact. Secondly and 
incidentally, the Tribunal and Mr Phenix appear to be conflating solvency with 
liquidity. Solvency is an ability to eventually meet your obligations - an 
excess of assets over liabilities, but liquidity is an ability to pay short-term 
obligations. A person who owns a house with a 50% mortgage, for example, can be 
solvent but may not have enough cash to pay the electricity bill. Similarly, 
banks must be both solvent and maintain liquidity ratios, as the Federal Reserve
<a href="https://www.federalreserve.gov/faqs/cat_21427.htm" target="_blank">
explains here</a>.</p>
<p>Indeed, solvency or insolvency (the central allegation of the report) must 
always be a matter of opinion, not fact, until the liquidators are called in and 
we discover whether a company's assets exceed its liabilities or not. Nobody 
actually knows for sure, certainly not an analyst working on public data of a 
company that has not gone into liquidation.</p>
<p>The best guide to solvency an analyst has is the last published accounts, if 
he believes them. Take for example, the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2006/1003/LTN20061003147.htm" target="_blank">
audited accounts</a> of EganaGoldPfeil (Holdings) Ltd at 31-May-2006, which 
received a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2006/1003/00048/EWF127.pdf" target="_blank">
clean audit report</a> by none other than Baker Tilly. We questioned the 
accounts in <a href="eganaupbest.asp">our article</a> on 26-Jul-2007. The stock 
promptly crashed, was suspended 7 weeks later and was subsequently delisted. The 
SFC <a href="../codocs/SFC110801.pdf" target="_blank">began proceedings</a> 
against 3 former directors of Egana in 2011 but nothing has been announced since 
then.</p>
<h3>Footnote: probability theory</h3>
<p>One of the requirements of Section 277(1) is that the information "is 
likely.. to maintain, increase, reduce or stabilize the price of securities...". 
Mathematicians amongst our readers will be entertained by paragraph 162. After 
reciting the danger of employing hindsight to determine a predictive test (in 
this case, whether the publication of the Citron report was <em>likely</em> to 
reduce the price of Evergrande's shares), the judge cannot resist claiming at 
the end:</p>
<blockquote>"Nevertheless, some limited support for the Tribunal's findings can 
be found in the fact that the likely impact was born out by the actual impact"</blockquote>
<p>First of all, he means
<a href="http://grammarist.com/spelling/borne-born/" target="_blank"><em>borne</em> 
out</a>, but our point here is that the actual impact in a single test provides 
no support whatsoever for an estimate of likelihood. If you had made a single 
prediction in 2012 that Theresa May will "likely" (more than 50%) be the next 
the next UK prime minister, the outcome does not provide any support for your 
probability estimate. It might only have been a 1 in 10 chance. A prediction 
that she would <em>probably not</em> be the next prime minister might have been 
more accurate, even though she turned out to be.</p>
<p>To test the MMT's predictive power statistically you would need a large 
sample of research reports on which to make predictions and test outcomes, something that the tribunal does not have. 
The MMT did not look at a random sample of public research on stocks, decide 
which reports were "likely" to move a price and then test its predictive power 
against the outcomes in each case.</p>
<p>The SFC would (almost certainly) never have brought the case to the MMT if 
there had not been a sharp decline in the stock price after Mr Left's report was 
published, so the actual outcome would only have failed to match if the Tribunal 
had concluded that the report was <em>not </em>likely to affect the price.</p>
<p>So the MMT is tying itself in probability knots. Given that the SFC is only 
going to bring cases in which alleged false or misleading information was 
followed by a corresponding price movement, the proper and more realistic test 
is whether the publication of that information is the <em>likely cause</em> of 
the movement. We submit that this was (probably) the legislative intent of the words 
"is likely". The legislature was not concerned with hypothetical situations in 
which alleged false or misleading information was likely to, but failed to, have 
any impact.</p>

<p><em>&copy; Webb-site.com, 2016</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22184">Baker Tilly Hong Kong Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=44714">China Evergrande Group</a></li>
				
				<li><a href="/dbpub/articles.asp?p=29802">HKSAR Market Misconduct Tribunal</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2362187">Left, Andrew Edward</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=59393">Phenix, Paul Anthony</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
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
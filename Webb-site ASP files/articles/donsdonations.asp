
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

<script type="text/javascript">document.title="Don's Donations";</script>

	<div class="summary">Webb-site.com discovers a Government black-out on details of political donations, breaking its own law and making it difficult to identify individual donors who financed Donald Tsang's campaign in the recent pseudo-election. Despite this, by careful analysis we have been able to estimate who were the leading donors, several of whom used dozens of unlisted subsidiaries or obscure executives to mask the scale of their contributions. We call for campaign finance reform to cap individual donations and ban corporate sponsorship.</div>

<h2 class="center">Don's Donations<br>
<span class="headlinedate">7 May 2007</span></h2>
<p>The pseudo-election of Hong Kong's Chief Executive is over, and on the 
required deadline, the two candidates, incumbent Donald Tsang Yam Kuen, and 
legislator Alan Leong Kah Kit, have filed their returns of donations and 
expenses. The challenger never had a hope of winning, so we won't spend any time 
in this article combing over his campaign finances.</p>
<p>Under the 
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&Start=551&Count=55&Expand=551.1">Elections (Corrupt and Illegal Conduct) Ordinance</a> (<b>ECICO</b>), 
the donor of any amount over HK$1,000 (US$128) must provide his name and address 
for a
<a target="_blank" href="http://www.eac.gov.hk/pdf/chief/2007/2007ce_reoc2.pdf">
receipt</a>, otherwise the donation cannot be used for election expenses. Those 
receipts, and a summary schedule of names, addresses and amounts donated, must 
then be filed with the Government within 30 days of the election using a
<a target="_blank" href="http://www.eac.gov.hk/pdf/chief/2007/2007ce_reoc1.pdf">
standard return</a>.</p>
<p>The ECICO entitles anyone to go down to an
<a target="_blank" href="http://www.reo.gov.hk/en/ecenter/index.htm">office in Wanchai</a> and inspect 
the returns, or obtain a photocopy on payment of HK$0.50 per page. 
In the internet era, surely if these are available for inspection and copying, 
then they should be available on the web for inspection and download, but the 
Government has declined to do this, so in the interests of electoral 
transparency and convenience, <i>Webb-site.com</i> is publishing them.
<a href="../pages/electiondisclosures.asp">Click here to view the filings</a> for both 
2005 and 2007.</p>
<h3>Black-out on disclosures</h3>
<p>The purpose of these filings on donations is obviously to provide 
transparency by enabling everyone to see which people and companies are 
financing election campaigns. For that purpose to be fulfilled, it must be 
possible to identify the donors from the information. In a shocking development, 
the Government has unilaterally 
<a target="_blank" href="../codocs/DT2007donationsOver1000black.pdf">blacked-out</a> the addresses of the individuals who 
donated, leaving only their names, which are often far from unique. We checked 
with Alan Leong who confirmed that the returns he submitted complied with the 
law, that is, the addresses were not blacked out, and we assume the same is true 
of the other candidate, so this censoring was done by the Government. Mr Leong 
also confirmed that his office did not request the black-out.</p>
<p>By comparison, in 2005's uncontested election, the Government 
<a target="_blank" href="../codocs/DT2005donationsOver1000.pdf">did not 
black-out</a> donor addresses, many of which were office addresses anyway.</p>
<p>The black-out makes it much harder to identify the individual donors. For 
example, how many people in Hong Kong are called &quot;Richard Lee&quot; or &quot;Thomas Chan&quot;? 
It makes a mockery of the whole exercise. Under the law, we were entitled to a 
photocopy of the filing, not a censored, redacted copy of the filing. We think 
the Government has broken the law by doing this.</p>
<p>Now you might be thinking that the Government will claim that the Personal 
Data (Privacy) Ordinance (<b>PDPO</b>) prevents them publishing the address. It 
doesn't, because the PDPO does not override other laws, such as the ECICO. We 
were not making a &quot;data request&quot; when we obtained the copy. We were exercising a 
statutory right to require one. Also, from a practical perspective, anyone who 
gives more than $1,000 to a politician's campaign knows that their donation and 
identity will be made public and that they are supplying the data for that 
purpose. The donor implicitly consents to the disclosure, and that is part of 
the trade-off for being able to donate money to political campaigns.</p>
<p>In the USA, by comparison, the names, occupations, employers and addresses of 
all individuals who give more than US$200 to candidates in a federal election 
cycle must be published. State laws are similar. Take a look at the
<a target="_blank" href="http://www.elections.il.gov/CampaignDisclosure/">
Illinois disclosure page</a> for example.</p>
<h3>What's in a disclosure?</h3>
<p>To disclose a donor's identity means to provide enough data to be able to 
determine with certainty which person we are talking about. Of course, a 
person's name and address does not uniquely identify him (two people might have 
the same name and work in the same office, or a father and son might have the 
same name and live together), but those two items of data come far closer to 
identifying someone than just a name alone.</p>
<p>We don't care where a person sleeps at night or which building they work in, but we do need enough data to 
identify them. The simplest way to do this would in fact be to widely use HKID numbers instead, which are unique to each 
person. These numbers could be published in listed company annual reports, and 
in any other form of disclosure. ID numbers are not really secret, but many 
people behave as if they are, confusing the separate objectives of 
identification and authentication. To identify a third party is to use publicly 
known information to refer to an individual, whereas to authenticate yourself means to use a secret 
piece of information, such as a password when logging in to a banking web site. HKID numbers should not be used as passwords, nor should dates of birth, which 
are widely known, particularly for celebrities.</p>
<p>In fact, any director of a company registered in Hong Kong is required to 
disclose her HKID number (or if she doesn't have one, her passport number) and 
residential address in a public register and to file a
<a target="_blank" href="http://www.cr.gov.hk/en/forms/docs/d2a.pdf">return</a> 
of those data with the Companies Registry, where it is available for download 
(for a fee).</p>
<p>There are other examples of addresses being publicly available. The name and 
address of every candidate for any election in Hong Kong (Village, District 
Council, Legislative Council or Election Committee) has been published in the
<a target="_blank" href="http://www.gld.gov.hk/cgi-bin/gld/egazette/ChkDisclaimer.cgi?lang=e&acurrentpage=3&agree=0&showcurrent=0&Submit=I+accept">
Gazette</a>, which is freely available online (since 1-Apr-00) or in public 
libraries for older editions.</p>
<p>Your editor has himself been the subject of mistaken identity - Chinese 
newspapers have reported, without checking, that he bought and sold a house in 
Mount Kellett Road - when in fact they got the wrong &quot;David Webb&quot; - there are at 
least two in Hong Kong.</p>
<p>As for the separate matter of authentication, it's beyond the scope of this 
article, but we would say that the Government missed an opportunity with its
<a target="_blank" href="http://www.smartid.gov.hk/">Smart ID Card</a> rollout 
by failing to mandate that each ID card should carry a
<a target="_blank" href="http://www.smartid.gov.hk/en/ecert/">digital 
certificate</a> and to hand out free card-readers. Instead, the e-Cert was made free but 
voluntary, and most people failed to take it up. The e-Cert allows 
people to digitally sign documents and authenticate themselves. We've used it to 
renew vehicle licenses and file tax returns online.</p>
<h3>So who are the FoD (Friends of Donald)?</h3>
<p>Despite the Government's efforts to censor the disclosures, we have attempted 
to analyse, in the public interest, who made donations to the Chief Executive's 
election campaign, manually searching our own database of companies, listed 
company directors, annual reports, government statutory and advisory bodies and known relatives, 
as well as the web. We should warn you that what follows are our best estimates, 
but we may have missed some individual donors 
whose connection to the companies is unknown, and we may have mistaken 
identities.</p>
<p>Also, we discovered that the filing by Donald Tsang's office is defective -
<b>the summary omits 18 donations numbered 541 to 558</b> and repeats 20 others 
(601-620). He should amend the filing in order to disclose the missing 18 
donations.</p>
<div class="regbox">
	Update, 11-May-07: The Registration and Electoral Office has written to us 
	enclosing an
	<a target="_blank" href="../codocs/DT2007donationsOver1000blackp10.pdf">updated 
	page 10</a> of the disclosure which includes the missing 18 donations. It 
	blames a clerical mistake by REO's staff. We accept their explanation.
</div>
<p>Candidates in Chief Executive elections are limited by the ECICO to expenses 
of HK$9.5m, and any unspent donations must be given to &quot;charitable 
institution(s) or trust(s) of a public character chosen by the candidates&quot;. Mr 
Tsang's offering was about 2.6x oversubscribed, raising a total of $22.09m and spending $8.36m, so $13.73m went to charity.</p>
<table class="numtable center">
	<tr>
		<td class="left">Amount per donation HK$</td>
		<td>Number of donations </td>
		<td>Total $</td>
		<td>Average $</td>
	</tr>
	<tr>
		<td class="left">&lt;1,000</td>
		<td>5,529</td>
		<td>457,725</td>
		<td>83</td>
	</tr>
	<tr>
		<td class="left">1,000</td>
		<td>409</td>
		<td>409,000</td>
		<td>1,000</td>
	</tr>
	<tr>
		<td class="left">&gt;1,000</td>
		<td>778</td>
		<td>21,223,741</td>
		<td>27,280</td>
	</tr>
	<tr class="total">
		<td class="left">Total</td>
		<td>6,716</td>
		<td>22,090,466</td>
		<td>3,289</td>
	</tr>
</table>
<p>Notable among the 409 donations of $1,000 each were 30 people who appended 
their names with &quot;of Hang Fung Gold Technology Group&quot; - famed for its gold shops catering 
to mainland tourists. Although there appear to be 778 donations over $1,000, the 
number of real donors is far smaller, because many of them represent the same 
companies through subsidiaries.</p>
<h4>The decency limit</h4>
<p>In a <a target="_blank" href="../codocs/DTwhipround2007.pdf">begging letter</a> dated 
1-Feb-07 obtained by <i>Webb-site.com</i>, Mr Tsang's campaign office, run by 
David Li Kwok Po and Adolf H Hsu, wrote:</p>
<blockquote>
	<p>&quot;While it is for individual donors to decide on an appropriate amount for 
	their donations, we would prefer that any single donation not exceed 
	HK$50,000&quot;.</p>
</blockquote>
<p>This is down from the <a target="_blank" href="../codocs/DTwhipround2005.pdf">request in 2005</a> 
which suggested a decency limit of $100,000. Probably something to do with the 
obscene and indecent articles ordinance.</p>
<p>As we will show, the tycoons were largely undeterred by this attempt to make 
the whole thing more modest. While the never-so-subtle Cecil Chao Sze Tsung of
<a target="_blank" href="http://www.cheuknang.com/">Cheuk Nang (Holdings) Ltd</a> 
just hit the ball out of the park with a cheque for $300,000, tripling his 
donation of 2005, and Liu Yong Ling, 
probably of <a target="_blank" href="http://www.elitecorp.com">Elite Industrial 
Holdings Ltd</a>, gave $100,000, everyone else broke up their subscriptions up into 
quanta of $50,000. Still, as any physicist will tell you, if enough quanta come 
along in a row, the resulting pattern starts to look like a wave. The mass 
media, under pressure to analyse the opaque and fragmented donations before 
press deadlines on 24-Apr, did not report what we are about to tell you. </p>
<h4>New World order</h4>
<p><i>Webb-site.com</i> has discovered that the biggest donor this year was 
Cheng Yu Tung's New World group of companies. 19 wholly-owned subsidiaries of
<a target="_blank" href="../dbpub/articles.asp?p=432">New World Development Co Ltd</a> (0017), most 
of them owning property, each gave $50,000, as did 64%-owned New World Hotels 
(Holdings) Ltd, of which the other 36% is held by unlisted Chow Tai Fook 
Enterprises Ltd (<b>CTF</b>), which is controlled by Mr Cheng. A listed NWD 
subsidiary, <a target="_blank" href="../dbpub/articles.asp?p=4937">NWS Holdings Ltd</a> (<b>NWSH</b>, 
0659) gave $350k through 7 wholly-owned subsidiaries, while NWS Transport 
Services Ltd, jointly owned by CTF and NWSH, gave $100k through 2 companies it owns which have the franchised bus monopoly on Hong Kong Island. 
Meanwhile Taifook Securities Group Ltd, 45% controlled by Mr Cheng, gave $50k, as 
did New World PCS Ltd, the phone business which is now an associate of
<a target="_blank" href="../dbpub/articles.asp?p=7089">New World Mobile Holdings Ltd</a> (0862).</p>
<p>Overall then, we estimate that 30 New World-related companies each gave $50k 
for a total of <b>$1.5m</b>. In each case, a different individual was named 
alongside the subsidiary, but it seems unlikely that they each financed the 
donations.</p>
<p>Incidentally, Donald Tsang's brother and former Police Commissioner Tsang Yam 
Pui is an Executive Director of NWSH. He gave $10k, but we'll count that as 
brotherly love.</p>
<h4>Henderson</h4>
<p>Lee Shau Kee, the tycoon controller of the Henderson group, took a different 
strategy. We did not find any Henderson-related company in the list, but we did 
find the names of Mr Lee and his sons and daughters (in Chinese text), each 
giving $50k. In the election return, all donations are listed in order of 
sequential receipt numbers, which are presumably roughly chronological. The 
interesting thing about the Lee family is that each member's receipt number was 
sandwiched between the donations of two New World subsidiaries. Either the donations of the two groups were somehow co-ordinated, or someone in Donald Tsang's accounting team has a wicked sense of humour.</p>
<p>We also found the names of several executive directors of
<a target="_blank" href="../dbpub/articles.asp?p=412">Henderson Land Development Ltd</a> (0012),
<a target="_blank" href="../dbpub/articles.asp?p=413">Henderson Investment Ltd</a> (0097) and
<a target="_blank" href="../dbpub/articles.asp?p=416">The Hong Kong and China Gas Co Ltd</a> 
(0003), and the brother of one such director.</p>
<p>Overall, we estimate that Henderson-related people gave 16 donations of $50k 
each for a total of <b>$800k</b>.</p>
<h4>Cheung Kong/Hutchison</h4>
<p>We found the names of Li Ka Shing, his son Victor Li Tzar Kuoi, and&nbsp; 8 
senior staff at <a target="_blank" href="../dbpub/articles.asp?p=488">Cheung Kong (Holdings) Ltd</a> 
(0001), each giving $50k. These names were not limited to directors but reached 
down to the company secretary, the corporate spokesperson and an obscure admin 
manager who once made a bid in a land auction. Meanwhile at 49.9% associated 
company <a target="_blank" href="../dbpub/articles.asp?p=366">Hutchison Whampoa Ltd</a> (0013), we 
found the names of 4 more directors, a notary, a company secretary and a deputy 
CFO. There were two names from subsidiary
<a target="_blank" href="http://www.htil.com">Hutchison Telecommunications 
International Ltd</a> (2332), and two from <a target="_blank" href="../dbpub/articles.asp?p=1806">
Hutchison Harbour Ring Ltd</a> (0715). Overall then, we found 21 donations of 
$50k each from names affiliated to the Cheung Kong and Hutchison group, for a 
total of <b>$1.05m</b>. By comparison, in 2005 we found donations totalling 
$900k.</p>
<h4>Sino Land</h4>
<p>We found a &quot;Robert Ng&quot;, probably of <a target="_blank" href="../dbpub/articles.asp?p=664">Sino 
Land Co Ltd</a> (0083), along with the names of his wife, son and daughter, 3 
executive directors and an associate director of sales, for a total of 8 
donations of $50k each. We also found the names of 3 former executive directors 
of sister company Sino Hotels (Holdings) Ltd (1221) and the General Manager of 
one of its hotels, each giving $50k. Overall then, we estimate that people 
related to Sino group made 12 donations of $50k each for a total of <b>$600k</b>. 
This is double the figure for 2005, when we found 3 names giving $100k each for 
a total of $300k.</p>
<p>Incidentally, David Li's son Adrian sits as an INED on the board of 3 
companies in the Sino group, alongside Executive Councillor Ronald Arculli, 
although he has been reclassified as an NED because his law firm provides 
services to the group. </p>
<h4>Yangtzekiang Garment / YGM Trading</h4>
<p>We found the names of 10 members of the Chan clan which controls
<a target="_blank" href="../dbpub/articles.asp?p=2997">Yangtzekiang Garment Ltd</a> (0294) and
<a target="_blank" href="../dbpub/articles.asp?p=2998">YGM Trading Ltd</a> (0375), along with one 
executive director, making 11 donations totalling <b>$550k</b>. Chan Wing Kee, 
Chairman of Yangtzekiang Garment Ltd, is a Standing Committee member of the 
CPPCC.</p>
<h4>Lai Sun</h4>
<p>We found names connected to <a target="_blank" href="../dbpub/articles.asp?p=1488">Lai Sun 
Development Co Ltd</a> (0488) including that of Chairman Peter Lam Kin Ngok, the 
CEO, two executive directors, the qualified accountant and a former financial 
controller, for a total of 6 donations of $50k each. We also found the name of 
Peter's son Lester, who is CEO of affiliate <a target="_blank" href="../dbpub/articles.asp?p=4895">
Lai Fung Holdings Ltd</a> (1125), and the name of its qualified accountant. 
Overall, we estimate Lai Sun-related people made 8 donations totalling <b>$400k</b>.</p>
<h4>CITIC</h4>
<p>CITIC group adopted a two-pronged strategy, with individual and corporate 
donations. <a target="_blank" href="../dbpub/articles.asp?p=379">CITIC Pacific Ltd</a> (<b>CP</b>, 
0267) Chairman Larry Yung Chi Kin and MD Henry Fan Hung Ling each gave $50k. Mr 
Fan is a member of Donald Tsang's Executive Council. PRC Government-owned 
shareholder CITIC Hong Kong (Holdings) Ltd also chipped in $50k. CITIC Pacific 
itself gave $50k, as did newly-listed subsidiary
<a target="_blank" href="http://www.citic1616.com">CITIC 1616 Holdings Ltd</a> 
(1883). Digging deep, 70.8% subsidiary
<a target="_blank" href="http://www.easternharbourtunnel.com.hk">New Hong Kong 
Tunnel Co Ltd</a>, which runs the Eastern Harbour Crossing, gave $50k. 
Wholly-owned CP subsidiaries <a target="_blank" href="http://www.cpcnet.com">
CPCNet</a> and Dah Chong Hong each gave $50k, and 10 other wholly-owned 
subsidiaries, many of them vehicle distributors, each gave $10k.</p>
<p>Overall, we estimate that the CITIC-related donation was <b>$500k</b>, of 
which $350k was from CP and 14 of its subsidiaries, and the rest from its 
substantial shareholders and directors. In 2005, CP (including Dah Chong Hong) 
gave $200k while Mr Yung gave $100k, for a total of $300k.</p>
<h4>Asia Financial/Bangkok Bank</h4>
<p>Another of Donald Tsang's Executive Councillors is Bernard Chan Chi Sze, also 
known by his Thai name of Charnwut Sophonpanich, grandson of the late founder of 
Bangkok Bank. Bernard is President of family-controlled
<a target="_blank" href="../dbpub/articles.asp?p=1124">Asia Financial Holdings Ltd</a> (<b>AFH</b>, 
0662), where his father, Robin Chan Yau Hing, is Chairman. We found the father's 
name and another son, Stephen Tan, each giving $50k, while AFH and its 
wholly-owned subsidiary, Asia Insurance Co Ltd, each gave $50k. We also found 5 
companies related to the Sophonpanich family, including Bangkok Bank (which is 
Chaired by Bernard's uncle), each giving $50k. Overall then, we estimate that 
companies and individuals related to Mr Chan gave <b>$450k</b>.</p>
<h4>Shun Tak</h4>
<p>We found the name of casino tycoon Stanley Ho Hung Sun, two of his daughters 
and 3 others, all of whom are executive directors of Shun Tak Holdings Ltd 
(0242) each giving $50k for a total of <b>$300k</b>. This was a sharp reduction 
to 2005, when 9 names each gave $100k for a total of $900k.</p>
<h4>Dickson Concepts</h4>
<p>The donation list includes the names of Chairman Dickson Poon, his wife, 3 
executive directors and the company secretary all of
<a target="_blank" href="../dbpub/articles.asp?p=4820">Dickson Concepts (International) Ltd</a> 
(0113), each giving $50k for a total of <b>$300k</b>. In 2005, Mr &amp; Mrs Poon 
gave $200k. One of our sweetest memories from the dotcom bubble of 2000 was 
gullible Hong Kong leader Tung Chee Hwa opening the
<a target="_blank" href="http://www.info.gov.hk/gia/general/200009/16/0916146.htm">
Dickson CyberExpress</a> clothes shop at MTR Kowloon Station, which later became 
a warehouse outlet for clothes they couldn't sell elsewhere. The company even 
hoped at one stage to
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000706/LTN20000706020.doc">
spin this thing off</a> onto the GEM as Dickson Cyber Concepts Ltd - thankfully 
that's one IPO which did not see the light of day.</p>
<h4>Chinese Estates/Lifestyle</h4>
<p>Over at <a target="_blank" href="../dbpub/articles.asp?p=1579">Chinese Estates Holdings Ltd</a> 
(0127) we find the names of former Chairman Thomas Lau Luen Hung, who recently 
had to
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061218/LTN20061218073.pdf">
resign</a> on the order of the Insider Dealing Tribunal, giving $50k, as did the 
names of his brother, sister, mother and nephew, for a family total of $250k. 
Retailer <a target="_blank" href="../dbpub/articles.asp?p=20816">Lifestyle International Holdings Ltd</a> 
(<b>Lifestyle</b>, 1212), through its 100% subsidiary Sogo Hong Kong Co Ltd, 
gave $50k, raising the total for this group to <b>$300k</b>. Lifestyle is 
majority owned by Real Reward Ltd, which is half-owned by the Lau brothers and 
half by Cheng Yu Tung's CTF, but we'll count it with the Lau-related donations.</p>
<h4>Kerry</h4>
<p>The names of 6 members of the Kuok family which controls
<a target="_blank" href="../dbpub/articles.asp?p=809">Kerry Properties Ltd</a> (0683), Shangri-la 
Asia Ltd (0069) and <a target="_blank" href="../dbpub/articles.asp?p=641">SCMP Group Ltd</a> 
(0583), each gave $50k for a total of <b>$300k</b>.</p>
<h4>BEA</h4>
<p>Another of Donald Tsang's Executive Councillors is David Li Kwok Po, Chairman 
of <a target="_blank" href="../dbpub/articles.asp?p=377">The Bank of East Asia, Ltd</a> (0023). Mr 
Li, his wife and two sons each gave $50k. Meanwhile, the bank gave $50k and two 
wholly-owned subsidiaries, Credit Gain Finance Co Ltd and Blue Cross (Asia 
Pacific) Insurance Ltd, each gave $10k, as did 75.6% subsidiary
<a target="_blank" href="http://www.tricor.com.hk">Tricor Services Ltd</a>, one 
half of the share registrar duopoly in Hong Kong. The other 24.4% of Tricor is 
owned by NWSH. Overall then, we estimate the BEA group gave $80k while Mr Li and his family gave $200k 
for a BEA total of <b>$280k</b>.</p>
<h4>K. Wah</h4>
<p>Construction-cum-casino tycoon Lui Che Woo's name was on the list, along with 
his wife, son and two daughters, each giving $50k for a total of <b>$250k</b>, up from 
$200k in 2005.</p>
<h4>Wheelock ducks out</h4>
<p>One notable absence from this year's subscription list was the Wheelock and 
Wharf group chaired by Peter Woo Kwong Ching, who is married to one of the four 
daughters of late shipping tycoon Pao Yue Kong. In 2005, Mr Woo, his wife, his 
daughter and 6 company executives each gave $100k, for a total of $900k, 
matching the donations of names linked to Cheung Kong/Hutchison and of the Shun 
Tak people. It appears that the Woos decided to sit this one out, so we'll mark 
him out of the FoD club.</p>
<p>However, we did find the names of another Pao daughter, Cissy Pao Watari Pui 
Lai, and her husband Shinichiro Watari, chipping in a combined $50k.</p>
<h4>Other Exco members</h4>
<p>We've mentioned the efforts of unofficial Executive Councillors Henry Fan (CITIC group), 
David Li (BEA) and Bernard Chan (Asia Financial/Bangkok Bank). What about the
<a target="_blank" href="http://www.ceo.gov.hk/exco/eng/members.htm">others</a>? 
We found personal donations from Laura Cha Shih May Lun and Charles Lee Yeh 
Kwong of $50k each. Mr Lee's fellow co-founder of law firm Woo, Kwan, Lee &amp; Lo, 
Woo Po Shing, also gave $50k. Meanwhile
<a target="_blank" href="http://www.goldpeak.com">Gold Peak Industries 
(Holdings) Ltd</a> (0040) controlled by perhaps the least visible Executive 
Councillor Victor Lo Chung Wing, gave a modest $30k.</p>
<p>Liberal Party members were pretty absent from this subscription, not 
surprisingly given their umbrage at the GST proposal, the proposed law against 
anti-competitive practices, and empty talk from Chairman 
James Tien Pei Chun about 
<a target="_blank" href="http://thestandard.com.hk/news_detail.asp?we_cat=4&art_id=37177&sid=11960256&con_type=1&d_str=20070130">possibly casting blank votes</a> in the election. No sign 
of him or ExCo member Selina Chow Liang Shuk Yee on the list, but we did find his brother 
Michael Tien Puk Sun, who chairs the KCRC and his private garment firm G2000, 
personally giving $50k, which saves the good family name. Textiles tycoon 
Vincent Fang Kang gave a mildly insulting $3,800 - was he trying to make a 
point? We also found nothing from everyone's favourite valuer and Exco convener 
Leung Chun Ying.</p>
<h4>Anonymous donors</h4>
<p>Due to the Government black-out, we are unable to reach a view on who the 
following people are, each of whom gave $50k with only incomplete names (no 
Chinese name) or names which belong to more than one well-known person in our 
database. In no particular order: Albert Yeung, Richard Lee, Jeanne Ng, James 
Lai, Eleanor Wong, George Wu, Albert Ho, Michelle Ong, Thomas Chan, Yeung Kwok 
Keung and Ginny Man. There are others in the list but we gave up at this point.</p>
<h4>Round-up</h4>
<p>There were numerous other donations, mostly of $50k each, from listed 
companies or their controlling shareholders. For example, the Wu family of 
Hopewell gave $150k in total, and &quot;The Swire Group&quot; (which obfuscates the 
identity of its corporate donors - it could be Swire Pacific Ltd or perhaps the 
private arm) gave $100k in two donations. The Kwok brothers of Sun Hung Kai 
Properties Ltd each gave $50k. But you get the big picture from 
the list above, and you weren't really scoring unless you gave at least $250k. Here's a round-up, with a reminder that these are our best 
estimates:</p>
<table class="txtable center">
	<tr>
		<td><i>Rank</i></td>
		<td><i>Persons related to</i></td>
		<td class="right"><i>Donations HK$000</i></td>
	</tr>
	<tr>
		<td>1</td>
		<td>New World</td>
		<td class="right">1,500</td>
	</tr>
	<tr>
		<td>2</td>
		<td>Cheung Kong / Hutchison</td>
		<td class="right">1,050</td>
	</tr>
	<tr>
		<td>3</td>
		<td>Henderson</td>
		<td class="right">800</td>
	</tr>
	<tr>
		<td>4</td>
		<td>Sino group</td>
		<td class="right">600</td>
	</tr>
	<tr>
		<td>5</td>
		<td>Yangtzekiang / YGM</td>
		<td class="right">550</td>
	</tr>
	<tr>
		<td>6</td>
		<td>CITIC</td>
		<td class="right">500</td>
	</tr>
	<tr>
		<td>7</td>
		<td>Asia Financial / Bangkok Bank</td>
		<td class="right">450</td>
	</tr>
	<tr>
		<td>8</td>
		<td>Lai Sun</td>
		<td class="right">400</td>
	</tr>
	<tr>
		<td>9=</td>
		<td>Cheuk Nang</td>
		<td class="right">300</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>Chinese Estates</td>
		<td class="right">300</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>Dickson Concepts</td>
		<td class="right">300</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>Kerry</td>
		<td class="right">300</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>Shun Tak</td>
		<td class="right">300</td>
	</tr>
	<tr>
		<td>14</td>
		<td>BEA</td>
		<td class="right">280</td>
	</tr>
	<tr>
		<td>15</td>
		<td>K. Wah</td>
		<td class="right">250</td>
	</tr>
	<tr class="total">
		<td>&nbsp;</td>
		<td>Total of these donors</td>
		<td class="right">7,880</td>
	</tr>
</table>
	<p>As you can see, these top-15 groups on their own could have 
	almost covered Mr Tsang's election expenses of $8.4m, and as noted above, we 
	may have missed some members in each group.</p>
<h3>Corporate donations</h3>
<p>In many countries, corporate donations to politicians are either frowned upon 
or illegal. That's not the case in Hong Kong, but it does beg the following 
question. Directors of any company have a fiduciary duty to protect and maximise 
shareholder value. If they spend corporate funds, whether on politicians or 
anything else, then they can only do so if they reasonably expect the company to 
benefit in return. So for all those listed companies who made donations, <b>
either the directors expect the company to benefit from the donation, or they are 
breaching their fiduciary duties to shareholders. Which is it? </b>Clearly, from 
a shareholder point of view, one would hope that they expect to benefit in 
return, but from a public citizen's point of view, this is exactly why we should 
pass legislation banning corporate political donations.</p>
<p>It wouldn't be enough to stop there though. If companies are banned from 
making donations, then their controlling shareholders, for whom the amounts 
involved are often just a day's dividends, would continue to finance politicians. As 
we have shown above, in many cases, no corporate names were used, but it is 
extremely unlikely that so many individuals at each firm each decided to give 
exactly the same amount and did not, or will not, receive any reimbursement from 
either the company or its controlling shareholders. It would be impossible to prove any 
connection if the money is just embedded in this year's pay packet.</p>
<p>This is why some countries, such as the USA, have
<a target="_blank" href="http://www.fec.gov/pages/brochures/contriblimits.shtml">
limited donations</a> by any person to a sensible amount. In the case of the USA 
it is US$2,300 per candidate or committee, per election. This, plus the required 
disclosure of donors' employers, forces any companies which are going to donate 
via an army of employees to face the transparency of disclosure.</p>
<p>Somewhere along the twisted and tortuous path to democracy, Hong Kong must 
address campaign finance reform, or continue being hostage to corporate funding 
and special interest groups, as politicians in so many countries are. We should 
cap individual donations at modest amounts, ban corporate donations, and provide 
Government campaign funding for any candidate that has passed the nomination 
threshold, to facilitate candidates' campaigning on an equal footing. It is in 
the public interest that the public should be offered meaningful choice.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2191">Tsang, Donald Yam Kuen</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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
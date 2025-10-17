
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

<script type="text/javascript">document.title="The Reason for Resistance";</script>

	<div class="summary">We take a detailed look at the ongoing battle over the regulation of listed companies in Hong Kong, now in its third round of consultations after the PIPSI report and the Expert Group report, and take a look at the HKEx Chief Executive's recent statements on the subject, which has yet to be discussed by the board to which he reports, including Webb-site.com editor David Webb.</div>

<h2 class="center">The Reason for Resistance<br>
<span class="headlinedate">30 October 2003</span></h2>
<p>On 3-Oct-03, the Government published a 
<a target="_blank" title="Don't bother trying to search the paper - some wizard at the FSTB had the bright idea of printing it out and scanning it back into a computer so it is just a bitmap" href="http://www.info.gov.hk/fstb/fsb/consult/doc/erl-e.pdf">
Consultation Paper on Proposals to Enhance the Regulation of Listing</a> (<b>PERL</b>), 
which might have been better titled as the 
&quot;Non-experts consultation on the Expert Group report&quot;. This followed the 
publication on 21-Mar-03 of the 
<a target="_blank" href="http://www.info.gov.hk/info/expert/expertreport-e.htm">Expert Group Report</a>, which was initially
<a target="_blank" href="http://www.info.gov.hk/gia/general/200303/21/0321286.htm">
endorsed</a> by the Financial Secretary, recommending that the regulatory 
functions of HKEx over listed companies be transplanted to the SFC and renamed 
the &quot;Hong Kong Listing Authority&quot;. The report was also initially accepted by the 
then board of directors of Hong Kong Exchanges and Clearing Limited (<b>HKEx</b>, 0388), who in an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030324/LTN20030324018.doc">announcement</a> dated that day said:</p>

<blockquote>

<p>&quot;In light of the Government's intention to adopt the Expert Group's 
recommendations, HKEx will work closely with the Government and the SFC on their 
implementation&quot;</p>

</blockquote>

<p>However, it was only a few nano-seconds later that HKEx Chairman Charles Lee Yeh-kwong (<b>Mr Lee</b>)  launched a political and media 
blitz against the report, and three weeks later on 10-Apr-03 succeeded in 
forcing short-dated Financial Secretary Antony &quot;Lexus&quot; Leung Kam-chung to slam 
his foot on the brakes,
<a target="_blank" href="http://www.info.gov.hk/gia/general/200304/10/0410218.htm">
announcing</a> that</p>

<blockquote>

<p>&quot;the general direction recommended by the Expert Group...is 
appropriate and will enhance the quality of our market... In view of the 
far-reaching implications and to ensure effective implementation, the Government 
will do more research and will consult the community further.&quot;</p>

</blockquote>

<p>So it is only because of the earlier objections from the HKEx and their 
friends in high places that we are now going through a second round of 
consultation. For a more detailed recap of how this came about, see the lucid
<a target="_blank" href="http://www.legco.gov.hk/yr02-03/english/panels/fa/papers/fa0613cb1-1861-1e.pdf">
submission</a> of 1-Jun-03 made by Peter Clarke, one of the three wise men of 
the Expert Group, to the Legislative Council.</p>

<h3>Multiple Choice</h3>

<p>Unfortunately, the new PERL paper devotes zero space to the <i>&quot;effective 
implementation&quot;</i> of the Expert Group recommendations. You will not find a 
single reference to the &quot;Hong Kong Listing Authority&quot; or the &quot;Listing Panel&quot; 
which were proposed in the Expert Group report. Instead, the Government has 
taken a giant leap backwards and acted rather like an examiner trying to 
contrive a 4-way multiple-choice question, when he knows that only one answer is 
correct and has to throw in three &quot;trick&quot; answers to confuse you. So the PERL 
paper asks readers to choose between options &quot;A, B, C or D&quot; - with &quot;A&quot; being the 
correct answer previously reached by the Expert Group, but this time faintly 
disguised as &quot;Transferring listing functions to a new division set up under 
SFC&quot;. So here's your multiple-choice question. Should we:</p>

<blockquote>

<p><b>(A) Transfer listing functions to a new division set up 
under the SFC</b></p>

<p>(B) Transfer listing functions to a new HKEx subsidiary</p>

<p>(C) Transfer listing functions to a new statutory authority</p>

<p>(D) Expand the &quot;dual filing&quot; system</p>

</blockquote>

<p>As any schoolchild knows, if you don't know the right answer, then the easy 
way to answer multi-choice questions is by elimination. So here we go:</p>

<p>Option (B) is best described as &quot;do nothing&quot; - it is just a perpetuation of 
the existing system - HKEx already has a subsidiary, called The Stock Exchange 
of Hong Kong Limited, which administers the Listing Rules and puts proposals for 
rule changes and disciplinary hearings to the Listing Committee. Re-arranging 
deck chairs on the Titanic will not save the ship. However many committees and 
boards you create, there would be no escape from the fact that the subsidiary 
would remain part of a for-profit group and make its own rules, subject only to 
approval (but not direction) by the SFC.</p>

<p>Option (C) is best described as &quot;set up a second SFC&quot; or &quot;set up a 4th tier&quot;. 
It is so obviously stupid that not even the HKEx management seems to support it, 
so we won't discuss it further. It was probably just thrown in by the examiner 
who thought that 3 choices was not enough.</p>

<p>Option (D) is an exercise in duplication and confusion, rather like setting 
having two air-traffic control bodies simultaneously running the same air space. 
When a plane goes down, each will point at the other and nobody will take 
responsibility. That's what you get with dual vetting and dual filing, and it's 
only a matter of time before we have major casualties. And option (D) implicitly 
includes keeping the listing function at HKEx, whether in the current subsidiary 
or a new one, it really makes no difference. Since (D) implies (B), and (B) is 
wrong, we know that (D) must be wrong.</p>

<p>And that leaves you with option (A).</p>

<h3>Our position</h3>

<p>Since Mar-99, when then Financial Secretary Donald Tsang announced the 
demutualization of the Stock Exchange and the
<a target="_blank" href="/dbpub/subject.asp?c=137">creation</a> of HKEx, <i>Webb-site.com</i> 
has advocated reform by removing the regulatory functions from HKEx, and we took 
the same position in our <a target="_blank" href="../codocs/SubmssionEGpublic.pdf">
submission</a> to the Expert Group on 25-Nov-02. Back on 3-Mar-99, we wrote:</p>

<blockquote>

<p>&quot;If the government proceeds with the 
[HKEx] flotation plan then the regulation of listed companies should be removed 
from the Exchange to the SFC, which will then operate along the lines of the US 
SEC. The SFC would regulate the merged exchange as well as the listed companies, 
and the listing division of the former SEHK would be transplanted to the SFC. 
This would at least remove the potential for disputes between the Exchange and 
the SFC over listing rules, that has existed until now. In addition, it would 
remove the risk that the Exchange would approve the listing of unsuitable 
companies simply to increase its own revenue.&quot;</p>

</blockquote>

<p>OK, so we were a few years early, but at least we're consistent. And despite 
(or because of) this position, your editor David Webb was elected to the Board 
of HKEx by shareholders of the company at the first post-listing opportunity on 
15-Apr-03. Clearly the shareholders recognise that the long-term success of HKEx 
depends on fostering a high quality market with a modern regulatory structure, 
in which investors can trust and trustworthy issuers can access affordable 
capital, not a race to the bottom by the waiving of listing rules or track 
record requirements or the molly-coddling of issuers who would rather not face a 
1-share-1-vote democracy, quarterly reporting and disclosure of directors' pay.</p>

<h3>HKEx's opinion?</h3>

<p>Now since your editor joined HKEx board, the issue of Listing reform has 
remained in the background, and we are not giving away any secrets to tell you 
that the new board has yet to directly discuss it. Indeed, Chief Executive Paul 
Chow (<b>Mr Chow</b>) told <i>The Standard </i>on 9-Oct-03 that:</p>

<blockquote>

<p>&quot;the exchange...would respond by the end of the year after hearing directors' 
opinions at a board meeting in November&quot;.</p>

</blockquote>

<p>Let's go back to Corporate Governance 101 here. A Chief Executive runs a 
business, and reports to the board. The board of directors directs the company. 
So if the board has yet to discuss this matter, then why is the Chief Executive 
running around giving interviews and writing letters to newspapers on this 
subject, expressing views of HKEx when these views have not been approved by the 
board? It puts unfair pressure on the board, at its meeting in November, to &quot;tow the line&quot; and 
agree with the public statements of the Chief Executive in order for him, and by 
association HKEx, not to lose face. If he is to express an opinion, then he 
should make it clear that this is his personal view and not necessarily the 
opinion of the board of HKEx.</p>

<p>To be sure, the previous pre-April board did approve a string of submissions 
to the Expert Group and a subsequent announcement agreeing to co-operate with 
implementation of the recommendations, and it did then approve a letter opposing 
those recommendations, but that is history. Of the 6 incumbent directors 
proposed for re-election by shareholders, 3 of them were rejected at the AGM, 
and one of those seats went to your editor, while another went to a fund 
manager. While your editor is always open to reasoned debate, given the change 
in board composition since April, it seems unlikely 
that the board will reach any unanimity on this subject when they eventually 
discuss it.</p>

<h3>Letter to SCMP</h3>

<p>In response to an <i>SCMP </i>editorial on 6-Oct-03 headed <i>&quot;Time is right 
for HKEx to end its conflict of interest&quot;</i>, Mr Chow wrote (or at least, 
signed) a critical letter on behalf of HKEx, which the newspaper published on 
24-Oct-03. Ironically, part of this held out the Board of Directors as <i>
&quot;representative of all stakeholders in the market&quot;</i> with the implication that 
we have discussed this, which we have not.</p>

<p>As regards representation, let's deal with that first.  The board can hardly be said to be &quot;representative&quot; when only 6 out of 13 
directors can be elected by shareholders and 11 out of 13 come from non-investor 
constituencies. Your editor is a 
private investor and one of only two investor-based members of the Board, both of 
whom were elected by HKEx shareholders in April. Investors might have been 
willing to elect more of their own kind, but there were only 6 seats available, 
and the board sought to preserve its 
own imbalance by endorsing the candidacy for re-election of all 6 brokers who were elected 
before the listing of HKEx in 2000.</p>

<p>Of the 6 Government appointees, we have a Chairman who is a consultant to, 
and co-founded, one of the largest local corporate law firms in Hong Kong, Woo 
Kwan Lee and Lo, which has a long string of blue-chip clients. Mr Lee was once a 
director of&nbsp; numerous listed companies including Cheung Kong (Holdings) 
Ltd, Hutchison Whampoa Ltd (where he was an Executive Director from 1979 to 
1997), Cheung Kong Infrastructure Holdings Ltd and Hong Kong Electric Holdings 
Ltd, all of which are listed companies controlled by Mr Li Ka-shing. Mr Lee was 
also a non-executive director of Henderson Land Development Co Ltd from 1981 and 
Sun Hun Kai Properties Ltd from 1975. He only stood down from these 
directorships in 1997 in order to join Hong Kong Chief Executive Tung Chee-hwa's 
first Executive Council. He also served on the board of numerous smaller listed 
companies, such as the ill-fated Peregrine Investment Holdings Ltd and the 
always-entertaining Playmates Holdings Ltd.</p>

<p>Another government-appointed director is Mr Lo Ka-shui, the Managing Director 
of listed property firm and landlord to HKEx, Great Eagle Holdings Ltd. Another was Mr Liu 
Jinbao, the 
Chief Executive of listed BOC Hong Kong (Holdings) Ltd until he suddenly 
departed northwards to help authorities with their inquiries and later sent a 
back-dated resignation to HKEx. Bank of China, through another arm, is active in 
investment banking and of course lending to listed companies. Another, Mr Leong 
Ka Chai, runs a brokerage called Roctec Securities. Another, Tim Freshwater, is 
Chairman-Corporate Finance (Asia) of Goldman Sachs, which has investment banking 
business with large listed and to-be-listed companies and the government, and 
also gets consulting work from HKEx, and last but not least is Mr Fong Hup, the 
Senior Advisor of Deloitte Touche Tohmatsu, which of course audits numerous 
listed companies.</p>

<p>Let's be clear, we are not accusing any of our fellow directors of 
wrong-doing or impropriety. We are simply telling you which side their bread is 
buttered on. It is not the investor side and you cannot expect them to come out 
swinging against the vested interests of a small but powerful group of 
individuals who also happen to hold voting power over the Chief Executive of 
Hong Kong, and at the same time hope to win or retain business from them.</p>

<h3>Market Savvy</h3>

<p>One of the main themes of Mr Chow's letter to the SCMP was the old claim that 
HKEx has an <i>&quot;understanding of the way markets work&quot;</i> which by his 
implication is lacking in the SFC. Excuse us for asking, but if HKEx understands 
the market so well, then how does it account for its botched &quot;Penny Stock&quot; 
proposals of July 2002 which crashed the micro-cap market and (thankfully) has 
resulted in the <a target="_blank" href="listpenny.asp">Panel of Inquiry into 
the Penny Stocks Incident</a> (PIPSI) and then the Expert Group report? Mr Chow 
also ignores the fact that the SFC's Corporate Finance Division is already a 
front-line regulator, administering the Takeover Code to listed companies. Hong 
Kong already has two front-line regulators, not one.</p>

<p>But let's give HKEx the benefit of the doubt, and assume that there is an 
element of &quot;market savvy&quot; in the SEHK in dealing with the Listing Rules. Then 
the Expert Group proposal to transplant all those staff to the new Listing 
Authority under the SFC would mean that the expertise gets transferred too - so 
that is not a valid reason for opposing the transfer.</p>

<p>And if Mr Chow is referring to the &quot;market savvy&quot; of the Listing Committee, 
then he can rest assured that the Expert Group's proposed Listing Panel, which 
would advise the SFC's Listing Authority, would also be made up of market 
practitioners, although hopefully it would include more investor representatives 
than the maximum 4 out of 25 on the current Listing Committee. Indeed, the SFC 
has already put in place the genesis of this panel, currently known as the
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=03PR120">
Dual Filing Advisory Group</a> (<b>DFAG</b>), which advises the SFC on cases 
under the dual filing regime, where the SFC can veto listing applications. Six 
out of the nine members of DFAG are also members of the
<a target="_blank" href="http://www.hkex.com.hk/exchange/orglist/comsubsid.htm">
Listing Committee</a>, so if there is market savvy in the Listing Committee, 
then this must also exist in DFAG and there's no reason to believe such 
expertise would not continue with its intended successor, the Listing Panel of 
the SFC's Listing Authority.</p>

<p>Not only would the HKEx's Listing Division get transplanted to the SFC, but 
the door would open to harmonise the Listing Rules with the Takeover Code and 
give them both statutory backing. The Listing Division would be merged with the 
SFC's Corporate Finance Division, and harmonisation would remove the regulatory 
arbitrage of the type see in the <a target="_blank" href="../dbpub/articles.asp?p=4778">Boto</a> 
case in 2002.</p>

<p>In most respects, the Takeover Code takes a tougher approach than the Listing 
Rules and is more &quot;pro investor&quot;. For example, under the Takeover Code, all 
voting takes place on a poll (1-share-1-vote), whereas under the Listing Rules, 
voting normally takes place on a show of hands (1-person-1-vote), 
disenfranchising investors who cannot attend the meeting.</p>

<h3>Checks and balances</h3>

<p>Another recurrent theme of Mr Chow and Chairman Lee is that the existing &quot;3-tier&quot; 
system contains checks and balances which would be destroyed by a transfer of 
regulatory power to the SFC.</p>

<p>This argument carries the unproven implication that like lasagne, the more 
layers you have, the better. But the reality is different, particularly when the 
oversight is structurally blocked. For example, the Listing Committee has 25 
members, including the Chief Executive of HKEx. Of the other 24, a maximum of 4 
can be fund managers. Meanwhile, listed&nbsp; companies get 6 seats, exchange 
participants (investment banks and brokers) get 6 seats, and advisers who earn a 
living from listed companies (accountants, lawyers and investment bankers) make 
up most of the rest. It would be better to think of it as the Issuer's Committee 
with a few guests, and in effect this is a self-regulatory entity, for the 
regulation <i>of </i>issuers <i>by</i> issuers and their advisers.</p>

<p>Another structural block: the composition of the Listing Committee is itself 
set out in the Listing Rules, and therefore it cannot be changed without the 
approval of the Listing Committee.</p>

<p>There has been some effort by HKEx, under the heat of the PIPSI and Expert 
Group spotlights, to toughen up regulation and appoint some fresh blood to the 
Listing Committee, but this &quot;on its best&nbsp; behaviour&quot;' mode does not solve 
the fundamental conflicts, and it must be remembered that the Thursday-afternoon 
Listing Committee can only consider what is placed before it by the HKEx 
full-time staff. </p>

<p>In his letter, Mr Chow speaks of a <i>&quot;separation of powers between the HKEx 
board and the listing committee&quot;. </i>Let's remember that until this year, the 
Chairman of the GEM Listing Committee was K. S. Lo, a director of HKEx, and to 
this day, the Chief Executive of HKEx is also a member of the Listing 
Committees. But even if there were no overlap&nbsp; of individuals, that does 
not in itself destroy the chain of command. The recently-appointed Chairman of 
the Listing Committee, Marvin Cheung, gave his first major
<a target="_blank" href="http://www.hksa.org.hk/publications/society_journals/2003/2003-10/05_Interview%20p29-.pdf">
interview</a> this month to <i>HK Accountant</i> magazine, and refreshingly told 
it like it is. He said:</p>

<blockquote>

<p>&quot;My priority is to make sure that the role of the Listing Committee is 
transparent.. so that people are aware that we are not a committee that has 
accepted from the Board of the Exchange the full responsibility for listing 
matters. From time to time, the chairman of the Exchange, and others, have 
loosely suggested that they have delegated items or functions to the Listing 
Committee - if that is the case,&nbsp; where is my budget? Do I have the right 
to hire and fire people? If not, how have you delegated it to me?&quot;</p>

</blockquote>

<p>In relation to disciplinary investigations of listed companies (for breaches 
of the Listing Rules), he correctly stated:</p>

<blockquote>

<p>&quot;If they do not put such matters before us, the Listing Committee is 
powerless...We do not have the power to direct the staff [of HKEx] to 
investigate a particular incident... we are not running the supervision or 
policing of listing matters.&quot;</p>

</blockquote>

<p>These remarks make the truth plain for all - and if the Listing Committee is 
not in control, and the board of HKEx take no part, then who exactly is running 
the regulatory &quot;business&quot; of HKEx, in its subsidiary, SEHK? Clearly, the 
full-time management of HKEx/SEHK, including Mr Chow as their boss, are heavily 
involved in regulation. This is another reason why option (B) in the PERL paper 
would not work, because any part-time board or committee which oversees a new 
subsidiary would find itself in the same position as the Listing Committee, and 
the budget and operations would still be a matter for the management of HKEx.</p>

<p>Let's face it, if HKEx were unable (as management claims) to influence the 
operations of the new subsidiary, then there would be no benefit in keeping it 
in the group - it would be like owning a car without having the keys or license 
to drive it.</p>

<p>As regards the claim that the SFC would be overly powerful, the evidence from 
its existing front-line role as maker and administrator of the Takeover Code refutes that 
claim. 
Anyone affected by its decisions can appeal to the Takeover Panel (of which your 
editor is a member) and the Expert Group similarly proposed that the &quot;Listing 
Panel&quot; of market practitioners would hear appeals of the SFC's Hong Kong Listing 
Authority decisions. Beyond that, there are other potential avenues of appeal, 
such as the Securities and Futures Appeals Tribunal and ultimately the courts. 
The danger Mr Chow speaks of simply isn't there.</p>

<h3>Budget</h3>

<p>Now let's deal with Mr Chow's claim, again in the letter to the <i>SCMP, </i>
that:</p>

<blockquote>

<p>&quot;The statement in your editorial that 'nearly a fifth of HKEx's income comes 
from listing fees' is misleading...&quot;</p>

<p>&quot;The approval of new companies for listing is not a profitable activity for 
HKEx. Revenues from new listings constitute only a small part of HKEx's total 
listing revenue&quot;</p>

</blockquote>

<p>Now who's being misleading? Think about it. What happens to new listings? 
They become old listings. And they keep paying annual listing fees. And 
investors pay HKEx transaction fees, settlement fees and often scrip fees every 
time they trade the stock. Let's not be coy about it, without listed companies, 
there wouldn't be any stock to exchange on the stock exchange. HKEx is a 
for-profit company, and listings are essential for profitability.</p>

<p>Even if you look at the listing fees (initial and annual)&nbsp; in isolation from all the other 
transaction-related revenues, and compare that with the costs of the Listing 
Division which administers the Listing Rules, there is no doubt that this 
division is a highly profitable business. After all, that is why it is important 
to HKEx that the transfer of regulatory powers to the SFC be achieved on a <i>
&quot;bottom-line neutral&quot;</i> basis, as recommended by the Expert Group. That means 
that HKEx would keep to keep that portion of its listing fees which represents 
the profit, while giving up the costs and the revenue to match it.</p>

<p>If Mr Chow still disputes that HKEx makes a profit from the Listing Division, 
then we challenge him to publish separate figures for the Listing Division in 
the next audited statements instead of blending them in with the &quot;cash market&quot; 
segment as is present practice.</p>

<h3>The Reason for Resistance</h3>

<p>Despite the fact that there is a very real conflict of interest between being 
a for-profit company and a regulator, the truth is that this is not the main 
reason why HKEx is fighting so hard to keep the regulatory function. From a 
financial point of view, in any other company, when someone offers you the 
opportunity to shed costs without reducing profits, you jump at the opportunity 
to boost your gross margin.</p>

<p>So what is really going on here? It's not about the money. Shareholders of 
HKEx would not have elected your editor if they thought his views were damaging 
to their financial interests. No, this is about power, and the ability of a 
small group of vested interests to go on making their own rules, against the 
interests of investors.</p>

<p>Mr Chow claims that, other than disclosure rules, the enforcement of which he 
is willing to be transfer to the SFC, the <i>&quot;vast majority&quot;</i> of the Listing 
Rules <i>&quot;deal with matters related to the operation of the marketplace&quot;. </i>&nbsp;This 
is simply not true. Anyone who has spent any time studying the
<a target="_blank" href="http://www.hkex.com.hk/rulereg/listrules/listrules.htm">
Listing Rules</a> or even glancing at the contents page will know that they are 
about far more than disclosure obligations. In fact, the marketplace rules Mr 
Chow refers to are set out in several separate books including the
<a target="_blank" href="http://www.hkex.com.hk/rulereg/rulesex/rulesex.htm">
Rules of the Exchange</a>, which can stay where they are, and these should not 
be confused with the Listing Rules. By cherry-picking which Listing Rules to 
give up to the SFC, Mr Chow and Mr Lee seek to retain the powers that matter 
most to vested interests, including the rules governing entry criteria, post-IPO 
lock-up periods for controlling shareholders, the composition of the listing 
committee, the (lack of) pre-emptive rights for shareholders, the (lack of) poll 
voting requirements, the ability of controlling shareholders to elect their 
buddies or paid advisers as &quot;independent&quot; directors, the limits on share option 
schemes, and the provisions for articles of association of listed companies 
relating to director elections and removal.</p>

<p>Cast your mind back to the days of 2000. GEM was new, 
and the Exchange set about <a target="_blank" href="waiver2.asp">waiving or bending its rules</a> to allow companies with 
no real track record to list. We're thinking of companies like Tom.com, Henderson Cyber and 
Sunevision&nbsp; and many smaller imitators. Only a small fraction of those issues were allocated to the public 
offer, while the bulk was placed with selected friends and clients of the organisers, 
and the placees made massive multi-fold premiums in the next-day market.&nbsp; 
For sure, this was highly profitable for the placees, investment banks, brokers, 
lawyers and accountants who make the wheels of the market go around, but tens of thousands of retail investors lost billions of Hong Kong dollars as they 
got sucked into the post-listing hype, and in the process, GEM, which started as 
a sensible idea to provide capital for small and medium enterprises, was 
hijacked into a tycoon's and con-artists playground, destroying its credibility.</p>

<p>That's the kind of power that the existing three-tier structure&nbsp; brings 
you, and that has nothing to do with the financial interest of HKEx and 
everything to do with external vested interests.</p>

<h3>A word for our American readers</h3>

<p>If you are sitting in New York and any of this seems familiar, its because 
you've got the same problem with the NYSE. Although your SEC is a  more 
powerful and better-funded regulator than our SFC, you still have an NYSE which makes
<a target="_blank" href="http://lcm.nyse.com/cpgdata/nlcs/lcm/lcm.nsf/LaunchFrames">
corporate governance rules</a> for listed companies on matters like board 
composition and share option schemes, and allows brokers to vote shares they 
hold for clients without any instructions from those clients, stacking votes in 
favour of management. Until the &quot;coup de Grasso&quot;, HKEx often backed its
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2003/0304014news.htm">
lobbying</a> with a desire to adopt a <i>&quot;North-American-style model&quot;</i> - a 
model which has now been shown to be just as riddled with conflicts as HKEx is. 
It was, after all, by comparison to the option-inflated packages of listed 
company CEOs that Mr Grasso sought to justify his own exorbitant pay, calling 
himself <i>&quot;two-thirds businessman and one-third regulator&quot;</i> (in that order). 
Self-regulatory organisations&nbsp; simply don't work, and the NYSE should get 
out of the regulation of exchange members and listed companies and move these 
responsibilities to the SEC.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
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
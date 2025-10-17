
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

<script type="text/javascript">document.title="Disserving the Public Interest";</script>

	<div class="summary">HKEx, having announced a commitment to co-operate with Government's adoption of the Expert Group's plan to shift its regulatory role to the SFC, is now fighting it. We sat down last Monday with Charles Lee, who said that HKEx was obliged to put the public interest first and co-operate with the Government's proposal. Now he has done a U-turn. Did HKEx make a false and misleading announcement? And what about dictum meum pactum?</div>

<h2 class="center">Disserving the Public Interest<br>
<span class="headlinedate">31 March 2003</span></h2>
<p>On Friday 21-Mar-03 the Expert Group to Review the Operation of the 
Securities and Futures Market Regulatory Structure (<b>Expert Group</b>) 
released its
<a target="_blank" href="http://www.info.gov.hk/info/expert/expertreport-e.htm">
report</a>. While the name of the group may have lacked punch, the report 
certainly did not.</p>

<h3>The recommendations</h3>

<p>The report was thoughtful, deliberative, almost comprehensive and certainly 
far reaching. We believe its recommendations should be adopted without further 
delay - and give those men a Gold Bauhinia Medal. The group listened to the 
views of anyone who wished to express them, and there is no need for further 
consultation.</p>

<p>The recommendations will establish a regulatory framework which is a 
necessary part of the improvements needed to raise Hong Kong to international 
standards. Beyond the terms of reference, the Expert Group even urged the 
government to consider class actions and contingent fees, which in our view are 
another necessary step to make shareholder actions a reality rather than a 
theoretical legal concept, and add to the deterrent for malfeasance. Until we 
have such powers, the full burden of enforcement rests squarely on the 
Government through the SFC and criminal courts.</p>

<p>The report's central recommendation is that
<a target="_blank" href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> (<b>HKEx,
</b>0388) should get out of the business of regulation - a term which in itself 
is an oxymoron. The report calls the present structure <i>&quot;fundamentally flawed&quot;</i>. 
You cannot be both for-profit and regulate in the public interest. Indeed, last 
year, according to HKEx's own annual report, there were 275 listing 
applications, and only 1 was rejected. That's nothing to be proud of.</p>

<p>The report calls for the Securities and Futures Commission (<b>SFC</b>) to 
establish the Hong Kong Listing Authority (<b>HKLA</b>), headed by an executive 
director, which will take over the regulatory role from the existing Listing 
Division from HKEx.</p>

<p>Furthermore, the report calls for the Listing Rules of the HKLA to be given 
statutory backing, but that the rules should not be statutes themselves. This 
will make it an offence to break the Listing Rules and allow for prosecutions 
with meaningful fines, while also allowing the rule-making process to be 
conducted by the professionals of the SFC and not by legislators, who are not 
sufficiently qualified to do so. The report states that the Securities and 
Futures Ordinance already contains the necessary legal framework, so no new 
legislation is needed to bring the HKLA into existence. The check and balance is 
that if any Listing Rule made by the HKLA is found by a court (on appeal of an 
HKLA decision) to be inconsistent with the legislative framework, then the rule 
will be overturned.</p>

<p>While it is clear that the Expert Group did not set out to copy any 
particular model, and great care was taken to look at the particular 
circumstances of Hong Kong, the end result looks very similar, but not 
identical, to the UK regime in which the Financial Services Authority runs the 
UK Listing Authority. All that shows is that logical reasoning brings reasonable 
people to the same conclusions.</p>

<p>The report also calls for an advisory &quot;Listing Panel&quot; to be established, in a 
similar format to the SFC's Takeover Panel (on which your editor sits). The 
Listing Panel would include a much greater proportion of investor 
representatives (currently, there is only 1 fund manager on the 25-member 
Listing Committee). The Listing Panel would hear appeals of decisions of the 
HKLA, and would also advise the HKLA on amendments to the Listing Rules. The key 
word here is <i>&quot;advise&quot;</i> - unlike the existing Listing Committee, the Panel 
would not have a veto over new Listing Rules, which would be <i>&quot;made and 
administered&quot; </i>by the HKLA within its statutory powers.</p>

<p>In our <a target="_blank" href="expertgroup1.asp">submission</a> to the 
Expert Group, we called for the Listing Committee to be scrapped, for the reason 
that an issuer-dominated group of part-timers should not be making and 
interpreting the rules of the market. Instead, we said that an &quot;Issuers Group&quot; 
advisory committee could be formed, similar to the existing SFC Shareholders 
Group. So we agree with the advisory function of the new Listing Panel. However, 
we think it is unnecessarily complicated to have the Listing Panel involved in 
appeals of HKLA decisions, because this inserts an additional layer between the 
HKLA and judicial review by the courts. Given that the Listing Rules will have 
statutory backing, it would be simpler for appeals to be handled by the courts.</p>

<p>We also argued that the Takeover Code and the Code on Share Repurchases (<b>Codes</b>) 
should be given statutory backing. It seems inconsistent to regulate one aspect 
of corporate behaviour through Listing Rules with statutory backing while 
regulating another with a non-statutory code, where the worst penalty is a 
&quot;cold-shoulder&quot; order. The latter has been shown to be ineffective, just as the 
&quot;name and shame&quot; approach by HKEx to enforcing its listing rules is also 
ineffective. What is needed are meaningful financial penalties to offset the 
financial rewards of wrongdoing. It is unclear why the Expert Group did not 
comment on the question of statutory backing for the Codes - perhaps this was an 
oversight which can be resolved in the implementation phase, as it would be 
consistent with their other recommendations.</p>

<h3>Timing</h3>

<p>One widely misunderstood aspect of the report, perhaps caused by an ambiguous 
comment from the Financial Secretary, is the timing of its implementation. Media 
have been reporting that it will take 18 months for the HKEx to be relieved of 
regulation. This is not true.</p>

<p>In fact, the only reference in the report to &quot;18 months&quot; is that <u>after</u><i>
</i>the shift to the HKLA, the new Listing Panel will remain involved in 
approvals of new listings for an 18-month transition period while the HKLA gets 
up to speed. This is partly because HKEx has under spent on regulation for many 
years, leading to high staff turnover and a lack of experience. So the HKLA will 
have to cut out some dead wood and hire some experienced talent in order to 
raise the ability of the current listing division to handle new listings on 
their own.</p>

<p>So let's be clear - if everyone co-operates, it should only take 2 to 3 
months for the transfer of the staff of the Listing Division of the Stock 
Exchange to the new HKLA under the SFC. Any financial bickering over the split 
of listing fees can be settled afterwards and need not delay the implementation. 
After all, agreement on the division of fees is not a condition of the proposal, 
and it has been accepted by all parties that HKEx will be left &quot;neutral&quot; in 
profits terms (translation: they were making a profit on regulation and they 
will get to keep the profit without doing any more work).</p>

<h3>Co-operation and resistance</h3>

<p>The Expert Group held a press conference on 21-Mar-03, and you can
<a target="_blank" href="http://isdwebcast02.netvigator.com/webcast/210303be.ram">
watch the video</a> (free
<a target="_blank" href="http://www.real.com/realoneplayer.html?pp=home&src=032603warhome_2http://www.real.com/realoneplayer.html?pp=home&src=032603warhome_2">
RealOne</a> player required). The same day, the Financial Secretary endorsed the 
report in a
<a target="_blank" href="http://www.info.gov.hk/gia/general/200303/21/0321286.htm">
statement</a> and committed the government to implement its recommendations <i>
&quot;as soon as possible&quot;</i>.</p>

<p>HKEx responded the same day with an initial
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2003/030321news.htm">
statement</a> that it <i>&quot;is disappointed with the conclusions and 
recommendations&quot; </i>but continued:</p>

<blockquote>

<p>&quot;in the light of the Government's intention to adopt the Expert Group's 
recommendations, HKEx will work closely with the Government and the [SFC] on 
their implementation.&quot;</p>

</blockquote>

<p>This was followed on Sunday 23-Mar-03 with a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030324/LTN20030324018.doc">
formal announcement</a> by the board of HKEx repeating this commitment.</p>

<h3>Dictum meum pactum?</h3>

<p>As readers will know, your editor David Webb is
<a target="_blank" href="0388agm2003.asp">standing for election</a> to the board 
of HKEx, in an attempt to introduce some investor-based representation to the 
Board. Indeed, the Expert Group report noted <i>&quot;at present there are no 
investor representatives on either the HKEx Board or the [SFC]&quot;</i>.</p>

<p>At the invitation of HKEx's chairman, Charles Lee, we sat down with him last 
Monday, 24-Mar-03, and amongst other things, discussed the Expert Group report. 
He said:</p>

<blockquote>

<p>&quot;We will co-operate with government. This is a public policy decision, and of 
course you know that, from the
<a target="_blank" href="http://www.legislation.gov.hk/blis.nsf/e1bf50c09a33d3dc482564840019d2f4/7d46d2b5452ae1be48256897000af4ac">
Merger Ordinance</a>, the first duty of the regulator is to safeguard the public 
interest, so we have a public duty, and if government tells us this our public 
duty, then of course we will do it, this is our public duty. And the ordinance 
goes on to say that, after the public interest, we would then have to look after 
[HKEx] shareholders interest, second duty, and in case of a conflict, the public 
duty shall prevail, so that's very clear.&quot; (our hyperlink added)</p>

</blockquote>

<p>Well, that was certainly clear to us and very reassuring. No more squabbling 
then. But 4 days later, Mr Lee was telling the newspapers the exact opposite. 
Far from &quot;co-operating&quot;, he planned to send a letter to Secretary for Financial 
Services Frederick Ma Si-hang outlining HKEx's opposition to the proposals.</p>

<p>This brings into question whether the announcement last Sunday, made by the 
board of HKEx and filed with the SFC, was in fact false and misleading. In the 
usual terms, the Directors individually and jointly accepted responsibility for 
the accuracy of the announcement. These are the same directors who are now 
fighting the Government's proposal.</p>

<p>It also goes directly against what Mr Lee told us last Monday, that HKEx 
would co-operate and put the &quot;public interest&quot; first. Such assurances were 
disingenuous platitudes. So much for the old financial practice of <i>dictum 
meum pactum </i> - my word is my bond. The about-turn clearly and ironically 
illustrates what the Expert Group said in the first place - it is not realistic 
to expect a for-profit entity to act in the public interest.</p>

<p>Under the existing Listing Rules, there is a special provision that the SFC 
is the regulator of HKEx's own listing. So now, we call on the SFC to 
investigate whether the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030324/LTN20030324018.doc">
announcement</a> of HKEx dated 23-Mar-03 was false and misleading. Did the board 
ever really intend that HKEx would co-operate with Government? There has been no 
announcement since then to the contrary, and in our view this is also a breach 
of paragraph 2 of the standard Listing Agreement whereby HKEx, as a listed 
company, is obliged to keep the market informed of material changes. This 
reversal is certainly one of them.</p>

<p>Indeed, in our view, the removal of the listing function to the SFC is 
beneficial to the long term development of the market and hence to the financial 
prospects of HKEx as a listed company. By opposing the plan, the board cannot 
even be said to be acting in the interests of its own shareholders, let alone 
the public interest, would should come first.</p>

<h3>Public policy</h3>

<p>Whether or not the Government's commitment to implement the report's 
recommendations is followed through is ultimately in the hands of Mr Tung 
Chee-hwa, Chief Executive of Hong Kong, and will be evident from his actions in 
the next two weeks.</p>

<p>Rumour has it that Charles Lee may resign as Chairman of HKEx if he does not 
get his way. That rather misses the point that the 3-year terms of all of the 8 
&quot;public interest directors&quot; appointed by the government, including Mr Lee, 
expire on 15-Apr-03, right after the HKEx AGM. So he would be out of office 
anyway unless he is reappointed by Government.</p>

<p>That would be a welcome opportunity to revamp the boardroom of HKEx, along 
with the expected appointment of a new Chief Executive upon Mr Kwong Ki-chi's 
resignation.</p>

<p>Currently, 8 out of 15 directors are appointed by the Government, including 
the Chairman of HKEx who is subject to approval of the Chief Executive of Hong 
Kong. This will be reduced to 6 out of 13 after the AGM, the balance being 6 
elected directors and the Chief Executive of HKEx, who is subject to approval by 
the SFC after consulting the Financial Secretary.</p>

<p>The Government has yet to announce who those 6 appointed directors will be 
(including the Chairman), so now more than ever, Government has the power to 
decide whether the appointed directors (and also the chief executive) are 
pro-reform or anti-reform. Those who are anti-reform, including Mr Lee, need not 
be re-appointed, but if they are, then we will know for sure which camp Mr Tung 
sits in. His Government's choice of directors, Chairman and Chief Executive will 
be a litmus test of whether he favours the vested interests of tycoons or the 
long-term interests of Hong Kong as a financial centre.</p>

<h4>Note:</h4>
<p><b>David Webb will be
<a target="_blank" href="http://www.legco.gov.hk/yr02-03/english/panels/fa/agenda/faag0407.htm">
appearing</a> before the
<a target="_blank" href="http://www.legco.gov.hk/general/english/panels/yr00-04/fa.htm">
Financial Affairs Panel</a> of the Legislative Council from 10:00 on 7-Apr-03. 
This article constitutes his submission to that meeting.</b></p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=38148">HKSAR Expert Group to Review the Securities and Futures Market Regulatory Structure</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
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
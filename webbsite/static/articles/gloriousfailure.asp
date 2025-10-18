
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

<script type="text/javascript">document.title="Glorious failure in the Cayman Islands";</script>

	<div class="summary">We look at the curious circumstances behind the failed privatisation of Glorious Property (0845) and call on the Cayman Islands and Bermuda, where 75% of HK-listed companies are incorporated, to follow HK in abolishing the headcount test.</div>

<h2 class="center">Glorious failure in the Cayman Islands<br>
<span class="headlinedate">19 January 2014</span></h2>
<p>On Friday 17-Jan-2014, independent shareholders of
<a href="../dbpub/articles.asp?p=51570">Glorious Property Holdings Ltd</a> (<strong>Glorious</strong>, 
0845)
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0117/LTN20140117541.pdf" target="_blank">
vetoed</a> the privatisation offer by majority shareholder
<a href="../dbpub/natperson.asp?p=51571&amp;x=y">Zhang Zhi Rong</a> (<strong>Mr Zhang</strong>) 
by a very narrow margin. The case highlights the need for the Cayman Islands and 
Bermuda to catch up with Hong Kong and abolish the headcount test.</p>
<p>The offer was made using a scheme of arrangement (<strong>SoA</strong>) 
under the 
<a href="http://gazettes.gov.ky/sites/default/files/extraordinary-gazettes-supplements/Es672013_web.pdf" target="_blank">Cayman Islands Companies Law</a>. In the Cayman Islands, as in Bermuda and 
the UK, there are two criteria to approve a Scheme of Arrangement:</p>
<ul>
	<li>75% of the voted shares must be in favour; and</li>
	<li>a majority of the voting shareholders must be in favour (the <strong>
	headcount test</strong>)</li>
</ul>
<p>In addition, there is a criterion in the Hong Kong Takeovers Code, to bring 
SoAs into line with general offers to purchase shares by protecting significant 
minorities against compulsory purchase:</p>
<ul>
	<li>the number of shares voted against must not be more than 10% of the 
	independent &quot;disinterested&quot; Shares (including those which don't vote) (the
	<strong>objection test</strong>).</li>
</ul>
<p>The Glorious SoA easily satisfied the first criterion: of the voted shares, 
96.92% were in favour and 3.08% against. It therefore follows that they 
satisfied the third criterion: the shares voted against were only 1.91% of the 
disinterested shares. But the deal failed on the headcount test, with 58 
shareholders in favour and 62 against. If only 3 shareholders had voted the 
other way, the deal would have passed by 61 to 59.</p>
<h3>Registered v beneficial owners</h3>
<p>Note that the only &quot;shareholders&quot; that count in the headcount are <em>
registered</em> shareholders, or in legal terms, the members of the company, the largest of which is HKSCC Nominees Ltd (<strong>HKSCCN</strong>), 
the depository of the Central Clearing and Automated Settlement System (<strong>CCASS</strong>). 
HKSCCN represents &quot;CCASS Participants&quot;, including banks, brokers and custodians, 
and the clients behind them, none of whom is counted separately, and the court 
has no way of knowing for sure how many holders each custodian represents. 
Beneficial shareholders always have the option of removing their shares from 
custody and putting them on the register, thereby becoming members.</p>
<p>Although the Cayman Companies Law does not provide for anything other 
than a majority of registered shareholders, the court has a conflicting
<a href="http://www.judicial.ky/wp-content/uploads/practice-directions/No2-10CompaniesLaw-SchemesofArrangementandCompromise.pdf" target="_blank">
Practice Direction 2 of 2010</a> (the relevant part of which is identical to
<a href="http://www.judicial.ky/wp-content/uploads/practice-directions/No1-02SchemesofArrangementandCompromiseUnderthecompaniesLawSection86.pdf" target="_blank">Practice Direction 1 of 
2002</a>), which includes a section on &quot;Looking through 
the register&quot; and allows for this possibility in paragraph 4.4:</p>
<blockquote>&quot;Custodians and clearing houses may be required to 
specify both the number of clients or members from whom they have received 
instructions in addition to the number of shares voted. The majority in number 
will be calculated on the basis of the number of clients or members giving 
instructions to the custodian or clearing house.&quot;</blockquote>
<p>Whether or not this extra counting is required is a matter of discretion for 
the Grand Court, and apparently until 2012, they never did. In the Jan-2012 privatisation of <a href="../dbpub/orgdata.asp?p=45647">Little 
Sheep Group Ltd</a> (<strong>Little Sheep</strong>), the judge 
<a href="../codocs/GrandCourt120120.pdf" target="_blank">directed</a> 
before the circular went out that HKSCCN should be treated as a &quot;multi-headed 
member&quot;, looking through to the next layer and counting the CCASS Participants, 
in line with the Practice Direction. The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2011/1213/LTN20111213292.pdf" target="_blank">
privatisation circular</a> included on page 10 the following words:</p>
<blockquote>&quot;the number of votes cast [by HKSCCN] in favour of the 
Scheme and <u>the number of CCASS Participants</u> on 
whose instructions they are cast and the number of votes cast [by HKSCCN] against 
the Scheme and the <u>number of CCASS Participants</u> 
on whose instructions they are cast <u>will be disclosed 
to the Grand Court and may be taken into 
account in deciding</u> whether or not the Grand Court should exercise its 
discretion to sanction the Scheme&quot; (our underline)</blockquote>
<p>As it turned out though, the 
Little Sheep offer was so popular that only 1 shareholder voted against so the point was 
moot. Later in 2012, a different judge, in the privatisation of
<a href="../dbpub/articles.asp?p=41418">Alibaba.com Ltd</a>, was not as certain 
about the law, 
but <a href="../codocs/GrandCourt120501.pdf">ordered that</a> (clearer
<a href="../codocs/GrandCourt120501b.pdf" target="_blank">law report here</a>) the 
information on CCASS Participants be provided for the court's discretion. In the 
end, it 
didn't make a difference to the outcome in that case, although the judge did
<a href="../codocs/GrandCourt120601.pdf" target="_blank">call for a review</a> 
of the inconsistent Practice Direction.</p>
<h3>Why did Glorious fail?</h3>
<p>Now interestingly, on 7-Jan-2014, HKSCC put out a 
<a href="../codocs/HKSCC140107a.pdf" target="_blank"><strong>circular</strong></a> to CCASS Participants regarding the SoA for Glorious, 
advising that the numbers of participants would be counted and disclosed to the 
Grand Court for consideration, using the same words as in the Little Sheep circular above. In Friday's announcement, Glorious noted that (as advised by HKSCCN) 82 
CCASS Participants voted in favour and 35 against. If added to the member count 
of 58:62, this would take it to 139:96, a clear majority in favour, but the announcement said the 
vote had failed and it thereby appears to rule out presenting those figures to 
the Grand Court for its discretion.</p>
<p>Unlike Little Sheep, there was nothing in the Glorious
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/1224/LTN20131224119.pdf" target="_blank">
privatisation circular</a> about counting CCASS Participants separately and submitting 
the tally to the court, so we don't know why HKSCC thought that would be the 
case. Did the company tell them? Did the Grand Court direct that the information 
be provided, as it did in Alibaba.com Ltd? It is puzzling that Glorious gave up so easily rather than take the 
CCASS Participant information to the Grand Court and try to persuade the judge 
to approve the deal. Could it be that Mr Zhang, who was 
financing the bid with borrowed money, got cold feet?</p>
<h3>Decapitate the headcount in the former British Empire</h3>
<p>Readers may recall that after a <a href="../dbpub/subject.asp?c=149">long 
battle</a> launched on the back of the PCCW headcount
<a href="../articles/pccwrig.asp">vote-rigging scandal</a> in 
2009, Webb-site was <a href="../dbpub/artlinks.asp?s=6918">successful</a> in 
2012 in persuading the HK Government to amend the HK Companies Ordinance, 
scrapping the headcount test for SoAs involving takeover offers and instead 
adopting the objection test into law from the Takeovers Code. The result is
<a href="http://www.cr.gov.hk/en/companies_ordinance/docs/part13-e.pdf" target="_blank">
Section 674(2)</a> of the Companies Ordinance 2012, which
<a href="http://www.gld.gov.hk/egazette/pdf/20131743/es220131743163.pdf" target="_blank">
comes into effect</a> on 3-Mar-2014. You may thank us later. For HK-incorporated companies, no longer 
will a few small registered shareholders be able to block a proposal which 
less than 10% of the independent shares oppose.</p>
<p>Unfortunately, <a href="../dbpub/domicile.asp">Webb-site Who's Who 
shows</a> that only 209 HK-listed companies are incorporated in HK, or 12.7% of 
the market, with the Cayman Islands having the largest share at 44.3% followed 
by Bermuda with 30.4%. Only 185 (11.2%) are incorporated in mainland China, 
mostly State-Owned Enterprises. As far as we can tell from looking at the web 
site of the <a href="http://www.lawreformcommission.gov.ky" target="_blank">
Cayman Islands Law Reform Commission</a> there is no plan on the agenda to amend 
the headcount test. We are not aware of any plans in Bermuda either. Bermuda 
completed an overhaul of its Companies Act in 2011. <strong>Both of these 
British colonies should follow a former one, Hong Kong, in abolishing the 
headcount and adopting the objection test. </strong>Fiddling around with 
counting CCASS Participants, who are not beneficial owners, is not an acceptable 
compromise. Similar concerns apply in the UK and throughout the former British 
Empire, whose members inherited this perverse aspect of company law.</p>
<p>So given that about 75% of HK-listed companies are incorporated in either 
Bermuda or the Cayman Islands, companies domiciled there which propose 
privatisations by SoA will continue to risk &quot;glorious failure&quot; of otherwise 
popular proposals due to the vagaries of the headcount test, even when it isn't 
rigged - and we have not inspected the Glorious share register for any evidence 
of that.</p>
<p>There is an alternative open to all of them - an offeror can make a &quot;general 
offer&quot; to buy the shares, and if he succeeds in acquiring 90% of the shares in 
the offer, then he can compulsorily acquire the rest. This is what happened in 
the last 3 Cayman privatisations in HK after Alibaba.com Ltd:
<a href="../dbpub/orgdata.asp?p=55390">PCD Stores (Group) Ltd</a>,
<a href="../dbpub/orgdata.asp?p=58636">Trauson Holdings Co Ltd</a> and
<a href="../dbpub/orgdata.asp?p=13503">ERA Mining Machinery Ltd</a>.</p>
<h3>And by the way, on Mr Zhang</h3>
<p>For what it's worth, we are surprised that the offer received the support it 
did. The $1.80 bid was at a substantial 39% discount to net asset value of $2.95 at 
30-Jun-2013, but perhaps investors felt they had no choice. The hilarious reason 
given for the offer was:</p>
<blockquote>&quot;The Offeror [Mr Zhang] considers that the 
depressed price of the Shares has had an adverse impact on the Company's 
reputation with customers, and therefore on its business, and also on employee 
morale. The implementation of the Proposal would eliminate this adverse impact.&quot;</blockquote>
<p>But this is rather confusing cause and effect - it was in fact Mr Zhang who 
had an &quot;adverse impact on the Company's reputation&quot;, and probably on its 
business and employee morale, when the US SEC pursued his private investment 
company for insider dealing in shares of Nexen Inc before its takeover by CNOOC 
Ltd, an allegation that was <a href="../codocs/SEC121018.pdf" target="_blank">
settled</a> on 18-Oct-2012 for US$14m, twice the amount alleged to have 
been made. Mr Zhang <a href="../dbpub/positions.asp?p=51571">resigned</a> as Chairman 
and director of Glorious on 26-Nov-2012, at which point investors were sitting 
on a 66.6% loss from the 2-Oct-2009 listing day. On the same day, he resigned as 
Chairman of shipbuilder <a href="../dbpub/str.asp?i=6377">China Rongsheng Heavy Industries 
Group Holdings Ltd</a> (<strong>CRHI</strong>, 1101) which had a negative return 
of 80.3% from its listing day on 19-Nov-2010 until his resignation. He has sold 
some of his controlling shareholding in CRHI but is still its single largest 
shareholder at 29.3%, and his father Zhang De Huang owns 11.4%.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=41418">Alibaba.com Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51570">GLORIOUS PROPERTY HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=45647">Little Sheep Group Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=149">Headcount test</a></li>
				
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
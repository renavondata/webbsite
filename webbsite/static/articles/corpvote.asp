
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

<script type="text/javascript">document.title="Corporate Voting in HK Elections";</script>

	<div class="summary">In our first article leading up to the march for universal suffrage on Sunday, we look at the failure of HK's Government to abolish the small-circle corporate voting system which secures business dominance of the Functional Constituencies and a veto in LegCo. We illustrate it with an investigation of the Transport constituency electorate.</div>

<h2 class="center">Corporate Voting in HK Elections<br>
<span class="headlinedate">28 November 2005</span></h2>
<p>In the Government's 
<a target="_blank" href="http://www.info.gov.hk/cab/cab-review/eng/report5/index.htm">proposals</a> for electoral reform, it did absolutely nothing 
to abolish the small-circle corporate voting system used in many of the so-called 
Functional Constituencies (<b>FCs</b>) which comprise half of Hong Kong's current 60-member 
Legislative Council. The same corporate electorates also elect many of the 
members of the Election Committee (<b>EC</b>) which chooses the Chief Executive 
of Hong Kong. Indeed, under the proposals, 100 of the 800 new seats on the 
expanded EC would go to the industrial, commercial and financial sectors which 
are dominated by corporate voting.</p>
<p>Those FCs which allow corporate voting generally have very small 3-digit 
electorates, the elections are often uncontested, and the FC legislators play a 
crucial role in blocking the democratically elected members' motions in the 
Legislative Council. That is because, under
<a target="_blank" href="http://www.info.gov.hk/basic_law/fulltext/content0211.htm">
Annex II</a> of the Basic Law, in order to pass a member's motion, such as a 
call for a competition law, or an amendment to a Government-tabled bill, a 
majority is required of &quot;both houses&quot; - a majority in the 30 FCs, and a majority 
in the 30 geographically elected constituencies. So it only takes 15 votes in 
the FCs to block a motion.</p>
<p>Even the proposal to add 5 new FCs to be elected by District Councillors does 
little to change this block. Under any realistic voting scenario, at least 1 and 
probably 2 of the 5 new FC legislators would be pro-Government members and the 
Government would only need 18 out of 35 FCs on its side. We think it's likely 
that the Government will come up with some token concessions on the electorate 
for the proposed District Council seats to try to head off the pro-democracy 
march on Sunday, but the retention of corporate voting in the FCs is reason 
enough to <a target="_blank" href="http://www.civilhrfront.org/">march</a> 
anyway.</p>
<p>Those vested interests in Hong Kong who are calling for a bicameral (or 
two-house) system as a purported form of universal suffrage are in reality 
calling for maintenance of the existing system in which business interests carry 
a veto in the &quot;upper house&quot;. Going down this road would take Hong Kong no 
further towards a true democratically elected legislature accountable to the 
people.</p>
<p>Since the National People's Congress Standing Committee (<b>NPCSC</b>) 
published its
<a target="_blank" href="http://www.gld.gov.hk/cgi-bin/gld/egazette/gazettefiles.cgi?lang=e&extra=e&year=2004&month=4&day=28&vol=08&no=08&gn=1&header=1&part=1&df=1&nt=s5&newfile=1&acurrentpage=12&agree=1&gaz_type=ls5">
decision</a> of 26-Apr-04, the HK Government has taken to using the phrase <i>
&quot;balanced participation&quot;</i> - a euphemism for keeping the business-dominated 
functional constituencies (whatever they are subsequently called), and ignoring 
the fact that prosperous and stable societies are positively correlated with 
universal suffrage. What could be more &quot;balanced&quot; than one vote per person?</p>
<p>The NPCSC decision said:</p>
<blockquote>
	<p>&quot;Any change...shall conform to principles such as being compatible with 
	the social, economic, political development of Hong Kong, being conducive to 
	the <u>balanced participation</u> of all sectors and groups...&quot; (emphasis 
	added)</p>
</blockquote>
<p>What this &quot;balanced participation&quot; is really about is the fact that the 
mainland and HK Governments have more influence over business and special 
interests than they do over the population at large. After all, the 
profitability of businesses often depends on the terms of government licenses, 
regulations, permits, land leases, laws, taxes and subsidies. In return, through 
the FC system, Government can count on the support of business interests in the 
Legislative Councils and in the CE elections.</p>
<p>To be sure, in almost any democracy, there are strong, well-financed 
corporate and special-interest lobbies, and depending on the quality of campaign 
finance laws, they can be very influential on government policy, but the 
difference is that they are nothing more than lobbyists without a vote of their 
own, and ultimately those democratically elected governments have to make 
policies that as a whole are acceptable to the public who elect them by 
universal suffrage, or they won't win re-election. By contrast, the HK 
Government's mandate, and its support in the Legislative Council, is dependent 
on just a tiny fraction of the population who control the corporate and special 
interest votes.</p>
<p>Within the 30 FCs, some &quot;professional&quot; FCs are elected by thousands of 
individuals, such as the legal, medical and accounting sectors. It is no 
coincidence that these sectors, with large electorates, tend to produce 
pro-democracy legislators. So the Government and the business lobby rely on the 
FC legislators who are elected through corporate voting to counter this weight.</p>
<h3>The NPCSC interpretation</h3>
<p>The controversial 26-Apr-04 decision of the NPCSC and the earlier procedural
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/images/basiclawtext_doc18.pdf" target="_blank">decision</a> of 6-Apr-04 in essence re-wrote the Basic Law, which
<a target="_blank" href="http://www.info.gov.hk/basic_law/fulltext/content0211.htm">
says</a>, in relation to any changes after 2007 to the method of electing the 
Legislative Council and to procedures for passing bills and motions, that 
changes only have to be reported to the NPCSC <i>&quot;for the record&quot;</i>. So here 
is a quick linguistic guide to the Basic Law:</p>
<table class="txtable">
	<tr>
		<td><i>Phrase</i></td>
		<td><i>NPCSC's interpretation</i></td>
	</tr>
	<tr>
		<td>&quot;if there is a need&quot;</td>
		<td>the Chief Executive must tell us there's a need, then we'll decide 
		whether he is right, and set conditions on reform</td>
	</tr>
	<tr>
		<td>&quot;for the record&quot;</td>
		<td>only if it meets our conditions</td>
	</tr>
	<tr>
		<td>&quot;gradual and orderly progress&quot;</td>
		<td>make the minimum amount of progress that the people will tolerate</td>
	</tr>
	<tr>
		<td>&quot;balanced participation&quot; (you won't find that in the Basic Law)</td>
		<td>we've got more leverage over the tycoons than we have over the 
		people</td>
	</tr>
</table>
<p>Perhaps what Beijing fears most is not democracy in Hong Kong, but a <i>
successful</i> democracy in Hong Kong, because it would increase public pressure 
in the mainland for democratic reforms of its own and an end to one-party 
authoritarian rule with all the corruption, economic mismanagement and 
oppression of free speech that goes with it. At the same time, however, they 
must recognise that if hundreds of thousands of Hong Kongers repeatedly take to 
the streets in a peaceful demand for the right to elect their own leaders, then 
the path of least resistance will be to give them what they want.</p>
<h3>Not Progressive</h3>
<p>Attempts by the HK Government to portray the latest electoral reform 
proposals as <i>&quot;progressive&quot;</i> or in the
<a target="_blank" href="http://www.info.gov.hk/gia/general/200511/14/P200511140154.htm">
words of Henry Tang</a> <i>&quot;actually more progressive than the 1995 electoral 
arrangements&quot;</i> ignore the fact that the FCs had far more representative 
electorates in 1995, when the Patten administration tabled legislation which 
allowed anyone who worked in a sector to register and vote in it.</p>
<p>That was the reason that Beijing derailed the so-called &quot;through train&quot; of 
the 1995 Legislative Council, replacing it on the 1-Jul-97 handover day with a 
hand-picked council and then amending the election laws to return to the old 
corporate voting system from 1998 onwards.</p>
<h3>Case study: the Transport Constituency</h3>
<p>To demonstrate just how crooked the system is, we took a look at the 
Transport Constituency, where the 191 eligible electors are helpfully listed on page 4 of
<a target="_blank" href="http://www.info.gov.hk/eac/pdf/legco/2004/en/2004guideline/appendix_b.pdf">
this document</a>, and cross-matched it with our database, annual reports and 
other sources to tell you who pulls the strings on these electors, that is, 
their owners. We also look at the extraordinary proliferation of associations, 
many of which must have overlapping memberships and each of which gets one vote.</p>
<p>Of the 191 eligible electors, only 182 of them actually appeared in the
<a target="_blank" href="http://www.legco.gov.hk/yr03-04/english/panels/ca/papers/ca0621cb2-2820-1e.pdf">
2004 Provisional Register</a> for the Legislative Council elections. However, we 
can't tell you who did or didn't participate, because the electoral register is 
not a published document. It is available for public inspection, but you will 
break the law if you try to use it <i>&quot;for a purpose other than a purpose 
related to an election&quot;</i>. You can't take copies, and it is a grey area, 
untested in court, as to whether research on a specific election or on electoral 
systems in general is a <i>&quot;purpose related to an election&quot;</i>. Just to look at 
the register, you have to sign a declaration like
<a target="_blank" href="../codocs/InspectionDeclaration2.pdf">this one</a>. 
This is an example of the secrecy that surrounds the debate on electoral reform.</p>
<p>Apart from their legislator, the electors of the Transport constituency also 
elect 12 of the 800-member Election Committee.</p>
<h3><em style="font-style: normal">Stacking the vote</em></h3>
<p><em style="font-style: normal">The Government's system of allocating 1 vote 
to each association or company in an industry naturally incentivises the 
creation or registration of new associations or companies in a sector, even if 
it is the same people behind them. </em>The number of registered electors in the 
Transport constituency grew from 137 in 1998 to 152 in 2000 and 182 in 2004, and 
it cannot be said that the number of people involved in the transport sector 
grew that much in the same period. Whether an association or company is admitted 
to the list is initially determined by the Government tabling an amendment bill 
to the Legislative Council. There is no relationship between the number of 
employees, turnover, net assets or any other business statistic and the number 
of votes a company or association has.</p>
<p>We found that of the 191 eligible Transport electors, 36 are taxi-related 
associations, 19 are minibus associations and 10 are driving instructor 
associations. These three lobbies alone amount to 65, or over one third, of the 
electorate. Bear that in mind next time you hear their legislator whinging about 
diesel duty being too high, when it is
<a target="_blank" href="http://www.customs.gov.hk/eng/major_dutiable_freeport_e.html#hyd">
far lower</a> than the duty on unleaded petrol which private motorists pay, and 
when LPG is exempt from duty and franchised buses are exempt from diesel duty 
anyway. And don't forget the $1.4bn in taxpayer grants handed out to get the 
taxi and minibus owners to buy LPG vehicles in the first place. Yes, in Hong 
Kong, we don't <i>charge</i> the transport trade for air pollution, we <i>pay</i> 
them to reduce it.</p>
<p><em style="font-style: normal">The names of some trade associations suggest 
overlapping membership through their geographic coverage. While some of the 
apparently overlapping trade associations may exist separately for historical 
reasons, others may have come into being, or stayed separate, simply to claim another vote for their 
sector. Similarly, companies under common ownership may continue to exist 
separately rather then undergo a full merger, and thereby avoid 
losing voting rights in the constituency.</em></p>
<p>Our research also identified tycoons with heavy voting interests, including 1 
family with stakes in 11 electors. We also found 3 electors which are controlled 
by the HK Government, and several which are controlled by overseas Governments, 
including Dubai, Singapore and of course mainland China.</p>
<p>It's worth reminding our readers that we only looked at one sector. If we had 
extended our coverage to sectors such as the Real Estate, Hotels, Hong Kong 
General Chamber of Commerce, Chinese General Chamber of Commerce and others, 
then we would have found many of the same tycoons controlling corporate electors 
in those sectors too.</p>
<h3>Elector Groups</h3>
<h4>HK Government</h4>
<p>Yes, the HK Government actually has 3 votes in this sector - which sullies 
the separation of the Executive and Legislative branches of our government.</p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>Govt</td>
		<td>Airport Authority of Hong Kong</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>Govt</td>
		<td>Kowloon-Canton Railway Corporation</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>Govt</td>
		<td>MTR Corporation Ltd</td>
		<td>&gt;76.46%</td>
	</tr>
</table>
<p><i>Note: the Government refuses to disclose its aggregate holdings in the 
MTRC, claiming <a target="_blank" href="abovethelaw.asp">immunity</a> from the 
disclosure provisions of the Securities and Futures Ordinance.</i></p>

<h4><em style="font-style: normal">The Kwok brothers</em></h4>
<p><em style="font-style: normal">Walter, Thomas and Raymond Kwok control Sun Hung Kai Properties Ltd 
(<b>SHKP</b>, 0016) which controls 33% of 
The Kowloon Motor Bus Holdings Ltd (<b>KMB</b>, 0062). Combined, they have 
stakes in 11 electors:</em></p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>SHKP</td>
		<td>Wilson Parking (Hong Kong) Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>KMB</td>
		<td>The Kowloon Motor Bus (1933) Co Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>KMB</td>
		<td>Long Win Bus Co Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>SHKP</td>
		<td>Route 3 (CPS) Co Ltd</td>
		<td>70%</td>
	</tr>
	<tr>
		<td>SHKP</td>
		<td>Tsing Ma Management Ltd</td>
		<td>66.7%</td>
	</tr>
	<tr>
		<td>KMB</td>
		<td>Park Island Transport Co Ltd</td>
		<td>65%</td>
	</tr>
	<tr>
		<td>SHKP</td>
		<td>China Tollways Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>SHKP</td>
		<td>Autotoll Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>SHKP</td>
		<td>Hoi Kong Container Services Co Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>SHKP</td>
		<td>River Trade Terminal Co Ltd</td>
		<td>43%</td>
	</tr>
	<tr>
		<td>SHKP</td>
		<td>Hong Kong School of Motoring Ltd</td>
		<td>30%</td>
	</tr>
</table>
<h4>Cheng Yu Tung</h4>
<p>NWS Transport Services Ltd (<b>NWSTS</b>) is 
50% owned by NWS Holdings Ltd (<b>NWS</b>, 0659) and 50% by privately-held Chow Tai Fook Enterprises Ltd. Both are 
ultimately controlled by Cheng Yu Tung. NWSTS owns 29.98% of Kwoon Chung Bus 
Holdings Ltd (<b>KCB</b>, 0306). In the case of one &quot;New World&quot; elector, we were 
unable to determine whether it is part of the group, and this is indicated by a 
question mark below.</p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>NWSTS</td>
		<td>Citybus Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>NWSTS</td>
		<td>New World First Bus Services Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>NWSTS</td>
		<td>New World First Ferry Services Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>NWSTS</td>
		<td>New World First Ferry Services (Macau) Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>?</td>
		<td>New World Parking Management Ltd</td>
		<td>?</td>
	</tr>
	<tr>
		<td>NWSH</td>
		<td>Tate's Cairn Tunnel Co Ltd</td>
		<td>29.5%</td>
	</tr>
	<tr>
		<td>KCB</td>
		<td>New Lantao Bus Co, (1973) Ltd</td>
		<td>99.99%</td>
	</tr>
</table>
<h4>Li Ka Shing</h4>
<p>Mr Li controls Cheung Kong (Holdings) Ltd (0001) which controls Hutchison 
Whampoa Ltd (<b>HWL</b>, 0013).</p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>HWL</td>
		<td>Mid-Stream Holdings (HK) Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>HWL</td>
		<td>Hongkong International Terminals Ltd (<b>HIT</b>)</td>
		<td>87%</td>
	</tr>
	<tr>
		<td>HWL</td>
		<td>The Hong Kong Salvage &amp; Towage Co Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>HWL</td>
		<td>Hong Kong United Dockyards Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>HIT</td>
		<td>COSCO-HIT Terminals (Hong Kong) Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>HWL</td>
		<td>River Trade Terminal Co Ltd</td>
		<td>43%</td>
	</tr>
	<tr>
		<td>HWL</td>
		<td>Hong Kong Air Cargo Terminals Ltd</td>
		<td>12.5%</td>
	</tr>
</table>
<h4>Peter Woo Kwong Ching</h4>
<p>Mr Woo's family trusts control Wheelock and Co Ltd (0020) which controls 
The Wharf (Holdings) Ltd (<b>Wharf</b>, 0004).</p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>Wharf</td>
		<td>The &quot;Star&quot; Ferry Co., Ltd.</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>Wharf</td>
		<td>Hong Kong Tramways, Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>Wharf</td>
		<td>Metropark Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>Wharf</td>
		<td>Modern Terminals Ltd</td>
		<td>55%</td>
	</tr>
	<tr>
		<td>Wharf</td>
		<td>Hong Kong Air Cargo Terminals Ltd</td>
		<td>12.5%</td>
	</tr>
</table>

<h4>The Swire Family</h4>
<p>Family trusts control unlisted John Swire &amp; Sons Ltd which controls 67% of 
the voting rights in Swire Pacific Ltd (<b>SP</b>, 0019,0087), which owns 66.7% of Swire Aviation Ltd (<b>SA</b>). 
The other 33.3% is held by CITIC Pacific.</p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>SP</td>
		<td>Hong Kong Salvage &amp; Towage Co Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>SP</td>
		<td>Hong Kong United Dockyards Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>SA</td>
		<td>Hong Kong Air Cargo Terminals Ltd</td>
		<td>30%</td>
	</tr>
	<tr>
		<td>SP</td>
		<td>Modern Terminals Ltd</td>
		<td>17.63%</td>
	</tr>
</table>
<h4>CITIC Pacific</h4>
<p>CITIC Pacific Ltd (<b>CP</b>) owns 70% of Adwood Co Ltd (<b>Adwood</b>). The other 30% is 
owned by Kerry Properties Ltd. CP also owns 50% of Hong Kong Resort Co Ltd (<b>HKRC</b>). 
The other half is owned by HKR International Ltd (0480).</p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>CP</td>
		<td>New Hong Kong Tunnel Co Ltd</td>
		<td>70.8%</td>
	</tr>
	<tr>
		<td>Adwood</td>
		<td>Hong Kong Tunnels and Highways Management Co Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>Adwood</td>
		<td>Western Harbour Tunnel Co Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>HKRC</td>
		<td>Discovery Bay Road Tunnel Co Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>HKRC</td>
		<td>Discovery Bay Transportation Services Ltd</td>
		<td>100%</td>
	</tr>
</table>
<h4>Stanley Ho Hung Sun</h4>
<p>Shun Tak Holdings Ltd (0242) and former gambling monopoly Sociedade de Turismo e Diversoes de Macau SARL (STDM), 
both controlled by Stanley Ho, own 60% and 40% respectively of Interdragon 
Ltd, which owns 71% of Shun Tak-China Travel Shipping Investments Ltd (STCTS). 
The other 29% is owned by China Travel International Investment Hong Kong Ltd 
(0308).</p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>STCTS</td>
		<td>Far East Hydrofoil Co, Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>STCTS</td>
		<td>Shun Tak-China Travel Ship Management Ltd</td>
		<td>100%</td>
	</tr>
	<tr>
		<td>Stanley Ho</td>
		<td>Hong Kong Express Airways Ltd (fka Helicopters Hong Kong Ltd)</td>
		<td>?</td>
	</tr>
	<tr>
		<td>STCTS</td>
		<td>Turbojet Ferry Services (Guangzhou) Ltd</td>
		<td>?</td>
	</tr>
</table>
<h4>Cheung Chung Kiu</h4>
<p>Mr Cheung controls 38% of Yugang International Ltd (0613) which 
controls 34% of Y.T. Realty Group Ltd (0075) which controls 29.9% of The 
Cross-Harbour Holdings Ltd (<b>CHH</b>, 0032). CHH owns 70% of The Autopass Co 
Ltd (<b>Autopass</b>)</p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>CHH</td>
		<td>Hong Kong School of Motoring Ltd</td>
		<td>70%</td>
	</tr>
	<tr>
		<td>Autopass</td>
		<td>Autotoll Ltd</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>CHH</td>
		<td>Western Harbour Tunnel Co Ltd</td>
		<td>37%</td>
	</tr>
	<tr>
		<td>CHH</td>
		<td>Hong Kong Tunnels and Highways Management Ltd</td>
		<td>37%</td>
	</tr>
</table>
<h4>Michael Kadoorie</h4>
<p>The Kadoorie family controls The Hongkong and Shanghai Hotels, Ltd (<b>HKSH</b>, 
0045).</p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>HKSH</td>
		<td>Peak Tramways Co, Ltd</td>
		<td>100%</td>
	</tr>
</table>
<h4>Lee Shau Kee</h4>
<p>Mr Lee controls Henderson Land Development Ltd, which through subsidiary 
Henderson Investment Ltd controls 31.33% of Hong Kong Ferry (Holdings) Co Ltd (<b>HKF</b>, 
0050).</p>
<table class="txtable center">
	<tr>
		<td><i>Shareholder</i></td>
		<td><i>Elector</i></td>
		<td><i>Stake</i></td>
	</tr>
	<tr>
		<td>HKF</td>
		<td>The Hongkong and Yaumati Ferry Co Ltd</td>
		<td>100%</td>
	</tr>
</table>
<h3><em style="font-style: normal">Foreign governments have votes too</em></h3>
<p><em style="font-style: normal">Corporate voting also opens the door to 
electors who are controlled by overseas companies and Governments. For 
example....</em></p>
<p><em style="font-style: normal">CSX World Terminals Hong Kong Ltd, an elector, 
is 66.66% owned by <a target="_blank" href="http://www.dpiterminals.com">Dubai Ports World</a>, the Dubai government-owned port operator, 
and 33.34% owned by <a href="http://www.internationalpsa.com/">PSA International 
Pte Ltd</a>, the Singapore Government-owned port operator.</em></p>
<p><em style="font-style: normal">Asia Airfreight Terminal Co Ltd (<b>AAT</b>), 
an elector, is 49% owned by <a target="_blank" href="http://www.sats.com.sg">
Singapore Airport Terminal Services Ltd</a>, which in turn is a subsidiary of
<a target="_blank" href="http://www.singaporeair.com/">Singapore Airlines</a>, 
which is controlled by the Singapore Government. Another 10% of AAT is owned by
<a target="_blank" href="http://www.keppeltt.com.sg">Keppel Telecommunications &amp; 
Transportation Ltd</a>, a subsidiary of
<a target="_blank" href="http://www.kepcorp.com">Keppel Corp Ltd</a> which in 
turn is controlled by the Singapore Government. So altogether, the Singapore 
Government has an interest in 59% of AAT.</em></p>
<p><em style="font-style: normal">China Merchants Shipping &amp; Enterprises Co Ltd, 
an elector, is a subsidiary of
<a target="_blank" href="http://www.chinamerchants-logistics.com/">China 
Merchants Logistics Group Co Ltd</a>, owned by the mainland Government. The same 
group also controls China Merchants Holdings (International) Co Ltd (0144), 
which has a 20% stake in AAT.</em></p>
<p><em style="font-style: normal">Chu Kong Shipping Enterprises (Holdings) Co 
Ltd (<b>CKSE</b>), an elector, is the controlling shareholder of HK-listed Chu 
Kong Shipping Development Co Ltd (0560). CKSE is in turn owned by the Guangdong 
provincial government.</em></p>
<h3><em style="font-style: normal">Taxis, minibuses and driving instructors</em></h3>
<p><em style="font-style: normal">There is a gaggle of electors who are 
associations of taxi owners, drivers, operators, servicers and so on. The 
membership of these associations is unlikely to be mutually exclusive - i.e. 
some people, or companies, are probably members of multiple associations. It is 
beyond the scope of this article to investigate that.</em></p>
<p><em style="font-style: normal">Here's a list of 36 Taxi voters:</em></p>
<table class="txtable center">
	<tr>
		<td>Association of N.T. Radio Taxicabs Ltd (The)</td>
	</tr>
	<tr>
		<td>Chuen Lee Radio Taxis Association Ltd</td>
	</tr>
	<tr>
		<td>Fraternity Association of N.T. Taxi Merchants (The)</td>
	</tr>
	<tr>
		<td>Fraternity Taxi Owners Association</td>
	</tr>
	<tr>
		<td>Happy Taxi Operator's Association Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong &amp; Kowloon Radio Car Owners Association Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong and Kowloon Rich Radio Car Service Centre Association Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong &amp; Kowloon Taxi Companies Association Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong Kowloon Taxi &amp; Lorry Owners Association Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong Tele-Call Taxi Association</td>
	</tr>
	<tr>
		<td>Kowloon Taxi Owners Association Ltd (The)</td>
	</tr>
	<tr>
		<td>Lantau Taxi Association</td>
	</tr>
	<tr>
		<td>N.T. Taxi Merchants Association Ltd</td>
	</tr>
	<tr>
		<td>N.T. Taxi Owners &amp; Drivers Fraternal Association</td>
	</tr>
	<tr>
		<td>N.T. Taxi Radio Service General Association</td>
	</tr>
	<tr>
		<td>N.W. Area Taxi Drivers &amp; Operators Association</td>
	</tr>
	<tr>
		<td>North District Taxi Merchants Association</td>
	</tr>
	<tr>
		<td>Quadripartite Taxi Service Association Ltd</td>
	</tr>
	<tr>
		<td>Rambo Taxi Owners Association Ltd</td>
	</tr>
	<tr>
		<td>Sai Kung Taxi Operators Association Ltd</td>
	</tr>
	<tr>
		<td>Sun Hing Taxi Radio Association</td>
	</tr>
	<tr>
		<td>Tang's Taxi Companies Association Ltd</td>
	</tr>
	<tr>
		<td>Taxi Associations &amp; Federation</td>
	</tr>
	<tr>
		<td>Taxi Dealers &amp; Owners Association Ltd</td>
	</tr>
	<tr>
		<td>Taxi Drivers &amp; Operators Association Ltd</td>
	</tr>
	<tr>
		<td>The Taxi Operators Association Ltd</td>
	</tr>
	<tr>
		<td>Taxicom Vehicle Owners Association Ltd</td>
	</tr>
	<tr>
		<td>United Friendship Taxi Owners &amp; Drivers Association Ltd</td>
	</tr>
	<tr>
		<td>Urban Taxi Drivers Association Joint Committee Co Ltd</td>
	</tr>
	<tr>
		<td>Wai Fat Taxi Owners Association Ltd</td>
	</tr>
	<tr>
		<td>Wai Yik H.K. &amp; Kowloon and New Territories Taxi Owners Association</td>
	</tr>
	<tr>
		<td>Wing Lee Radio Car Traders Association Ltd</td>
	</tr>
	<tr>
		<td>Wing Tai Car Owners &amp; Drivers Association Ltd</td>
	</tr>
	<tr>
		<td>Yik Sun Radiocabs Operators Association Ltd</td>
	</tr>
	<tr>
		<td>Rights of Taxi Owners and Drivers Association Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong Taxi and Public Light Bus Association Ltd (The)</td>
	</tr>
</table>
<p><em style="font-style: normal">The last of the voters named above is a joint 
association between taxi and public minibus people. Here is the list of 19 minibus 
voters:</em></p>
<table class="txtable center">
	<tr>
		<td>G.M.B. Maxicab Operators General Association Ltd</td>
	</tr>
	<tr>
		<td>Hon Wah Public Light Bus Association Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong, Kowloon &amp; NT Public &amp; Maxicab Light Bus Merchants' United 
		Association</td>
	</tr>
	<tr>
		<td>Hong Kong Public &amp; Maxicab Light Bus United Associations</td>
	</tr>
	<tr>
		<td>Hong Kong Scheduled (GMB) Licensee Association</td>
	</tr>
	<tr>
		<td>Kowloon Fung Wong Public Light Bus Merchants &amp; Workers' Association 
		Ltd</td>
	</tr>
	<tr>
		<td>Kowloon PLB Chiu Chow Traders &amp; Workers Friendly Association 
		(The)</td>
	</tr>
	<tr>
		<td>Lam Tin Wai Hoi Public Light Bus Merchants Association Ltd</td>
	</tr>
	<tr>
		<td>Lei Yue Mun Ko Chiu Road Public Light Bus Merchants Association Ltd</td>
	</tr>
	<tr>
		<td>Lung Cheung Public Light Bus Welfare Advancement Association Ltd</td>
	</tr>
	<tr>
		<td>N.T. PLB Owners Association</td>
	</tr>
	<tr>
		<td>N.T. San Tin PLB(17) Owners Association</td>
	</tr>
	<tr>
		<td>Public Light Bus General Association</td>
	</tr>
	<tr>
		<td>Sai Kung Public Light Bus Drivers and Owners Association</td>
	</tr>
	<tr>
		<td>Tsuen Wan PLB Commercial Association Ltd</td>
	</tr>
	<tr>
		<td>Tuen Mun PLB Association</td>
	</tr>
	<tr>
		<td>United Association of Public Lightbus Hong Kong</td>
	</tr>
	<tr>
		<td>Yuen Long Tai Po PLB Merchants Association Ltd</td>
	</tr>
	<tr>
		<td>HK Public-Light Bus Owner &amp; Driver Association</td>
	</tr>
</table>
<p>Driving instructors also feature heavily, with 10 electors:</p>
<table class="txtable center">
	<tr>
		<td>Articulated &amp; Commercial Vehicle's Instructors Union</td>
	</tr>
	<tr>
		<td>Driving Instructors Merchant Association Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong &amp; Kowloon Goods Vehicle Omnibuses and Minibuses 
		Instructors' Association Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong Commercial Vehicle Driving Instructors Association</td>
	</tr>
	<tr>
		<td>Hong Kong Driving Instruction Club Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong Motor Car Driving Instructors Association Ltd</td>
	</tr>
	<tr>
		<td>Hong Kong Society of Articulated Vehicle Driving Instructors Ltd</td>
	</tr>
	<tr>
		<td>Kowoon Motor Driving Instructors' Association Ltd</td>
	</tr>
	<tr>
		<td>Public and Private Light Buses Driving Instructors' Society</td>
	</tr>
	<tr>
		<td>Public and Private Commercial Driving Instructors' Society</td>
	</tr>
</table>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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

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

<script type="text/javascript">document.title="Don't Stack the Boto Vote";</script>

	<div class="summary">The Boto saga drags on, and it now emerges that, in the knowledge that the Buy-out plan has no support from independent investors, Management is trying to stack the vote by appealing again to a key committee of the Stock Exchange to allow insiders to vote. We urge the Listing (Review) Committee not to waver, and to allow the proposal, if it proceeds, to be put to truly independent shareholders.</div>

<h2 class="center">Don't Stack the Boto Vote<br>
<span class="headlinedate">9 May 2002</span></h2>
<p>In the latest <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020508/LTN20020508082.pdf" target="_blank">announcement</a>
by Boto International Holdings Ltd (<b>Boto</b>) released today, the despatch of
a shareholders' circular regarding the Buy-out proposal was again delayed until
&quot;on or before&quot; 10-Jun-02. This follows an earlier <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020424/LTN20020424046.doc" target="_blank">announcement</a>
dated 23-Apr-02 which delayed the circular up to today. </p>

<p>No mention was made in the earlier announcement that the
Management had appealed to the external <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2001/0105031news.htm" target="_blank">Listing
Committee</a> against a key decision of the Listing Division (the full-time
staff in the Stock Exchange of Hong Kong Ltd, <b>SEHK</b>) , but it now turns
out that they did. The committee normally meets each Thursday afternoon, and
according to today's announcement: </p>

<blockquote>
  <p>&quot;The Listing Committee of the Stock Exchange decided at
  the meeting on 18th April, 2002 that, inter alia, the existing and proposed
  executive Directors and certain Shareholders should abstain from voting on the
  [Buy-out]&quot;</p>
</blockquote>

<p>The <i>&quot;inter alia&quot;</i> is legalese for &quot;among
other things&quot; - and since the decisions of the Listing Committee are not
published, we don't know what else they decided or who the <i>&quot;certain
Shareholders&quot;</i> are. As we explained in detail in our <a href="botoupdate.asp">previous
article</a>, the executive directors and senior management, amongst others, have
several material conflicts of interest and should not be allowed to vote. We
won't repeat all the arguments and share figures here - see our last article. </p>

<p>Now we have today's announcement saying that the
Management is appealing again, to the Listing (Review) Committee (<b>LRC</b>),
which is the highest level for a case of this type. Under Listing Rule <a href="http://www.hkex.com.hk/rulereg/listrules/CH2b.doc" target="_blank">2B.11</a>,
the LRC comprises at least 5 members of the Listing Committee, none of whom were
present at the first hearing.</p>

<h3>What does this appeal tell you?</h3>

<p>What the repeated appeal clearly shows is that Management knows
there is no public support for the Buy-out, which independent shareholders
recognise dramatically undervalues the two core businesses. The only way that Mr
Kao and Carlyle can have any hope of winning is by forcing it through with
management votes, which is why they have been appealing to the SEHK, Listing
Committee and LRC to allow these votes in. </p>

<p>If Management had any confidence in the supposed
merits of the deal, then they would drop the appeals and allow the truly
independent public shareholders to determine the outcome of the vote.</p>

<h3>Back-door privatisation avoids Takeover Code</h3>

<p>All along, this deal has been in essence a back-door
privatisation of the business of Boto, by buying almost all the assets, which
generated 100% of last year's revenue, rather than going through the front door
and making an offer to buy the company itself. So let's look at the principles
that the LRC should be following, if they want to discourage this sort of manoeuvring. </p>

<h4>Concert parties cannot vote </h4>

<p>If Mr Kao and Carlyle had gone through the front door, with a
privatisation proposal in compliance with the
<a target="_blank" href="http://eapp01.sfc.hk/apps/cc/RegulatoryHandbook.nsf/lkupMainAllDoc/H343/$FILE/Takeovers%20Code%2027.02.04%20(Eng).pdf">Code
on Takeovers and Mergers</a> (<b>Code</b>), then under Rule
2.10 of the Code, it would have required 75% approval in general meeting and
could have been blocked by opposition from <b>10%</b> of the
&quot;disinterested&quot; minority shares, not the <b>50%</b> needed to block
the Buy-out. Of course, independent investors would not have approved a
privatisation at a discount to market price, which is what the Buy-out price is. </p>

<p>In addition, under Note
6 to Rule 2 of the Code, <i>&quot;disinterested shares&quot;</i> means
shares other than those which are owned by the offeror or persons <i>&quot;acting
in concert&quot;</i> with it, and under the Code definitions,
all directors are presumed to be acting in concert with each other. That means
that the directors of Boto would be presumed to be acting in concert with Mr Kao
and would be prohibited from voting, along with their close relatives, related
trusts, and companies they control. </p>

<p>In summary, by using the back door, the hurdle for minorities to
stop the privatisation of Boto has been raised from 10% to as much as 50% of
minority shares, and now the Management are trying to stack the vote further by
allowing parties with clear conflicts of interest to vote. To allow this would
make a mockery of minority shareholder protection. </p>

<h4>1 vote per share </h4>

<p>The Code also requires in Rule
2.9 that votes be taken on a 1-vote-per-share poll rather than a
1-vote-per-person show of hands, and that the voting figures and results be
announced. The Listing Rules impose no such requirement, but we have taken the
necessary steps to ensure that a poll will be demanded if Boto calls a meeting,
and we hope the Stock Exchange will meet the same standards as the Code and
ensure that: </p>

<ol>
  <li>the poll is conducted fairly by
    requiring an independent scrutineer such as the auditor or registrar to
    tally and certify the results;</li>
  <li>those persons who are required to
    abstain but hold their shares through nominees (including through HKSCC
    Nominees) appoint a proxy who will hold their votes to prove that those
    shares were not secretly voted; and</li>
  <li>the results are announced,
    including the total numbers of shares present and voted in favour, against
    and abstaining. Even though Bye-law 68 of Boto specifically does not require
    this, there is nothing to stop the SEHK requiring it.</li>
</ol>
<h4>Controller pays costs of failed privatisation</h4>

<p>Each appeal to the Listing Committee and LRC
involves a fee to the SEHK (under Rule <a href="http://www.hkex.com.hk/rulereg/listrules/CH2b.doc" target="_blank">2B.14</a>)
of HK$60,000 - so the two appeals have already cost $120,000 plus any legal and
adviser's fees. These appeals are not being made in the interests of the company
but in the interests of management who want to push the deal through. </p>

<p>In addition to the costs of the appeals, there will be fees for
the adviser to Boto, the independent financial adviser, lawyers, accountants and
printers, which could run into millions. </p>

<p>Rule
2.3 of the Code requires that when a privatisation scheme is not approved,
the costs should be borne by the person seeking to privatise the company and not
by the company itself. The reason for this is that independent shareholders
should not have to pay, through their company, for a proposal from a controlling
shareholder. So if the Buy-out is voted down, we call on Mr Kao to meet the
costs. </p>

<h3>The World Watches</h3>

<p>This deal has put the spotlight on minority shareholder
protection in Hong Kong. From <a href="http://www.latribune.fr/Archives/ArchivesProxy.nsf/SearchSimple/5F9C81D4D4F7D05EC1256BA800003495" target="_blank">La
Tribune</a> in Paris, to the <a href="http://globalarchive.ft.com/globalarchive/article.html?id=020506001189&amp;query=boto" target="_blank">Financial
Times</a> in London, media and investors are watching. The first green shoots of
shareholder activism are sprouting, and regulators can either water them or cut
them down by their treatment. </p>

<h3>The Deal Lapses on 31st May</h3>

<p>Today's announcement made clear that the shareholder circular
will not be despatched until after the LRC has made its ruling, which cannot be
earlier than the hearing on 23-May-02. Since it requires 14 clear days' notice
to convene a Special General Meeting, there is now no way that the meeting can
be convened before 31-May-02, when the agreement between Boto and the
Carlyle-Kao Buy-out vehicle will automatically lapse. </p>

<p>The only way for the Buy-out to be completed after that is if
both parties enter into a supplemental agreement for an extension of the
deadline beyond 31-May-02. As the announcement did not mention any such
extension, we presume there is none. </p>

<p>Carlyle and Mr Kao would be wise to accept the original ruling
of the Listing Committee, to realise that the Buy-out has no hope of being
approved by independent shareholders, and to either seriously increase their
offer or let it lapse. </p>

<p>As we've said before, this is a great business, with 7 years of
uninterrupted growth in sales and profits and a leisure furniture line just
entering its rapid growth phase. Management should turn its thoughts to making a
success out of the Hong Kong listing, as several of their industrial peers
have&nbsp; recently shown is entirely possible. In all the darkness of Hong
Kong's market, the stars shine brightly. With a supportive base of
value-investors who are opposed to privatisation, there is every hope of
achieving this. As they say about pets, a listing is not just for Christmas. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
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
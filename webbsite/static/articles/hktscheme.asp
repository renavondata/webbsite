
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

<script type="text/javascript">document.title="Schemes & Votes";</script>

	<div class="summary">The proposed takeover of C&W HKT by PCCW is being done by Scheme of Arrangement rather than General Offer. While this tactic accelerates the path to 100% ownership (and access to HKT's cash) the legal framework leaves the deal open to a decision by minority shareholders in the final vote. If you are an HKT shareholder, find out how to make your vote count!</div>

<h2 class="center">Schemes & Votes<br>
<span class="headlinedate">29 May 2000</span></h2>
<p>On 26-May-00 Pacific Century Cyberworks Ltd (<b>PCCW</b>) and
Cable &amp; Wireless HKT Ltd (<b>HKT</b>) published a document for a Scheme of
Arrangement (<b>SoA</b>) in which HKT is proposed to be a wholly-owned
subsidiary of PCCW. </p>

<p>You may have read in the press that all that matters is the UK
shareholders meeting of Cable &amp; Wireless plc, and that after that the vote
in HKT will be a done deal. Not so fast. In this article we'll explain how the
SoA, while offering a fast track to the balance sheet of the target, carries a
risk of intervention by minority shareholders. </p>

<p>In Hong Kong, there are basically two ways of taking over a
listed company. One is by &quot;General Offer&quot; and the other is the SoA. To
see why PCCW has chosen the SoA route, we'll have to explain the General Offer
route first. So bear with us, this will be worth the read. </p>

<h3>General Offer</h3>

<p>In a General Offer, the same offer is made to each shareholder
of the target, who may choose whether to accept the offer in respect of their
shares. In the case of companies incorporated in Hong Kong (including HKT),
where an offeror has acquired 90% of the shares under offer (i.e. other than
those that he already owned) then he may compulsorily acquire the rest. The
relevant law is in <a href="http://www.legislation.gov.hk/blis.nsf/D2769881999F47B3482564840019D2F9/BF255E18A6977829C8256480004327D5" target="_blank">Schedule
9</a> of the Companies Ordinance. Similar laws apply in Bermuda and the Cayman
Islands, the two jurisdictions in which most HK-listed companies are
incorporated. HKT is incorporated in HK. </p>

<p>The drawback of the General Offer route is that it may take some
time to reach the 90% threshold (the law allows up to 4 months), and then it
takes at least 2 months to acquire the minority interests, or longer if a
minority shareholder submits an objection to the Court within that time. As long
as there remain minority shareholders in a company, it is difficult or
impossible for the new parent to extract the cash or other assets from its
balance sheet, or use them as loan security, particularly if the minority
shareholders are still subject to the protections of the listing rules as
shareholders of a listed company. </p>

<p>For PCCW, this is an important distinction, since on 29-Feb-00
they arranged a US$12bn loan facility to finance the US$11.3bn cash element of
the takeover. Most of that must be repaid by 28-Feb-01 with not more than 30%
extendable for a further 2 years. </p>

<p>At 31-Mar-00 HKT had some US$2.75bn of cash in its balance
sheet, of which US$702m will be absorbed by the final dividend of HK$0.45 per
share. That leaves around US$2.05bn of cash which PCCW wants to help meet
repayments on its facility, subject to any changes since 31-Mar-00. Indeed, the
&quot;Facilities Agreement&quot; between PCCW and its bankers refers to the
&quot;<i>Target Cash</i>&quot; being the cash reserves of HKT, and that this
must be used in repayments within 90 days of the takeover. </p>

<p>PCCW has therefore chosen the second route of takeover known as
a &quot;Scheme of Arrangement&quot;. </p>

<h3>Scheme of Arrangement</h3>

<p>By contrast to a General Offer, a Scheme of Arrangement, once
approved, is binding on all shareholders, not just those who accept the offer.
No subsequent period is needed to compulsorily acquire minority interests, since
there are none. If the Scheme is not approved, then the deal does not happen.
It's an &quot;all or nothing&quot; situation. That allows the offeror to have
(upon completion) instant access to the balance sheet of the target. But there
is a risk in the voting requirements. </p>

<p>The principal condition of the HKT takeover is a &quot;Court
Meeting&quot; of&nbsp; HKT on 3-Jul-00 in which shareholders' approval will be
sought. Under <a href="http://www.legislation.gov.hk/blis.nsf/D2769881999F47B3482564840019D2F9/A1309ED1C81581F0C8256480004326BB" target="_blank">Section
166(2)</a> of the Companies Ordinance, the required approval is: </p>

<blockquote>

<p>&quot;a majority in number representing three-fourths in value
of the... members..., present and voting either in person or by proxy at the
meeting&quot;. </p>

</blockquote>

<p>Note that there are two parts to that test. A &quot;majority in
number&quot; and &quot;three-fourths in value&quot;. The second part, 75% of the
shares voted, largely depends on how the shareholders of Cable &amp; Wireless
plc (<b>C&amp;W</b>) vote in their general meeting on 13-Jun-00. </p>

<p>C&amp;W owns 54% of HKT but, under London Listing Rules, it
cannot vote its stake without the approval of its own shareholders (because this
is a mighty big transaction). That is why PCCW is spending the next two weeks on
a roadshow to try to convince the C&amp;W shareholders of the value of their
concept stock (such as it may be). If the C&amp;W shareholders approve the sale,
then with their 54% combined with the 13% held by China Telecom (the unlisted
mainland Telecom company) and the estimated 8% held by the HK Government since
their market intervention, there would be a total of 75% and it would be
impossible for the second part of the test to fail. </p>

<h3>Here's the Risk</h3>

<p>The first part of the test requires a &quot;majority in
number...of the <u>members</u>&quot;. If you own shares in HKT (or any HK-listed
company), you may well think you are a member. Think again. Is your name on the
share certificate? Do you even have one? A member is only someone whose name is
on the register of members, otherwise known as the shareholders' register. You
probably hold those shares through a bank or broker, or if you are a fund
manager, through a custodian. </p>

<p>In Hong Kong, stocks can only be traded and settled if they are
deposited in the monopoly clearing system run by <a href="http://www.hkclearing.com.hk/" target="_blank">Hong
Kong Securities Clearing Company</a> (<b>HKSCC</b>), part of the new <a href="http://www.hkex.com.hk/" target="_blank">Hong
Kong Exchanges and Clearing</a>. As a consequence, at the end of Feb-00, 53.67%
of all shares of the stocks admitted to HKSCC (by number) were in the system.
The vast majority of the rest represent normally un-traded shares held by
controlling shareholders such as C&amp;W who do not wish to pay custody fees on
their own stock. </p>

<p>Practically all brokers (497 at Feb-00) and custodians (63) are
&quot;participants&quot; in the clearing system. If you are a private investor,
you may open your own &quot;investor participant&quot; account with HKSCC to
avoid the risk of broker default. </p>

<p>HKSCC runs a &quot;book entry&quot; system in which it records
the interest of participants such as custodians and brokers. They in turn run
their own internal systems which record who they hold the stock for, and so on
up the ownership tree, often including multiple layers of custody. None of these
interests are recognised in law as shareholdings, and the only
&quot;member&quot; is the person on the share register. In this case, that is
HKSCC Nominees Ltd, which holds the stock as nominee of HKSCC. </p>

<p>When you want to vote your stock, you normally give instruction
to your bank, custodian or broker, and the instructions may be aggregated by
each participant and eventually wind up at HKSCC. These instructions are then
aggregated and HKSCC fills in a proxy form or appoints one or more corporate
representatives to vote shares in favour or against. If the vote takes place on
a show of hands (normally the case), then the numbers of shares don't even
count. HKSCC can only raise one hand each way, even if it represents a thousand
ultimate owners. The vote is determined by the number of hands in the air. This
is why connected transactions are so seldom voted down - your votes simply don't
register. </p>

<p>For most companies (including HKT) their articles of association
do now allow for HKSCC to appoint you as its corporate representative so that
you can attend and vote in your own right, but few people bother. </p>

<p>By contrast to the show of hands in most meetings, Schemes of
Arrangement take place on a &quot;poll&quot; where each share has one vote and
the votes are tallied. However, each member can only count once as a member,
even if they hold the shares on behalf of thousands of ultimate owners (as does
HKSCC Nominees). And there's the catch - look at the current membership of HKT
(we inspected the register today): </p>
  <table class="numtable center" style="font-size:10pt">
    <tr>
      <th>No. of<br>members</th>
      <th class="left">Member name</th>
      <th>Shareholding</th>
      <th>% of<br>shares</th>
    </tr>
    <tr>
      <td>1</td>
      <td class="left">Cable and Wireless (Far East) Limited</td>
      <td>6,569,199,784</td>
      <td>54.02%</td>
    </tr>
    <tr>
      <td>1</td>
      <td class="left">HKSCC Nominees Limited</td>
      <td>3,004,173,946</td>
      <td>24.70%</td>
    </tr>
    <tr>
      <td>1</td>
      <td class="left">HSBC Nominees (Hong Kong) Limited</td>
      <td>2,219,682,529</td>
      <td>18.25%</td>
    </tr>
    <tr>
      <td>Thousands</td>
      <td class="left">Rest of the World</td>
      <td>367,425,725</td>
      <td>3.02%</td>
    </tr>
    <tr>
      <td><b>Thousands + 3</b></td>
      <td class="left"><b>Total shares in issue</b></td>
      <td><b>12,184,334,894</b></td>
      <td><b>100.00%</b></td>
    </tr>
  </table>

<p>As you see, 3 members hold 97% of the shares. There are several
thousand members who hold the other 3% - we counted over 200 whose names begin
with &quot;A&quot; and then gave up - think how many Chans, Chens, Chengs and
Chows are on the list. Some members are dormant or untraceable and may not vote.
Others just prefer to keep the stock under the mattress, or hold for the very
long term and prefer not to pay custody fees. </p>

<p>Since a majority in number (of members who vote) is required, it
is these several thousand who will determine whether the takeover is approved,
not the 3 members who own the 97%. In modern times this may be considered as
unfair, but that is the way the law works and was originally designed to prevent
large shareholders bullying the small ones. Offerors have the alternative of
making a General Offer and thereby avoiding this hurdle, but more patience is
required to get their hands on the cash of the target.&nbsp; </p>

<h3>The Risk of Intervention</h3>

<p>If an outsider wanted to stop this Scheme, the best chance that
person would have is to buy some shares (a few hundred or thousand would do),
withdraw them from CCASS and then split them into small holdings (as little as
one share each) held by separate individuals or BVI shelf companies. Each new
member would need to get onto the register before it closes on Friday 23-Jun-00.
Companies would then need to appoint proxies or corporate representatives to
vote at the meeting. One person could represent more than one corporate member
in the poll or act as proxy for multiple individuals and sign for each of them. </p>

<p>Without meeting the legal requirement for a majority in number
of members voting in favour, the Scheme would fail. </p>

<p>If PCCW/ HKT or their advisers saw such a move coming, then that
may provoke a counter-move in which a friendly shareholder would flood the
register with greater numbers of supporting members using the same technique.
For either side, it involves some expense to buy a lot of shelf companies, and
hundreds of people are not easy to find (except, perhaps, at the trade unions of
HKT, still smarting from their effective pay cut last year). </p>

<p>Of course, we are not advocating this strategy, but we are
simply pointing out the risk of it to anyone who thinks the HKT vote is a
foregone conclusion. </p>

<h3>Your Vote CAN Count!</h3>

<p>If you are a public shareholder of HKT, whichever way you want
to vote, up to now you may have thought that your vote didn't matter when the 3
major shareholders have 75% between them. </p>

<p>Now we have shown you that this is not the case - there are 3 of
them and thousands of you, and a majority in number is required. To make your
vote <i>really</i> count, you need to become a member (if you don't already hold
share certificates in your own name). The only other way is to become a
corporate representative of HKSCC and attend the meeting yourself. </p>

<p>So withdraw 1 share or 1 board lot from your broker, bank or
custodian and make sure you get it registered in your name (at the registrar,
Central Registration Ltd) by 23-Jun-00. Then pick up a proxy form from the
registrar, cast your vote, mail it in, and make your vote count! </p>

<p>If you are in any doubt about how to do this, consult your
broker or other professional adviser. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=375">CABLE & WIRELESS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=368">PCCW-HKT Limited</a></li>
				
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

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

<script type="text/javascript">document.title="Out of Sight";</script>

	<div class="summary">Have you ever wondered why Cheung Kong (Holdings) owns 49.9% of Hutchison Whampoa and not a fraction more? Back in Feb-97, CKH stated its intention to increase its holding beyond 50% as soon as possible. <i>Webb-site.com</i> looks at the structuring regularly used by the pair, which puts their development projects off-balance sheet and outside the scope of certain rules on connected transactions. Out of sight, and out of mind - it is high time the Stock Exchange closed the loophole.</div>

<h2 class="center">Out of Sight<br>
<span class="headlinedate">29 May 2001</span></h2>
<p>Have you ever wondered why Cheung Kong (Holdings) Ltd (<b>CKH</b>)
owns 49.9% of Hutchison Whampoa Ltd (<b>Hutchison</b>), and not a fraction more? </p>

<p>Readers with long memories (or good archives) will recall that
in early 1997, near the height of the mainland infrastructure boom, the two
companies restructured their infrastructure holdings. Hutchison sold its 35%
stake in Hongkong Electric to Cheung Kong Infrastructure Holdings Ltd (<b>CKI</b>),
while CKH sold its 85% stake in CKI to Hutchison in exchange for new shares in Hutchison
and HK$5.6bn in cash. As a result, CKH's stake in Hutchison increased to 48.95%,
which represented a 5% increase in the preceding 12 months, the maximum then
allowed under the takeover code &quot;creeper&quot; limit without making a
general offer. The result is the structure you see today. </p>

<p>In the circular on that deal on 15-Feb-97, CKH Chairman Li
Ka-shing (<b>Mr Li</b>) wrote: </p>

<blockquote>
  <p>&quot;Under the Takeovers Code...the CKH Group could still
  increase its interest in Hutchison over a period of time. The CKH Group would
  be able to increase its shareholding percentage to over 50 per cent. by 1st
  May 1997.&quot; </p>

</blockquote>
<p><i>&quot;Would be able to&quot;?</i> A bit vague, you might
think, but in a clarification announcement dated the same day as the circular,
Mr Li wrote on behalf of the board: </p>

<blockquote>
  <p>&quot;The directors of CKH wish to state that, subject to
  regulatory requirements, <b>it is the intention of CKH to increase its
  shareholding in Hutchison to beyond 50 per cent. as soon as possible</b> after
  implementation of the Transactions and once it is free to do so under the
  creeper provisions of the Hong Kong Code on Takeovers and Mergers.&quot; (emphasis
  added). </p>

</blockquote>
<p>So why have they not fulfilled this intention, more than four
years later, having been free to do so since 1-May-97? We will give you some
possible reasons. But first, some necessary jargon. </p>

<h3>Terminology</h3>

<p>Under standard accounting rules, if your company owns at least
20% of another company, but not more than 50%, then you normally treat it as an
&quot;associated company&quot; or &quot;associate&quot; for short. Your votes
give you &quot;significant influence&quot; over the associate. A similar type of
company, where financial and operating policies are contractual with fellow
investors, is known as a
&quot;jointly controlled entity&quot;. </p>

<p>By comparison, if your company owns more than 50% of the other
company, then you normally have what is known as &quot;statutory control&quot;
because you have a simple majority of the votes. You therefore normally treat it
as a &quot;subsidiary company&quot; or just a &quot;subsidiary&quot;. The
difference is crucial in many respects. </p>

<h3>Related Party Transactions</h3>

<p>Under the Listing Rules of the Stock Exchange of Hong Kong Ltd,
there are special rules known as &quot;connected transaction rules&quot; which
govern the dealings of listed companies with their directors, substantial
shareholders and their related parties. The related parties include certain
relatives and companies in which the director or substantial shareholder has a
35% or more interest. All these persons are called &quot;connected persons&quot;
of the listed company. </p>

<p>Subject to certain exemptions, including
the <i>de minimus</i> exemption for small transactions, these rules require that
when such a deal occurs, it must be presented to independent shareholders for
approval. </p>

<p>However, those rules only apply to transactions by listed
companies and their subsidiaries, but not to transactions by their associated
companies.
Rule 14.23(1) begins: </p>

<blockquote>

<p>&quot;A connected transaction is...any transaction between a
listed issuer <b>or any of its subsidiaries</b> and a connected person...&quot;
(emphasis added) </p>

</blockquote>

<p>That means that anything which your associated companies or
jointly controlled entities do is
deemed to be outside your control, and hence not something that can be treated
as a connected transaction. You might well think it reasonable that when you
lack majority voting power, the associated company cannot actually be stopped
from doing anything so why ask your shareholders to vote on it? Unfortunately
life is never that simple, as we will show. </p>

<h3>Out of Sight</h3>

<p>Now consider this, what if you are a listed company and you, and
your listed controlling shareholder, both have large shareholdings in the
associate, up to 50% each?
Then you end up with something like this: </p>

<img class="center" alt="" src="../images/outofs1.gif">

<p>Now clearly, A-co and B-co between them control more
than 50% (in this case, 100%) of Out of Sight Ltd (<b>OSL</b>), so they can
determine all the actions of OSL. And since A-co has effective (but not
statutory) control over B-co, it effectively controls 100% of OSL. But
crucially, OSL is not a subsidiary of A-co or B-co. </p>

<p>A-co is a substantial shareholder of B-co and since OSL is more
than 35% owned by A-co, that means that both A-co and OSL are connected persons
of B-co. So any dealings
between B-co and OSL would be subject to the connected
transaction rules. </p>

<h4>Loophole 1 </h4>

<p>Dealings between OSL and directors of B-co would not be covered
by this, since that would just be dealings between two connected persons of
B-co. </p>

<h4>Loophole 2 </h4>

<p>Since OSL is not a subsidiary of A-co, its
dealings with A-co or with any of A-co's directors or controlling shareholders are outside the scope of the connected transaction rules. This opens the door to &quot;pyramid&quot; benefits where
A-co can use its effective control over B-co to extract benefits from
OSL such as project management contracts, asset transactions, or favourable
supplies of raw materials or purchases of finished goods, either for itself or
related parties. Of course this is just a theoretical case, and we're not accusing
anyone of doing this, but the opportunity is there for the taking in such
structures, because they are outside the scope of the listing rules. </p>

<p>If A-co were to take another 0.2% of B-co, then B-co would become a
50.1% subsidiary of A-co, and hence the two interests in OSL would be combined and OSL would also become a
subsidiary of A-co, instantly becoming
subject to the connected transaction rules as applied to A-co. </p>

<p>So here's the &quot;connected transactions&quot; table: </p>

  <table class="txtable center">
    <tr>
      <th>Dealings between OSL and:</th>
      <th>Connected?</th>
    </tr>
    <tr>
      <td>Directors of A-co</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Directors of B-co</td>
      <td>No</td>
    </tr>
    <tr>
      <td>A-co</td>
      <td>No</td>
    </tr>
    <tr>
      <td>B-co</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td>Substantial shareholders of A-co</td>
      <td>No</td>
    </tr>
  </table>

<h3>The CKH-Hutchison Structure</h3>

<p>There are, and have been, many such &quot;double-associate&quot;
structures in the
CKH-Hutchison pairing, partly because the two listed companies have a habit
of jointly bidding in government land sales. A brief inspection of the list of
associates and &quot;jointly controlled entities&quot; of both companies
provides the following sample: </p>

  <table class="txtable center">
    <tr>
      <th>Name</th>
      <th>CKH<br>Stake<br>(%)</th>
      <th>HWL<br>Stake<br>(%)</th>
      <th>Nature of business</th>
    </tr>
    <tr>
      <td>Bayswater Developments Ltd</td>
      <td>50</td>
      <td>50</td>
      <td>Property dev</td>
    </tr>
    <tr>
      <td>Chesgold Ltd</td>
      <td>50</td>
      <td>50</td>
      <td>Property inv</td>
    </tr>
    <tr>
      <td>Harbour Plaza Hotel Management (International) Ltd</td>
      <td>50</td>
      <td>50</td>
      <td>Hotel management</td>
    </tr>
    <tr>
      <td>Metro Broadcast Corp Ltd</td>
      <td>50</td>
      <td>50</td>
      <td>Radio broadcasting</td>
    </tr>
    <tr>
      <td>Wonder Pacific Investment Ltd</td>
      <td>50</td>
      <td>50</td>
      <td>Property dev</td>
    </tr>
    <tr>
      <td>Southern Mount Ltd</td>
      <td>50</td>
      <td>50</td>
      <td>Property dev</td>
    </tr>
    <tr>
      <td>Konorus Investment Ltd</td>
      <td>42.5</td>
      <td>42.5</td>
      <td>Property dev</td>
    </tr>
  </table>

<p>These are not small businesses. Amongst the current 50:50 joint
ventures of CKH and Hutchison, there is the 672,000 sq ft Harbourfront Landmark
in Hunghom, the 1.4m sq ft &quot;Metropolis&quot; project near the KCR Station
in Hunghom, and a 4.4m sq ft development at Tung Chung Station Package 3.
Another project, the 1.0m sq ft Victoria Tower in Canton Road, Kowloon, is 42.5%
owned by each of CKH and Hutchison so that is probably owned by Konorus
Investment Ltd in our table above. Another joint project is the 1.9m sq ft
development at Huangsha Metro Station, Guangzhou, PRC. You get the picture.</p>

<p>Tracking all this down involves comparing the lists of
properties in the accounts of CKH and Hutchison, which is not made easier by the
inconsistent treatment of the projects between the two companies. CKH accounts
in square metres while HWL accounts in square feet! Some of the projects are
subject to profit sharing arrangements with joint venture partners such as the
MTRC and KCRC. In that case, CKH does not state its percentage interest in those
projects, whereas Hutchison does. CKH just lists them under <i>&quot;properties
in which the group has a development interest&quot;</i>.</p>

<p>It is also worth noting that, despite the close relationship
between CKH and Hutchison, they maintain separate auditors. Deloitte Touche
Tohmatsu audits CKH, while PricewaterhouseCoopers audits Hutchison. That means
that neither of them has to look at the two companies on a combined basis.</p>

<h3>Transparency and Opacity</h3>

<p>The accounting treatment of a subsidiary is very different to
that of an associate in your group accounts. For a subsidiary, you combine all
the assets and liabilities into your group balance sheet, one line at a time,
and then deduct a &quot;minority interest&quot; for the share of the total which
belongs to the outside shareholders of the subsidiary. This process is known as
&quot;consolidation&quot; and you also adjust for any inter-company loans. </p>

<p>For example, if the parent has $100 of bank debt and the
subsidiary has $100 of bank debt, then the group balance sheet has $200 of bank
debt. But if the parent has lent money to subsidiary, then this asset and
liability (respectively) disappears when you consolidate the two balance sheets. </p>

<p>By contrast to the transparent treatment of a subsidiary, when
accounting for an associate, you record only your share of the net assets of
that associate, in a single line in your group balance sheet, in which all such associates
are grouped together. </p>

<p>Similarly when preparing the consolidated profit and loss
account, for a subsidiary, the revenue and expenses are combined with the parent
one line at a time, whereas for an associate, you only include &quot;share of
profits or losses of associates&quot; as a single line.&nbsp; </p>

<p>In the case of all the joint ventures of CKH and Hutchison
mentioned above, both listed companies just include them as associates
in their accounts. There is no way for you to know how much debt, assets or
liabilities are held by the associates, or what their sales or expenses are. It make it
impossible to know what is the total debt and overall gearing of the group
(including associates 100% owned between the pair) or what the overall profit
margins really are. </p>

<h3>Conclusion</h3>

<p>So there you have it, with a bit of an accounting lesson thrown
in, you now have at least two possible reasons why CKH has not executed its
intention, stated in Feb-97, to make Hutchison a subsidiary. </p>

<p>There's nothing we can do about the accounting treatment at this
stage, which complies with accounting standards. But the Listing Rules should
certainly be amended to bring transactions by such &quot;double associates&quot;
into their scope. If a company is deemed to be a controlling shareholder (by
owning 35% or more) of a second company, then all their interests in a common
associate should be combined for the purpose of determining whether they control
more than 50% of the associate. And if they do control more than 50% of the
associate, then clearly that associate should be brought inside the scope of the
connected transaction rules. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=488">CK Hutchison Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=366">Hutchison Whampoa Limited</a></li>
				
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
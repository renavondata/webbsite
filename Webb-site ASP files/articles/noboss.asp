
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

<script type="text/javascript">document.title="You're no Boss";</script>

	<div class="summary">"Hello Boss" was the theme of the ad campaign for the MTRC IPO. Webb-site.com finds that far from making you the boss, this company has massive waivers from normal corporate governance rules on disclosure and connected transactions. You might as well hold non-voting shares in a blind trust.</div>

<h2 class="center">You're no Boss<br>
<span class="headlinedate">8 October 2000</span></h2>
<p><a href="http://www.mtrcorp.com/" target="_blank">MTR
Corporation</a> (<b>MTRC</b>) hit the market with a bang last week (as well as a
flurry of duplicate share certificates) as a lot of short-term punters got their
kicks from stock sixty-six. The offer's popularity was no surprise after a
lengthy publicity campaign and a public which perceives an implicit guarantee
from the government. The offer followed on the heels of still-positive returns
from last year's government offering of the Tracker
Fund of Hong Kong. </p>

<p>Enough has been written in the media about the fact that MTRC is
essentially a property company, the income from which subsidises the railway, so
we won't analyse that in depth here. </p>

<p>Instead, we ask exactly how much truth there is to the notion
that public shareholders are now the &quot;boss&quot; of MTRC, as the ad
campaign, which featured gracious MTRC staff in various states of
obsequiousness, suggested. We will show you that the veil of secrecy over its
property operations and an exceptional set of waivers effectively leaves you in
the dark and with non-voting shares. </p>

<h3>Secrecy over Property Projects</h3>

<p>MTRC currently has a HK monopoly in underground railways and a
duopoly on railways in general with the Kowloon-Canton Railway Corporation
(KCRC) which is Government-owned. Like most municipal railways worldwide, it
would not be profitable on its own, but has become a vital piece of public
transport infrastructure. </p>

<p>It has funded the railway developments mainly by receiving land
grants from the Government (in excess of operational requirements) and then
tendering the development rights to that land. Outside developers undertake to
pay the land premium to the Government, the construction costs, and in addition
pay certain amounts up both up-front and as an agreed profit share to MTRC in
return for the development rights. They are willing to pay these amounts to MTRC
because the land premium is set on the basis that the railway does not exist,
when in fact its existence adds a great deal to the value of the site. </p>

<p>So what are the up-front payments and the agreed percentage
share of profits? That's a good question, and the MTRC prospectus sheds little
light on it. The company has obtained an exemption from the Securities and
Futures Commission under <a href="http://www.legislation.gov.hk/blis.nsf/d2769881999f47b3482564840019d2f9/c18f786fccecf1a5c8256480004325c1" target="_blank">Section
38A</a> of the Companies Ordinance from the normal requirement to file copies of
all material contracts in the last 2 years, while the Stock Exchange has granted
an exemption from the requirement to put those contracts on display. </p>

<p>The exemptions were granted on the grounds that the contracts
are <i>&quot;commercially sensitive&quot;</i>. This exemption is so rare that we
cannot recall one ever being granted. In fact, Section 38A only contemplates
exemption if the requirement is <i>&quot;irrelevant or unduly burdensome&quot;</i>.
We find it questionable whether &quot;burdensome&quot; extends to commercial
sensitivities or was intended to refers to the physical workload in the filing,
which would have been low. </p>

<p>The two contracts in question were the development agreement for
<a href="http://www.mtrcorp.com/property/content-overview-kol.htm" target="_blank">Kowloon
Station</a> <a href="http://www.shkp.com.hk/eng/news/press/press/f_000217a.html" target="_blank">Package
3</a>, with Sun Hung Kai Properties, and the Package 4 agreement with Amoy
Properties. We are left with a description in the prospectus which fails to
disclose the profit-sharing split on the projects between MTRC and the
developers. A similar agreement is in the works on the mammoth combined <a href="http://www.shkp.com.hk/quarterly/09-00/english/3.html" target="_blank">Package
5,6, and 7</a>, again with Sun Hung Kai Properties. After a development deal has
been struck, we see no reason why the public, and shareholders, should not know.
Indeed, keeping all bids sealed after a tender is finished favours the
participants of that tender in future tenders. You can't know what the
&quot;going rate&quot; is unless you have won before. Such secrecy is not in the
public interest. </p>

<p>No other company in HK would get away with announcing a major
joint venture (unless it was with MTRC or KCRC) and not disclosing what the
percentage interests are. Is this the degree of transparency we can expect in
the future? If analysts do not know what share the MTRC has in a project then it
will be impossible for them to assess how much profit the MTRC will make on it.
On the other hand, if MTRC tips off the analysts on what the profit split is,
then that is selective disclosure, which is fundamentally wrong - all stock
market participants should have equal access to information. Developers' bankers
will often also be told what the detailed terms are before they agree to finance
a project. </p>

<h3>Your Non-Voting Shares</h3>

<p>First of all, recognise that even after the
&quot;greenshoe&quot; over-allocation in the IPO, the Government still owns 77%
of MTRC. That gives them control over the board and the ability to pass or
reject both ordinary resolutions (which require a 50% majority) and special
resolutions (which require a 75% majority) in General Meetings. </p>

<p>OK, fair enough, there are plenty of HK companies in that
situation, with a controlling shareholder holding more than 50% or as much as
75% of the votes. That's why we have a section in the listing rules about
&quot;Connected Transactions&quot; which requires shareholders who own 10% or
more of a company to abstain from voting, and to seek public shareholder
approval, when they have an interest in that transaction. For example, if a
listed company buys a property from its parent, then such a vote is required,
and the public can decide whether the terms are fair. </p>

<p>Having understood the property subsidy of MTRC's rail
operations, you will appreciate how important the Government is to the company's
future profitability. Not only that, but as Hong Kong's infrastructure expands,
MTRC will be asked to take on new rail projects, and be given new land grants in
compensation. So the pricing of such land, and the viability of the rail
projects, are crucial to future investment returns. </p>

<p>But wait - the Government has committed to hold at least 50% of
MTRC for 20 years from the listing date. So any such deals will be between the
company and its controlling shareholder. In other words, they are
&quot;Connected Transactions&quot; under the Listing Rules. Public shareholders
might therefore expect the right to approve such transactions, based on
independent financial advice, right? Wrong. The Stock Exchange has granted a
blanket waiver of these rules. The best you can expect is a press release
announcing a done-deal. No independent opinions, and no votes. </p>

<p>The prospectus states that this waiver is due to the <i>&quot;unique
circumstances&quot;. </i>It then lists a set of circumstances that no longer
exist: </p>

<ul>
  <li>the Company was a public sector transport provider - true,
    but now it is in the private sector;</li>
  <li>it was beneficially 100% owned by the Government (and hence
    no approval was needed before) - true, but now minority shareholders' funds
    are at stake; and</li>
  <li>the Company was a statutory corporation - that's irrelevant,
    and no longer the case.</li>
</ul>

<p>These &quot;unique circumstances&quot; no longer exist and are a
feeble attempt to justify a simple fact - you have no control over this Company.
The Government is the boss, and your company will build the railways it wants
you to, and take the land it is granted. They are not going to take the risk
that public shareholders may reject a transaction on financial grounds and
thereby affect the development of railway infrastructure. </p>

<p>Sure, you can hope that the management of MTRC do a decent job
in fighting for the best terms, but there's nothing you can do about it if they
fail. </p>

<h3>The Board</h3>

<p>Since you don't get to vote on deals with the Government, the
only line of protection is at the Board level. But there's no salvation there,
because as the prospectus states, &quot;All of the Members of the Board... have
been appointed by the Government&quot;. </p>

<p>There are 10 directors, of which 9 are non-executive and the
other is the Chairman and CEO Mr Jack So (who, incidentally, worked until 1995
for Sun Hung Kai Properties group and is a director of Hongkong Bank). </p>

<p>Of the 9 non-executives, 3 are civil servants appointed by the
Chief Executive of the SAR under the MTR Ordinance. They are the Transport
Secretary, Transport Commissioner and Treasury Secretary. They would abstain
from voting on any deal where there is a <i>&quot;material interest which arises
as a result of the Government office which he holds&quot;</i>. That seems open
to interpretation as to whether they can vote on a property deal with the Lands
Department rather than the Treasury or Transport Departments. </p>

<p>The other 6 non-executive directors are described as
&quot;independent&quot;. But as we've <a href="INED.asp" target="_blank">explained
before</a>, that doesn't mean the public shareholders get to choose them. No,
they are nominated by a &quot;Nominations Committee&quot;, then appointed by the
Board (which was appointed by the Government), and then the Government gets to
vote on their re-election at the Annual General Meeting. You can vote at the
meeting if you want, but as the Government has 51%, it would be pointless. </p>

<p>Even the 3-man Nominations Committee comprises the Secretary for
Transport, the Chairman of Hongkong Bank and the Deputy General Manager of Bank
of China's Hong Kong branch, both banks being Principal Bankers to MTRC and one
(HSBC) being a sponsor of the IPO and a regular adviser to the Government. </p>

<p>The 6 so-called independent directors comprise the usual
cross-section of respectable people from government and industry, but again,
these are not people you can appoint or remove. One of them is an Executive
Councillor to the Government and so is hardly independent. Another sits on the
HKMA's Exchange Fund Advisory Committee and the Trade Development Council, and a
third is a director of Exchange Fund Investment Ltd, which oversees the
Government's stock market intervention portfolio.&nbsp; </p>

<p>No less than half of the independent directors are directors of
Hongkong Bank, including the bank's Chairman. </p>

<h3>A Blind Trust</h3>

<p>A lot of public investors are relying on the goodwill of the
Government in buying this deal. With over 10% of the adult population having
bought it, the stock is almost in the &quot;politically too big to fail&quot;
category. The Government needs to ensure good investment returns as long as it
plans future privatisations such as the Airport and KCRC. There are no promises,
but we get the following words in the prospectus: </p>

<blockquote>

<p>&quot;the Government has acknowledged... that the Company will
require an appropriate commercial rate of return on its investment in any new
railway project and that... financial and other support for those new railway
projects from the Government may be required... The Company will require these
returns to be at a suitable commercial margin over its cost of capital. In this
connection, the Government has recognised that this would ordinarily be between
1% and 3% above the estimated weighted average cost of capital of the
Company.&quot; </p>

</blockquote>

<p>However, the lack of transparency in its property operations and
the fact that public shareholders have no control over transactions with the
Government or the appointment of independent directors, means that shareholders
should recognise that they essentially own non-voting equity in a blind trust,
and trust is the operative word. </p>

<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11569">MTR CORPORATION LIMITED</a></li>
				
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
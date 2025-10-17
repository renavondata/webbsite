
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

<script type="text/javascript">document.title="A Fair Alternative for Boto";</script>

	<div class="summary">In the Boto Buy-out case, the SEHK has reportedly confirmed that other directors are conflicted from voting, while allowing senior managers and a trust run by HSBC to vote - even though the managers report to Mr Kao and HSBC if financing the Buy-out. Among other minority shareholders is the parent of Shanghai Industrial, which has a director on the board. We again urge Boto to withdraw the proposal, which faces near-certain defeat. We reveal that investors opposed to the Buy-out have proposed an alternative which would be fair to all.</div>

<h2 class="center">A Fair Alternative for Boto<br>
<span class="headlinedate">28 April 2002</span></h2>
<p>It's nearly four weeks since Boto International Holdings Ltd (<b>Boto</b>)
proposed a sale of its core
festive products and leisure furniture businesses, accounting for 100% of last
year's turnover, to a Buy-out vehicle controlled as to 30% by Boto Chairman
Michael Kao (<b>Mr Kao</b>) and
70% by the funds of Carlyle Group (<b>Carlyle</b>). </p>

<p>We <a href="notomboto.asp">announced</a> our opposition to this
back-door privatisation at a huge discount to fair value, and have since been
joined by numerous investors, large and small, including <a href="bototemp.asp">Templeton</a>,
Martin Currie Investment Management and other institutions. </p>

<p>Since then, more details have been emerging, about the financing
of the Buy-out and the ownership structure of Boto. As we will show, several
parties have a material interest in the Buy-out and should be prohibited from
voting. We call on Boto to withdraw the proposal, and instead, we have offered
an alternative proposal which would be fair to all shareholders, would achieve
the same net result for Mr Kao, and would retain a great industrial company in
the Hong Kong Stock Exchange with over 7 years of unbroken growth in both sales
and profits. </p>

<h3>On the Register</h3>

<p><i>Webb-site.com</i> has obtained and analysed a copy of the
register of members, better known as the share register. This is always somewhat
challenging in HK, because most of the public shares (other than those of
management, directors and controlling shareholders) are held through banks,
brokers and custodians in the clearing system and in turn through a single
registered shareholder, HKSCC Nominees Ltd (<b>HKSCC Nominees</b>), a fellow
subsidiary of SEHK. More about
that problem another time. </p>

<p>The first surprise was that the number of shares in issue had
increased by 1m to 3,439,925,000, probably due to the exercise of share options. </p>

<p><i>Note to Regulators</i> </p>

<p>Believe it or not, in HK there is no requirement for a public
filing to be made whenever shares are allotted and listed on the SEHK. This
contrasts with the treatment of the opposite direction, share buy-backs, which
must be notified to the SEHK by 09:30 the next business day. It is high time
that the SEHK fixed this - electronic disclosure costs a minimal amount, and
investors have a right to know how many shares are in issue at any time - in
other words, how big their companies are. For one thing, if they don't know that
figure, then they cannot know whether they have breached the legal disclosure
threshold, which is soon to be reduced from 10% to 5% of the issued shares. </p>

<h4>Material interests </h4>

<p>Justice will only be done on connected transactions if those
parties who are involved in the transaction, or have a material interest in its
outcome, are prohibited from voting. It should be up to the truly independent
shareholders, who have no other interest in the transaction besides their
shareholdings, to determine whether a transaction should proceed. The SEHK rules
on this are very messy, and in fact they mention the &quot;material
interest&quot; concept in the context of &quot;Major Transactions&quot; (big
ones) rather than connected transactions.&nbsp; </p>

<p>Under Listing Rule 14.10 for Major Transactions: </p>

<blockquote>

<p>&quot;The Exchange will normally require that any shareholder
shall abstain from voting... if such shareholder has a material interest in the
transaction.&quot; </p>

</blockquote>

<p>Fortunately, the Buy-out is both a Major Transaction as well as
a connected transaction. We will show you why various parties are conflicted by
their material interest.&nbsp;&nbsp; </p>

<h4>What the register shows </h4>

<p>As we already knew from his <a href="http://www.hkex.com.hk/listedco/sdi/20020107i.htm" target="_blank">latest
filed disclosure</a>, as of 28-Dec-01, Mr Kao
has a total voting interest of 56.91%. Of this, 53.02% is held through Sunni
International Ltd (<b>Sunni</b>), a company which is 51% owned by Happy Nation
Ltd (<b>Happy Nation</b>), which in turn is ultimately owned by HSBC
International Trustee Ltd (<b>HSBC</b>) as trustee of a family trust established
by Mr Kao. Happy Nation&nbsp; also has a direct holding in Boto. Mr Kao has a
direct holding in his own name and other shares held by Kessuda Consultants Ltd,
a company wholly-owned by Mr Kao. All this makes his economic interest in Boto about 30.93%.</p>
<img class="center" alt="" src="../images/botoup1.gif">
<p>&quot;Latest Tx&quot; means the latest change in registered
holding. Not all of Sunni's and Mr Kao's shares are on the register - we could
only find a total of 52.05% for Sunni, and 1.47% for Mr Kao, which implies that
another 0.97% and 0.34% are held by nominees, probably through HKSCC Nominees
Ltd. These are marked &quot;unknown&quot; in our column for registered holder.
Mr Kao should be required to disclose who holds these shares so that they can be
excluded from voting.</p>
<p><i>Note to regulators</i></p>
<p>All conflicted parties should ensure that an independent party
is appointed as proxy in respect of all of their shares with instructions to
abstain. The proxy will then confirm the total number of shares which are not
voted, and it reduces the risk of HKSCC unknowingly voting stock on behalf of a
nominee of a conflicted party.</p>
<h4>Other directors</h4>
<p>The other directors, through various holdings, have the
following shares:</p>
<img class="center" alt="" src="../images/botoup4.gif">
<p>All of these executive directors would have been involved in the
board decision to propose the transaction and probably in negotiations too. In
addition, as
Mr Kao, through Sunni, controls the composition of the board by outright
majority, the other directors in effect report to him.</p>
<p>Again, in this table, Philip Lam Pak Kin's registered holding
differs from his <a href="http://www.hkex.com.hk/listedco/sdi/20011214a.htm" target="_blank">latest
disclosed shareholding</a>, so part of its must be held by nominees, marked
&quot;unknown&quot; in our table. Francis Kao is Mr Kao's son and presumably a
beneficiary of his trust, which is a party to the Buy-out.</p>
<p>Pleasure International Ltd and Golden Jungle Ltd are ultimately
owned by HSBC as trustee for family trusts of Ms Liliana Tsen and Mr Kui Yiu
Ngok respectively.</p>
<h4>Other co-founders</h4>
<p>One of the three co-founders of Boto, Mr Law Pun Leung, passed
away some time before Boto's IPO. A company called Silverbay Group Ltd (<b>Silverbay</b>)
is on the register with 140,491,890 shares, or 4.08% of Boto. The register
records Silverbay's address as the head office of Boto in HK. We don't know who
opens its mail. Silverbay is ultimately owned by HSBC, as trustee of The Law Pun
Leung Family Trust.</p>
<h4>The role of HSBC</h4>
<p>According to an
<a target="_blank" href="http://www.financeasia.com/Accessories/faPrintStory.cfm?objectID=E7B261AA-4207-11D6-81DE0090277E174B">article</a>
on <i>FinanceAsia.com</i>, HSBC Group said it is arranging debt finance for the Buy-out vehicle
comprising HK$764m of long term debt and $40m of working capital finance, or a
total of $804m. This amounts to some <b>80%</b> of the total $1,007.5m purchase
price for the Buy-out. HSBC Group would expect to earn arrangement fees and
profits on the loan from its interest spread, so it has an obvious material
interest in the transaction. Clearly then, it has a conflict of interest in
voting shares in Boto as a trustee.</p>

<h4>Senior Managers </h4>

<p>SEHK rules require Senior Managers of listed companies to be
identified in the annual report. This allows us to identify the following
shareholdings from the register as being held by Senior Managers: </p>

<img class="center" alt="" src="../images/botoup3.gif">

<p>Note: the law does not require Senior Managers (which is a
Listing Rules term) to disclose their shareholdings, so we do not know whether
they have&nbsp; any indirect holdings through HKSCC Nominees Ltd. </p>

<p>Vivian Kao is a daughter of Michael Kao and presumably a
beneficiary of his family trust, which is a party to the Buy-out. Terry Tse Chi
Man will, if the deal is completed, be promoted to a Directorship of the listed
company, so he also has a material interest in the Buy-out. In the case of all
Senior Managers, since they are on the register, the Chairman is likely to know
how they vote, because they will have to send in proxy cards in their own names
or attend the meeting. </p>

<p>Clearly, since Mr Kao is their boss, it would not be a good
career move for a Senior Manager to vote against the Buy-out. Furthermore, most
of them will be working for the privatised core businesses, and may in future
receive bonuses, profit-sharing or other equity-like incentives which depend on
the performance of the privatised group, giving them a material interest in the
Buy-out. </p>

<p>Because of all these material interests which create a conflict of
interest, we believe the Senior Management are not independent shareholders and should be prohibited from voting.&nbsp; </p>

<h4>Share Options </h4>

<p>Notice that nearly all the Senior Managers' holdings last
changed on 12-Dec-01. There's a probable reason for this. On 15-May-01, a round
of share options was granted, including <a href="http://www.hkex.com.hk/listedco/sdi/20010516b.htm" target="_blank">3m</a>
to Mr Kao and <a href="http://www.hkex.com.hk/listedco/sdi/20010518b.htm" target="_blank">9m</a>
to the other directors, exercisable for two years starting six months after the
date of grant, that is, between 15-Nov-01 and 14-Nov-03. Normally, option
holders would not exercise options until near the end of their period, partly
because that involves putting up cash and triggering tax liability. However,
between <a href="http://www.hkex.com.hk/listedco/sdi/20011207a.htm" target="_blank">3-Dec-01</a>
<a href="http://www.hkex.com.hk/listedco/sdi/20011211a.htm" target="_blank">and</a>
<a href="http://www.hkex.com.hk/listedco/sdi/20011214a.htm" target="_blank">12-Dec-01</a>,
the directors exercised all of these options, less than a month after they
became exercisable and nearly two years before expiry. Based on the identical register dates, it is a fair guess
that Senior Managers (whose dealings are not required to be disclosed) all
exercised options on the same day. </p>

<p><i>Note to Regulators</i> </p>

<p>We don't know how many options were granted in total, because
amazingly, the SEHK does not require companies to file disclosures when they
grant options. That is another problem the SEHK should fix - currently it is
impossible for an investor, or a takeover offeror, to know how many shares (and
hence votes) would be in issue after all outstanding options are exercised. A
classic example of this was on 22-Apr-02 when Pacific Challenge <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020423/LTN20020423039.doc" target="_blank">disclosed</a>
that, unknown to a hostile offeror, it had purportedly granted&nbsp; 23.888m
share options way back on 4-Feb-02, equivalent to 8.3% of the current share
capital. </p>

<h4>Shanghai Industrial </h4>

<p>A company called GEM Capital Investment (BVI) Ltd, which is
wholly owned by Shanghai Industrial Investment (Holdings) Co Ltd (<b>SIIC</b>)
owns 5.83% of Boto. SIIC, which is wholly-owned by the Shanghai Municipal
People's Government, is also the parent of HK-listed Shanghai Industrial
Holdings Ltd. Mr Zhuo Fu Min (<b>Mr Zhuo</b>), an Executive Director and Vice President
of SIIC, is a non-executive director of Boto, having joined the board after SIIC
subscribed for the shares in September 1997, at a split-adjusted $0.34 per
share. </p>

<p>As a director of Boto, Mr Zhuo should have full access to the
latest management accounts, 3-5 year projections and other material which were
provided to Carlyle during the Buy-out due diligence. This would show him just
how strong the prospects are, and why SIIC should join other minority
shareholders in voting against the Buy-out. </p>

<h3>Voting Summary</h3>

<p>According to an article in the <i>SCMP</i> on 25-Apr-02, quoting
a source who was clearly aware of the details, the SEHK has ruled that HSBC will
be allowed to vote the shares it holds through Silverbay, which gets its mail
through Boto's head office. As stated above, we strongly disagree with this
decision as we believe HSBC Group has a material interest in the transaction
from its lending business. </p>

<p>According to the same article, SEHK has
decided that <i>&quot;all directors would be barred from voting&quot;</i>.
However, the article also says that <i>&quot;some senior management shareholders
would be allowed to [vote]&quot;</i>. We disagree - anyone whose boss is
Mr Kao clearly has a conflict of interest, as shown above. We don't know what is
meant by <i> &quot;some&quot;</i> senior managers, but we would guess that it at least
excludes Mr Kao's daughter and probably Mr Tse, who is expecting a promotion if
the deal proceeds and has been instrumental in presenting the Buy-out to the
media. </p>

<p>We urge the SEHK to reconsider, but if they allow HSBC to vote the deceased co-founder's
shares, and allows Senior Management to vote too, then we can assume that these
conflicted parties will vote in favour, presenting a vote of&nbsp;up to 5.12% in
favour of the deal. </p>

<p>Mr Kao and the directors (including some of their shares held
through unknown nominees) together have 64.84% of Boto. If HSBC (4.08%) and
Senior Management (1.04%) are excluded, then that leaves independent
shareholders (including SIIC), who own <b>30.04%</b> of the company, to decide
the outcome, on a simple majority of votes cast. Not all independent
shareholders will vote, of course - so the turn-out will play an important
factor. </p>

<p>The independent shareowners, large and small, who have told <i>Webb-site.com</i>
they will vote against the Buy-out, hold between 10% and 15% of the votes (we
are not releasing an exact figure for obvious reasons). Tellingly, not a single
shareholder has contacted us to say they will vote in favour, despite Boto's
claims of support, which we frankly do not believe. Anyone who thought this was
a good price would have already sold their stock at the higher prices prevailing
before the deal was announced. So unless there are some hidden undisclosed
shareholdings loyal to Mr Kao, it appears very likely that this deal will be
voted down.&nbsp; </p>

<h3>A Great Business </h3>

<p>One thing that everybody agrees on is that Boto has great core
businesses of festive products (Christmas trees and decorations) and leisure
furniture. The latter business grew sales at an estimated 100% in the year ended
31-Mar-02. Boto should announce the audited results as soon as possible. </p>

<p>Mr X. D. Yang, a Managing Director of The Carlyle Group, said in
a statement announcing the deal: </p>

<blockquote>

<p>&quot;Boto is a very solid company with <b>strong cash flows</b>.
It is the world leader in the artificial Christmas tree business.&quot; </p>

</blockquote>

<p>He went on to describe it as: </p>

<blockquote>

<p>&quot;one of the best run manufacturing companies that we have
seen in Asia.&quot; </p>

</blockquote>

<p>He continued: </p>

<blockquote>

<p>&quot;Carlyle is well positioned to work with Boto to further
capitalize on its predominantly U.S. and European customer base and <b>accelerate
the growth of its leisure furniture</b> and other related businesses&quot; </p>

</blockquote>

<p>Remember, this and the festive products side are the principal
products which Boto described in its announcement as <i>&quot;relatively mature
with low growth prospects&quot;</i>. Quite a contrast! Carlyle's Mr Yang also
appears to agree with us that US retailer Kmart's restructuring will not be more
than a blip in the distribution of Boto's products to end customers. He told
Reuters on 4-Apr-02: </p>

<blockquote>

<p>&quot;We think Boto has a very strong and diverse customer base.
The foundation is very strong and we hope and expect Kmart will come back in
some fashion&quot;. </p>

</blockquote>

<h3>HSBC's loan implies greater business value </h3>

<p>For a second opinion, we turn to HSBC, who <a href="http://www.financeasia.com/Articles/E7B261AA-4207-11D6-81DE0090277E174B.cfm" target="_blank">told</a>
<i>FinanceAsia.com</i>: </p>

<blockquote>

<p>&quot;We view this as a good business. We have banked this
company for a long time. We have a great deal of confidence in the way it has
grown.&quot; </p>

</blockquote>

<p>Indeed, so strong are the cash flows that HSBC is willing to
lend 80% of the purchase price of the deal, which we believe is because it is
worth a lot more than Carlyle is paying for it. </p>

<p>We say this, because any sane banker, lending money against a
business with factories in mainland China, would not expect much in the way of
real recoverable security - and would lend against projected cashflows,
discounted back to net present value. </p>

<p>This loan would not exceed 40-50% of the fair value of the
business. This translates to a debt:equity &quot;gearing&quot; ratio of 40:60
(67%) or 50:50 (100%). No way would HSBC provide 80:20 (400%) gearing for a
business of this type. This can only mean one thing: based on the loan
facilities of $804m, the business is actually worth between <b>$1,600-2,000m</b>,
rather than the $1,007.5m that they are paying for it, so that the loan-to-value
ratio is between 40% and 50%. If you take the mid-point of that range, or <b>$1,800m</b>,
then that just happens to be <b>10x</b> the estimate of $179.6m by Kim Eng
brokerage of what Boto made in net profit for the year to 31-Mar-02. </p>

<p>This is a figure which we have previously stated would stand a
fair chance of success if it was made in the form of a general cash offer at
around <b>$0.52</b> per share for all outstanding shares in the company. </p>

<h3>Withdraw Now </h3>

<p>We urge the board of directors, in the best interests of the
company, to withdraw the Buy-out proposal rather than publish a circular
convening a general meeting. They may feel they had a duty to announce the
proposal in order to seek investors' views, but it is quite clear that
independent shareholders overwhelmingly disapprove. To push on in the face of
this opposition would simply damage the reputation of the company, since the
terms of the deal are beyond any justification. If that circular goes out, they
and their advisers can expect a classic analytical shredding exercise on <i>Webb-site.com</i>. </p>

<p>Boto would set a shining example of accountability if it
listened to the market, thanked us for our support and agreed that remaining
public, and not privatising the core business at a huge discount to fair value,
was the way forward. </p>

<p>The agreements for the Buy-out are conditional, amongst other
things, on independent shareholders' approval, a condition which cannot be
waived by the purchaser. If that condition has not been satisfied by 31-May-02
then the deal automatically lapses without liability to any party. Carlyle has a
reputation to preserve too, but if it is unwilling to sign an early termination
agreement, then the most graceful way out for Boto is simply to run out the
clock and allow the deal to lapse. </p>

<h3>A Fair Alternative</h3>

<p>Due to the HSBC loans, it is clear that one side-effect of the
Buy-out is that Mr Kao would receive&nbsp; a substantial amount of net cash,
being the difference between the dividend of part of the sale proceeds, versus
the equity that he would need to subscribe for the Buy-out. We have not been
told whether he is paying the same price as Carlyle for the equity in the
Buy-out vehicle, but it is very unlikely to be more and may well be less. </p>

<p>Based on an estimated $243m of equity, he would need to put in
up to $73m for his 30% stake. Boto has indicated to some investors that it will
only pay out about 70% of the proceeds of the Buy-out, or about $0.22 per share,
retaining the rest (about $0.10 per share) to play with in the start-up Imagi
animation business. The market would apply a heavy discount to this, and the
shares might trade at only 40-50% of net asset value, or $0.04-$0.05 per share.
That means they are only worth about <b>$0.26-0.27</b>, including dividend, if
the Buy-out proceeds. That compares with $0.34 before the Buy-out was announced. </p>

<p>This dividend would give Mr Kao, with his 30.93% interest, about
$234m, so after investing in the Buy-out vehicle, he would extract about <b>$161m</b>
of cash while keeping a geared 30% stake in the future of the core business.
That's great for Mr Kao, but terrible for all the minorities, who would be
replaced by Carlyle and lose all the upside of this business. </p>

<p><b>A fair alternative would be as follows:</b> </p>

<ul>
  <li>Withdraw the Buy-out proposal, or
    allow it to lapse on 31-May-02;</li>
  <li>Boto, which has almost zero net
    debt, could borrow $520m from HSBC as a long-term loan;</li>
  <li>distribute the $520m as a special
    dividend of about $0.15 per share; and</li>
  <li>make a renewed commitment to remain
    listed in Hong Kong and to the highest standards of corporate governance.</li>
</ul>

<p>That would treat all shareholders equally and fairly. As a
shareholder, Mr Kao would receive 30.93% of $520m, or <b>$161m</b>, exactly what
he would extract from the Buy-out, and retain a 30.93% economic interest in
Boto, almost the same as the 30% he would have in the Buy-out. Boto would retain
its listing, and all investors would receive a dividend and participate in a
geared upside for the core business. Our proposal is fair to all shareholders,
not just Mr Kao. HSBC is obviously happy to lend $520m if it would lend $764m
against the same cash flows. </p>

<p>At current interest rates, with a premium of say 2% over HIBOR
(4% total), the loan interest would be about $20.8m per annum. Ignoring any tax
benefit, at the current Mar-02 P/E of around 6x, this would reduce market value
by about $125m, or around $0.036 per share, which is much less than the $0.15
dividend, adding <b>$0.114</b> per share to shareholder returns. </p>

<p>More importantly, if Boto acts responsibly now, then we would
expect it to participate in the general re-rating of industrial stocks that has
taken place. Hong Kong's Stock Exchange needs good companies that are committed
to developing the quality and depth of this market. Companies like Techtronic
Industries, Johnson Electric and Esprit Holdings have shown what can be done.
Remember, Boto has grown both sales and profits for 7 years in a row, and is
expected to announce an 8th year for Mar-02. Not many HK-listed companies have
achieved that! </p>

<p>If the Buy-out proceeds, then like any private equity firm,
Carlyle would hope to exit in a few years time. They would probably look for
earnings to grow at an average rate of around 20% for the next 4-5 years,
doubling earnings in the process, and then refloat Boto on another market such
as Nasdaq with a P/E of say 11x, double the purchase price of 5.6x. Double the
earnings and double the p/e and you get a $4b valuation. Profits in the next 4-5
years would be enough to repay the loan, leaving a return of $4bn on a $243m
equity investment. But like we said, this is not going to happen, because we
will vote it down if they push ahead. </p>

<p>We believe such earnings growth and P/E re-rating can take place
in Hong Kong, if Boto recommits to the Hong Kong market and to treat its
investors fairly. Hong Kong's market needs to retain and nurture success stories
like Boto. </p>
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
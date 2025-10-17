
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

<script type="text/javascript">document.title="PIPSI Report";</script>

	<div class="summary">The report by the Government-appointed Panel of Inquiry into the recent "Penny Stocks Incident" was released on Tuesday. Webb-site.com looks beyond the blame game and into the recommendations for structural reform of the regulatory system.</div>

<h2 class="center">PIPSI Report<br>
<span class="headlinedate">15 September 2002</span></h2>
    <p>The two-man Panel of Inquiry on Penny Stocks
    Incident (<b>PIPSI</b>), <a href="http://www.info.gov.hk/gia/general/200207/31/0731277.htm" target="_blank">appointed</a>
    on 31-Jul-02 by the Financial Secretary, released its report on Tuesday.
    There is no link to the report on the Government's <a href="http://www.info.gov.hk/gia/general/200209/10.htm" target="_blank">news
    index</a>, and it took us some time to find it deep in the Government web
    site. <a href="http://www.info.gov.hk/info/pennystock-e.htm" target="_blank"><b>Click
    here</b></a> to read it but be warned, it runs to 189 pages plus 97 pages of
    appendices.
    <p>If you are new to this subject, you
    can read our article <a href="pipsi.asp">PIPSI Submission</a> including the
    download of our actual submission.

    <h3>The Blame Game</h3>

    <p>To us, the apportionment of blame
    is the least important part of the Panel's work, so we will deal with it
    briefly before moving on to the weightier conclusions. On the subject of
    Fred Ma, Secretary for Financial Services and the Treasury, the panel wrote
    (12.27):</p>
<blockquote>

    <p>&quot;[Mr Ma] joined the Government
    on 1 July 2002 and...he had a great deal of catching up to do...We have seen
    his engagement diary. [Mr Ma] clearly had a very full plate&quot;.
</blockquote>

    <p>That's an interesting choice of
    words in relation to a keen diner who told the press on 16-Jul-02, just a
    week before the penny stocks incident and in relation to market hours:</p>
<blockquote>

    <p>&quot;To have a nice lunch is not
    important for Westerners but it is very important for the Chinese. I think
    we need to respect this cultural difference.&quot;
</blockquote>

    <p>He was dishing up baloney, perhaps
    after a particularly good dish of abalone. Maybe his lunch diary impeded his
    ability to digest his in-tray. In relation to a summary table of the HKEx
    delisting proposals from the SFC, which was placed in his in-tray on
    17-Jul-02 by an assistant, he told LegCo on 31-Jul-02:</p>
<blockquote>

    <p>&quot;since the papers and files in
    my office were piling up like a mountain...I could not possibly have read
    every document&quot;
</blockquote>

    <p>We give him credit for admitting
    this even though it shows disorganisation and does not excuse ignorance.
    Whatever the height of his paper mountain, he should have informed himself
    of the HKEx proposals, and then he would probably have recognised their
    likely consequences and intervened. The Panel, by contrast, seems to think
    that honesty was not a good quality in front of LegCo, calling it a <i>&quot;sub-par
    performance&quot;</i>. The panel wrote of his session (9.21):</p>
<blockquote>

    <p>&quot;It would have&nbsp; required
    the skills and experience of a much more seasoned bureaucrat to have come
    out of that barrage relatively unscathed.&quot;
</blockquote>

    <p>The Panel implies that a
    &quot;par&quot; performance would be to obfuscate to Legislators and not to
    admit any errors. This may be politically desirable from the Government's
    point of view, but it surely is not the objective of accountability.
    &quot;Performance&quot; should not be measured by the degree to which a
    politician deflects criticism or avoids blame.</p>

    <h4>Incomplete record</h4>

    <p>The Government held a press
    conference on Tuesday afternoon, in which Chief Executive Tung Chee Hwa,
    Financial Secretary Antony Leung and Mr Ma came out for sequential
    stand-alone sessions like ducks in a fairground shooting gallery. Mr Leung's
    <a href="http://www.info.gov.hk/gia/general/200209/10/0910300.htm" target="_blank">statement</a>
    (but not his Q&amp;A) and Mr Ma's <a href="http://www.info.gov.hk/gia/general/200209/10/0910256.htm" target="_blank">statement</a>
    and English portion of his <a href="http://www.info.gov.hk/gia/general/200209/10/0910295.htm" target="_blank">Q&amp;A</a>
    are online. The written record does not include Mr Tung's statement, and
    only the English portion of his <a href="http://www.info.gov.hk/gia/general/200209/10/0910299.htm" target="_blank">Q&amp;A</a>.

    <p>You can watch the whole conference
    with simultaneous translation in <a href="http://isdwebcast03.netvigator.com/webcast/100902e.ram">streaming
    video</a>. This in fact is the only way to get the full version of what was
    said, because the Government does not produce English transcripts of
    Cantonese Q&amp;A or vice versa. So much for transparency in &quot;Asia's
    World City&quot;. The sporadic production of written statements also raises
    the broader question of whether the Government is being selective in
    publishing the statements of its officials for the record. Historians and
    academics will not find it easy to research this in years to come.

    <p>In Tuesday's statement, Mr Ma
    pointed to the Panel's conclusion that he had not &quot;failed in the
    discharge of his responsibilities&quot; (12.27), but finally on Wednesday
    afternoon, with a typhoon causing the cancellation of a LegCo Financial
    Affairs Panel, and the political storm continuing, he came out to a hastily
    convened selection of media and apologised with a Japanese-style bow. Better
    late than never.<h4>HKEx apologises to
shareholders for the reaction of shareholders</h4>
<p>Kwong Ki-chi, the Chief Executive of
Hong Kong Exchanges and Clearing Ltd (<b>HKEx</b>), in a <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/0207313news.htm" target="_blank">statement</a>
to LegCo on 31-Jul-02 said:</p>
<blockquote>
  <p>&quot;I send my heartfelt
  apologies to shareholders who have suffered as a result of the <i>market's
  response to</i> some of the proposals in our consultation paper&quot; (emphasis
  added)
</blockquote>
<p>No doubt that statement was carefully drafted
to avoid admission of any legal liability, by inclusion of the words &quot;the
market's response to&quot; - after all, &quot;the market&quot; is in fact the
collective body of investors, so he is blaming the suffering of shareholders on
shareholders themselves, not directly on the HKEx proposals. The <i>&quot;market
reaction&quot;&nbsp;</i> was again included in an apology in Tuesday's <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020910news.htm" target="_blank">statement</a>
by HKEx.<p>Incidentally, in material
supplied to the Panel, HKEx included a collection of <i>&quot;over 100 media
reports on penny stocks and delisting mechanism from 11 January 2001 to 25 July
2002&quot;</i>. This was included as <a href="http://www.info.gov.hk/info/annex7.2.pdf" target="_blank">Annex
7.2</a>. The Panel describes this as <i>&quot;an extremely useful document&quot;
</i>(7.69(a))&nbsp; - but it is useless to us, since it is in Chinese only -
even the quotes from <i>The Standard</i>, which is an English-language paper,
are produced in Chinese. Only one quote appears in English.
    <h3>Bad governance, not bad
    shareholders</h3>
    <p>In several places, the Panel
    appears to confuse the quality of the market with the performance of
    companies. In their conclusions, they write (13.2):</p>
<blockquote>
    <p>&quot;There is overwhelming market
    and public support for the enhancement of the quality of the securities
    market in Hong Kong. There is a clear consensus that the authorities should
    work together...to minimize market misconduct and to weed out
    under-performing companies which damage the reputation of the Hong Kong
    market&quot;
</blockquote>
    <p>It is not clear what is meant by
    &quot;under-performance&quot; in this context. If they mean it in a
    regulatory sense of &quot;companies which break the rules and laws&quot;
    then it should be recognised that companies are just legal entities run by
    directors, who make the decisions. We need a system to penalise and deter
    the directors from rule-breaking behaviour, not to penalise the minority
    shareholders by delisting the company. Put simply, it is the weak regulatory
    and legal structure that &quot;damages the reputation of the market&quot; by
    facilitating and failing to deter bad governance.
    <p>Alternatively, if the Panel mean
    &quot;under-performance&quot; in a financial sense, then they seem to forget
    that this is a market economy with winners and losers. Shareholders of a
    company which have lost money should not be penalised by delisting their
    stock, so long as the company is solvent. If a company is already in
    liquidation, then this is not a penalty. We already have a delisting
    mechanism for such cases, and it can be improved. Financial
    under-performance does not in itself <i>&quot;damage the reputation&quot;</i>
    of a market, and since under-performance is a relative term, by definition,
    there will always be companies which &quot;under-perform&quot; others.
    <h3>Relationship between HKEx and SFC</h3>
    <p>The report offers the public some
    insight into the strained relationship between the HKEx and SFC. As we noted
    in our submission, the SFC cannot direct that changes be made to the Listing
    Rules and can only approve or reject changes proposed by HKEx, which gives
    the HKEx the upper hand in any negotiations. Indeed, although the original
    discussion on Penny stocks between HKEx and SFC centred on proposals to
    require them to consolidate, and what price level would be appropriate,
    somewhere along the line, it morphed into a proposal to use the most
    draconian penalty (delisting) for those companies who failed to comply -
    rather than the usual procedure for breaches of Listing Rules (which focuses
    on a system of reprimands). So consolidation was combined with delisting.
    The proposal was clear:</p>
<blockquote>
    <p>&quot;We will amend the Main Board
    Rules to introduce a minimum share price of HK$0.50 as a continuing listing
    eligibility criterion&quot;
</blockquote>
<p>The SFC does not have the power to stop
the HKEx from consulting the market on any proposals, so this gives them
somewhat limited influence in the drafting, which is driven by HKEx.</p>
    <p>In our PIPSI submission, we
    explained how in 2001, on draft proposals for corporate governance aspects
    of the listing rules, the SFC Shareholders Group gave views to the SFC,
    which were then communicated to HKEx. The report reveals (7.72) that Karen
    Lee, Head of the HKEx Listing Division, wrote to the SFC on 12-Dec-01:</p>
<blockquote>
    <p>&quot;I am very surprised indeed,
    and rather concerned, to note that our draft paper was discussed at the
    Shareholders Group meeting, and comments on the papers have been officially
    passed to us&quot;
</blockquote>
    <p>In other words, &quot;how dare you
    consult your Shareholders Group on matters affecting shareholders&quot;. To
    which Ashley Alder, Head of Corporate Finance for the SFC replied (7.73):</p>
<blockquote>
    <p>&quot;I am convinced that had we
    not consulted the Group at this stage we would have been subject to
    justifiable criticism, including by members of the Group. Exercises like
    this are what the Group is for.&quot;
</blockquote>
    <p>The comments of the Shareholders
    Group were largely ignored in this matter. The report notes (7.74) that:</p>
<blockquote>
    <p>&quot;The SFC has since this
    incident not discussed any Listing Rules changes with its Shareholders
    Group&quot;
</blockquote>
<p>In relation to the delisting proposals,
the report notes (7.76) that:</p>
<blockquote>
  <p>&quot;the SFC felt inhibited from
  consulting its Shareholders Group on the HKEx's actual proposals. The previous
  attitude of the HKEx... had the effect of preventing the SFC from fully
  engaging its network in gauging market feedback which would have benefited the
  HKEx.&quot;</p>
</blockquote>
<p>One has to wonder who is in charge of
whom here, which brings us neatly on to:</p>
    <h3>Structural reform</h3>
<p>In its description of the so-called
&quot;three-tier regulatory structure&quot;, the Panel notes:</p>
<blockquote>
  <p>&quot;the HKEx...is only a regulator
  in a limited sense since it possesses no statutory powers of investigation and
  its powers, such as they are, are conferred by the Listing Agreement entered
  into by issuers... There are those who would consider it a straining of
  language to describe a party with the right to enforce a contract as a
  regulator.&quot;</p>
</blockquote>
<p>In other words, the Listing Rules have
no teeth. As far as we know, the HKEx (or more accurately, the SEHK) has never
sued a company for breach of the Listing Agreement. It would not be appropriate
to give statutory powers to a commercial entity such as HKEx, which is one of
the reasons that listing regulation should be moved to the SFC, so that these
powers can be granted to the SFC, to fine directors for breaking the rules.</p>
    <p>The most important part of the
    report is the recommendations section, and here we see encouraging signals.
    The Panel wrote (14.21):</p>
<blockquote>
    <p>&quot;The handling of regulatory
    issues by both the HKEx and the SFC and the splitting of roles and functions
    between them not only lead to inefficiencies but also to confusion...We
    consider it timely for the present arrangement to be reviewed...in
    particular, most [commentators] have suggested that if a Listing Committee
    is to be retained, as most believe it ought to be, it cannot be housed under
    the HKEx. Within the current structure, the only entity under which it can
    be accommodated is the SFC. <b>We see the sense of all these comments and
    commend them to the authorities for further consideration.</b>&quot;
    (emphasis added).
</blockquote>
    <p>Is a commendation a recommendation?
    It certainly looks like one. <i>Webb-site.com</i> has been <a href="ExchangeMerger.asp" target="_blank">calling</a>
    since Mar-99, when the creation of HKEx was first announced, for the HKEx to
    get out of regulation, and it looks like this ball is now rolling. It can be
    assumed that by moving the Listing Committee to the SFC, the Listing
    Division goes with it, lock, stock and barrel.<p>The
Government has said it &quot;accepts&quot; all the recommendations in the
report. This hopefully removes the roadblock which Mr Ma imposed the day before
the delisting proposals were announced, when he announced that the HKEx would
remain the frontline regulator pending a review which would not happen for at
least another 2 years. We covered this in our article &quot;<a href="listingchaos.asp" target="_blank">Listing
Chaos</a>&quot;.
    <h3>Listening to Investors</h3>
    <p>The Panel appears to have accepted
    our submission that unlike the SFC, which has a Shareholders Group of which
    your Editor is a member, the HKEx has no sounding board to gauge investor
    opinion. By implication, they also accept that the HKEx Listing Committee
    does not reflect investor opinion, which is hardly surprising given that
    only 4 out of its 25 members can be fund managers. The Panel writes (14.11):</p>
<blockquote>
    <p>&quot;We note that the HKEx does
    not have within its structure any group specifically reflecting the views of
    consumers or shareholders...We recommend that the HKEx consider setting up
    its own consumer panel or shareholders group.&quot;
</blockquote>
    <p>We agree, but we also suggest that
    the HKEx should use the existing Shareholders Group which was formed by the
    SFC rather than duplicate the effort with a second group. There is no
    conflict in having the same Shareholders Group advise both the SFC and HKEx.
    Whether or not Listing regulation is moved to the SFC, the HKEx still needs
    to hear the views of investors on matters such as new products, the clearing
    system, trading spreads, price dissemination and scripless registration.
    <p>The government should also
    reconsider enabling the <a href="../HAMS/" target="_blank">HAMS proposal</a>
    which contained a democratic mechanism for investors to elect their own
    representatives as a board of governors. If HAMS existed, then its Policy
    Division would have engaged the authorities on matters such as the delisting
    proposals, and then the Penny Stock fiasco need never have happened.
    <h3>Empowering investors</h3>
    <p>The Panel also touches on the fact
    that minority shareholders are relatively powerless to protect their
    interests. The Panel writes (14.23):</p>
<blockquote>
    <p>&quot;We recommend that further and
    continuous consideration be given to how minority shareholders' rights can
    be better protected.&quot;
</blockquote>
    <p>One of the keys to this is
    empowering investors to help themselves, and create their own deterrent to
    bad governance. There is no class action system in Hong Kong law, and no
    contingent legal fees. The lack of class actions fragments the value of
    claims that investors would have against offending parties, making legal
    action unaffordable. HAMS was designed to create a quasi-class action
    system, with an Enforcement Division producing joint actions on behalf of
    thousands of investor-members.
    <p>However, in the absence of enabling
    HAMS, we believe the Government must instead introduce a statutory right of
    class action, where a lead plaintiff can represent an entire class of
    minority shareholders (other than those who opt out). Lawyers should also be
    permitted to conduct work on a contingent fee basis, working for free in
    return for a negotiated success fee. They would then accept cases that had a
    reasonable chance of success, and large awards for the whole class would
    begin to create a deterrent effect.
    <p>Until shareholders have effective
    legal remedies, all of the burden of deterrence will fall on the Government's
    regulatory and law enforcement agencies.
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14388">GEM Listing Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=38146">HKSAR Panel of Inquiry on Penny Stocks Incident</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13780">SEHK Listing Committee</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10808">Kwong, Ki Chi</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=877">Ma, Frederick Si Hang</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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
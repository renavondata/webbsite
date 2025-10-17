
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

<script type="text/javascript">document.title="eWealthCareAsia.com?";</script>

	<div class="summary">Quality HealthCare Asia has been a high-flying stock this year. Now, they are setting up an online subsidiary, eHealthCareAsia, and proposing to grant share options in the new company for the benefit of "key employees", including in particular the Chairman, who already gets share options in the parent as well as holding a healthy stake in it. Guest writer Claire Barnes looks at the conflicts of interests the proposal creates.</div>

<h2 class="center">eWealthCareAsia.com?<br>
<span class="headlinedate">12 December 1999</span></h2>
The high-flying <a href="http://www.qualityhealthcareasia.com/" target="_blank">Quality
HealthCare Asia</a> announced recently that it will set up <a href="http://www.ehealthcareasia.com/" target="_blank">ehealthcareasia.com</a>.
As shareholders we were delighted by this news. True, there is plenty of
competition - in my first twenty-four hours in Hong Kong last week I met no less
than five old friends and acquaintances immersed in five different web startups
of a healthcare flavour, and there are US sites and startups with enormous
financial backing. Within Hong Kong, QHA's large network of medical, dental, and
physiotherapy practices, and its tie-up with Hong Kong Baptist University in
Chinese medicine, gives it a useful head start for content, and it may be able
to build a regional franchise with Chinese language content, sections on Chinese
and alternative medicine, and information of local relevance, such as on
tropical diseases and local epidemics. It shouldn't cost very much, and there is
scope for huge windfall gain if one can cobble this together quickly and float
it while Internet fever lasts.
<p>We were even more delighted when I
visited the company on 1 December and was told that this was a logical extension
of the internal intranet development which the company needed to do anyway, for
administrative purposes - patient records, staff education, and presumably
information on drugs etc.
<p>We were less amused to hear later of a <a href="http://www.qualityhealthcareasia.com/Pressfull.htm#dec99" target="_blank">press
release</a> which had been issued that morning, proposing that:</p>
<blockquote>
  &quot;subject to independent shareholder
  approval, ehealthcareasia Limited would be granting a company beneficially
  owned by [QHA's executive chairman] Mr O'Connor a right to acquire up to 20%
  shares in the internet subsidiary. A proportion of these shares will be used
  to attract key personnel to ehealthcareasia.com...&quot;
</blockquote>
<p>When I raised this issue with the company,
I received an extremely aggressive response by telephone from the chairman,
accusing me of appalling misrepresentation and deliberate mischief-making for
referring to the first sentence without the second, so there you have the two
together. Mr O'Connor does not deny that he will keep some of the shares, but
told me that he will be lucky if he ends up with 2-3%.
<p>My point, however, is that it best
serves the minority shareholders if the interests of key executives -
particularly executives as pivotal as Mr O'Connor - are as closely as possible
aligned with those of the minorities. Jack Welch has absolutely refused to
contemplate tying executive compensation to the performance of individual units
within General Electric. The Financial Times of 4th December commented that</p>
<blockquote>
  &quot;allowing top executives to benefit
  from the results of a particular unit or fund could put their interests at
  odds with shareholders. Graef Crystal, an executive compensation expert in
  Santa Rosa, California, said: 'It's like a chef who somehow manages to get the
  finest morsels of tenderloin on his plate and the gristle on someone
  else's.'&quot;
</blockquote>
<p>Mr O'Connor claims that this is appropriate
because (1) he &quot;brought ehealthcareasia to the group&quot;, (2) stock
exchange limits on option issuance prevent him from being adequately
incentivised. Let's take those arguments in turn.</p>
<p>Any chief executive or board of
directors who is not by now considering the impact of the Internet on their
business, the threats and the opportunities it presents, must surely be
extremely remiss. No great originality of insight was required here.
ehealthcareasia has not yet started up, and Mr O'Connor is paid by Quality
HealthCare for a full time job there. (For the record, we'd like to thank Mr
O'Connor for the great job he's done for shareholders to date. We implore him
not to lose that focus now.)
<p>As for incentives, by 31 December 1998
he had been granted 10.75m options at an average exercise price of HK$0.4832. At
30 November prices, the difference between market and exercise price was worth
US$3.7m, not bad for two years work, on top of a salary which appears up to Hong
Kong standards. (We don't know whether more options have been granted in 1999).
His family trust Montel owned 58.58m shares, worth US$24m, as well as 50% of
Cherish which owned another 196.81m ord shares and 31.37m warrants - so Mr
O'Connor's stake at end-November was worth US$68m. He considers this irrelevant,
on the grounds that he paid for the shares. We paid for ours too. If I were in
your shoes, Mr O'Connor, I'd still think it worth coming to work in the morning.
<p>Mr O'Connor assures me that at least one
investor has thanked him gushingly while wishing him even greater corporate
largesse. The Atlantic and Pacific oceans both contain deep rifts, with some
American investors condoning greater incentives and tolerating conflicts of
interest which would be unacceptable in other jurisdictions, so it is fortunate
that we shall have the opportunity to vote. Meanwhile the Hang Seng Index has
risen 7% since the end of November, but Quality HealthCare has fallen 8%, which
strongly suggests that some shareholders have been voting with their feet.
<p>I am told that the independent directors
were happy with the announcement made, although they will be advised by the
Independent Financial Adviser (yet to be named) before making a formal
recommendation to minority shareholders on how to vote. Now,
the usual problem with independent directors in Hong Kong is that they are
appointed and removed by the controlling shareholders, and are therefore
independent only in name, but in this case they include Ronald Carstairs,
Managing Director of Dah Sing Financial Holdings, and Moses Cheng, Chairman of
the Hong Kong Institute of Directors and described in the annual report as <i>&quot;an
advocate of good corporate governance in public companies&quot;</i> - so I'm
somewhat surprised at their apparent acquiescence to date. Let's have a public
debate, for there is a precedent at stake here.
<p>The company argues that options in the
e-subsidiary are normal and necessary to encourage the right people to work
there. This might be true in the US (although it is not clear that General
Electric is yet suffering as a result of its refusal to adopt such incentives),
but it is not necessarily true in Hong Kong, especially when the parent stock is
itself a high-flyer, and of a size where the success of the e-commerce venture
could be very material. Paying with shares or options may enable a start-up to
minimise salary costs, but Quality HealthCare is an established company which
already employs hundreds of professionals and can afford to take on a few more.
The directors will also have to consider the morale of existing staff, who may
be required to sink significant effort into helping the e-commerce team -
particularly in this case, where the project is so integrated with the existing
business.
<p>Even if one were to accept the case for
ehealthcareasia.com stock to be issued to certain specialist staff (which I do
not), it is unclear why this should include Mr O'Connor. We are not aware that
he has particularly relevant experience in e-business. Arguably his skills in
assembling and motivating and managing a team, marketing a concept, raising
finance and managing the exit strategy are highly relevant, but then those are
precisely the skills for which he is employed and incentivised to run the
Quality HealthCare group, and his responsibilities already include the
subsidiaries.<p>If, despite these arguments, one took the view
that Mr O'Connor should be included in the elite group to be incentivised, why
is it necessary to give away 20% up front, leaving discretion with a trustee as
to how much goes to Mr O'Connor and how much to others? In the main board scheme, for
example, the listing rules permit option schemes of up to 10% of the issued
shares (but the company does not have to issue these all at once), with any
individual employee or director limited to 25% of the scheme (equivalent to 2.5%
of the ordinary shares). Surely discretion should remain with the company, and
Mr O'Connor's maximum stake be fixed in advance, to avoid any conflict of
interest when it comes to recommending the appropriate remuneration package for
other employees.
<p>One of QHA's advantages lies in the strong
shareholder incentivisation of the doctors and other key staff who have accepted
stock for acquisitions. Employee shareholders of Quality HealthCare may be
particularly concerned to maintain the alignment of interests with their
chairman. While I find it hard to agree with Mr O'Connor that he personally is
inadequately incentivised, it is possible that the number of professionals
employed and the overall size of the company make this one of the rare cases
where the options limitations set by the listing rules are inappropriate. If
this is thought to be the case, then shareholders could be asked to approve a
scheme whereby all employees with options over QHA shares are given a
proportionate stake in ehealthcareasia.com. A simpler scheme, however, would be
that salaries if necessary should be supplemented by a bonus applied to the
purchase of new QHA shares at market - and this would be a more durable
structure, since an ehealthcareasia flotation, if achieved, could well follow
the &quot;roman candle&quot; pattern so common in the US (soaring skywards, then
plunging to earth), enriching only a single generation of employees rather than
laying a base for the future.
<p>Quality HealthCare at present prices can only be
treated as a concept stock, with a ten-fold rise in the ordinary shares from
their Sept 98 low. I reported to investors in April that the price had risen
steeply but appeared justified on a prospective PE of about 16. Now the current
year PE is believed to be of the order of 50, and with little evidence on the
timing of profits we fall back on market capitalisation as the main valuation
tool. At the end of November this was a diluted US$360m. Given the size of the
Hong Kong market and privatisation drive, commensurate profits are not
inconceivable, but for healthcare companies elsewhere, profitability has been
notably elusive. The strong incentivisation of employee shareholders is one of
QHA's great advantages. If preserved, this may allow the company to restrain
costs while racing for growth and the desired trade sale. Since both this
incentivisation, and the effective cost of new acquisitions, depend on the share
price, all the more reason for the share price to be nurtured. You've done so
well with this company, Mr O'Connor. Don't blow it now.
<p>&copy;<i> Claire Barnes, 1999</i>
<p><i>Claire Barnes is based in Malaysia
and is the founder of <a href="http://www.apolloinvestment.com/" target="_blank">Apollo
Investment Mangement Limited</a>, a regional investment manager. She has been
following Asian equities since 1981, and can be contacted <a href="mailto:%20cbarnes@pc.jaring.my">here</a>.
The opinions expressed are her own and not necessarily those of Webb-site.com.</i></p>

<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2147">DreamEast Group Limited</a></li>
				
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
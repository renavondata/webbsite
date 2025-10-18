
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

<script type="text/javascript">document.title="Serving the Public Interest?";</script>

	<div class="summary">With the negotiations on the proposed merger and flotation of the Stock Exchange and Futures Exchange slowly inching their way forward, we take another look at the inevitable problems that are created by floating a monopoly which on the one hand has a duty to maximise returns to its shareholders while on the other is supposed to serve the public interest.</div>

<h2 class="center">Serving the Public Interest?<br>
<span class="headlinedate">14 June 1999</span></h2>
<p>Over three months have passed since Hong Kong's Financial Secretary
announced in his budget speech the proposed merger of the Stock Exchange and Futures
Exchange, and their subsequent listing as a for-profit body.</p>

<p><a href="ExchangeMerger.asp">We wrote at the time</a> that we commended
the merger but believed that the merged Exchange should be nationalised and provided as a
piece of public infrastructure rather than trying to create a listed, profit-making
monopoly.</p>

<p>Since then, Morgan Stanley Dean Witter has been appointed to advise the
Futures Exchange, Merrill Lynch to advise the Stock Exchange, and HSBC to advise the
Government (which is a big shareholder in HSBC). John Wadsworth of Morgan Stanley Dean
Witter&nbsp; is Vice-Chairman of the HKFE.</p>

<p>Management consultancy McKinsey has also been appointed, presumably to
look at the pricing structure and Scheme of control for the merged entity, which we
discuss below.</p>

<p><em>Webb-site.com</em> brings you up to date with the latest thinking on
this complicated issue.</p>

<h3>Competition Policy</h3>

<p>Actually, that should read anti-competition policy. The Government
confirmed to Legco's Financial Affairs Panel on 8-Jun-99 that the merged body would retain
its legally-protected monopoly on the running of a Stock Exchange here. It is a tenuous
argument to talk about competition between regional bourses, because in reality a lot of
the demand for the services is what economists call &quot;price inelastic&quot;, that is,
the difference in costs would have to be huge before that part of the business is driven
away. There are 3 main sources of income:</p>

<ol>
  <li><p><strong>Listing fees</strong>: the costs of listing in Hong Kong would
    have to be a lot higher than in other markets before Hong Kong-based companies would move <em>en
    masse</em> to another market. The reason: most of their investors, including their
    controlling shareholders, are here. The poor performance of the Jardine group's shares and
    its reduced media profile&nbsp; since it delisted from Hong Kong provide an instructive
    example.</p>
  </li>
  <li><p><strong>Transaction levies</strong>: it is true that some institutions,
    particularly those based in other time zones, are price-sensitive to costs and will deal
    in their own time zone if it is cheaper. However, local institutions would generally
    prefer to deal while they are awake, and almost all retail investors (comprising some 40%
    of transaction volume) would find it inconvenient to transact in other markets or time
    zones. Therefor levies would need to be raised dramatically before the man on the Star
    Ferry finds it preferable to deal and settle Hong Kong shares in London or Singapore.</p>
  </li>
  <li><p><strong>Data fees</strong>: the fees we pay the Exchange for real-time
    and historic price and stock data. If you own the reporting system for stock trades, then
    by definition you have a monopoly on the information that system generates. This power is
    open to abuse, and the Government must ensure that there is affordable access to
    statistical data of this nature.</p>
  </li>
</ol>

<p>In Australia, the Government has gone out of its way (with limited success
so far) to encourage competing exchanges with the newly-listed ASX. The economy also has a
general competition law, the Trade Practices Act. This is something that Hong Kong has
never felt willing to introduce, presumably because it would invite all manner of cases
against well-established cartels.</p>

<p>Having more than one Exchange is not ideal, but if you are going to allow
profit-making exchanges then having more than one is the only real way to create local
competition.</p>

<p>As we have argued before, we don't think key pieces of public
infrastructure such as the Exchange should be run for profit in this way, since it
inevitably necessitates either a competition policy or a scheme of control to prevent
monopolistic pricing. Competition doesn't always make for an efficient economy. It would
not, for example, be efficient to put the two runways at Chek Lap Kok into separate
companies and float them off, simply to provide competition in landing fees. Nor would it
be efficient to divide the road network into lanes owned by different companies and have
electronic road pricing depending on which lane you were driving in. Two domestic postal
services, with two sets of sorting and delivery staff, would be equally stupid - we think
our point is made.</p>

<h3>Monopolies need a Good Scheme of Control</h3>

<p>If you are going to allow a monopoly with only overseas competition to
limit its charges, then it is crying out for a scheme of control which prevents tariffs
for services from rising against the public interest. The importance of an efficient and
low-transaction cost equity market to an economy cannot be underestimated. It is about as
important has having an efficient phone system, or a fair court system for resolving
commercial disputes.</p>

<p>Other markets, when privatising monopolies or near-monopolies, have
created regulators to review pricing policy. These regulators typically set and review a
scheme of control, which allows prices to rise at not more than &quot;CPI minus X&quot;
where &quot;X&quot; is the percentage that prices should fall in real terms, and CPI is
the rate of consumer price inflation. This in effect says that as technology allows
greater efficiencies, these must be shared between shareholders and consumers by way of a
reduction of charges in real terms.</p>

<p>In the past, Hong Kong's government has never really got to grips with
regulation of monopolies. It has favoured a &quot;Return on Assets&quot; arrangement where
companies are allowed to set tariffs so that they make a pre-agreed rate of return on
their investment. This has the effect of encouraging them to invest more money for what
would be marginal returns in a CPI-X arrangement. The Return on Assets applies to Hong
Kong's two electricity utilities as well as its franchised buses.</p>

<p>This is one reason why we have so many nearly-empty buses driving around
during the non-peak hours, worsening air pollution. The more buses you buy, the more money
you make so long as you don't price it so high that people switch to other transport (if
their route allows it). The companies have no incentive to curtail services during slow
periods, since they are allowed to price their service to achieve the target rate of
return. Recently the Return on Assets arrangements has come in for criticism in Legco when
an Audit Report revealed that power demand estimates, made in the early 1990s, had been
excessive, allowing for the installation of excess capacity and hence higher tariffs than
would otherwise have been the case.</p>

<h3>Minimum Commissions</h3>

<p>There has so far been no mention of whether our Big Bang will include the
abolition of minimum commissions, which serve to preserve a revenue stream for small
brokers by preventing the free negotiation of commissions. When the minimum is abolished,
Hong Kong will become a lower-cost place to transact, which should increase trading volume
on the Exchange.</p>

<p>The advent of &quot;AMS3&quot; next year, which will connect the
Exchange's automated matching system directly to brokers and hence to their clients, will
allow straight-through dealing. The days when a large trade cost more to execute than a
small trade are fast receding, as orders which are placed on an &quot;execution-only&quot;
basis will require no human intervention. Hence commissions will no longer be set only on
value. If commissions become negotiable, then we will have internet brokers executing
orders for a fixed fee which could be as low as HK$88 per trade (inevitably, the market
will settle on a lucky number, just as internet access fees have settled at $108/138 per
month). This is already happening in the US.</p>

<h3>Trading Rights</h3>

<p>Small brokers have pressured the Government to allow a staggered release
of new seats on the Exchange, and to allow them to continue to transfer (read
&quot;sell&quot;) their seats during that period. In other words, they will get shares in
the New Exchange <u>and</u> still be able to sell their seats, which is like having your
cake and eating it twice. This is less of a Big Bang and more of a &quot;little
whimper&quot; in the reform process.</p>

<p>Small brokers,like blacksmiths at the dawning of the motor car, must face
the fact that their days are numbered unless they adapt and invest in new technology.
Adaptation in this case probably means merging in order to allow the economies of scale
that broking in the future demands, as margins will be wafer thin.</p>

<p>By proposing to allow the transfer of trading rights and the release of
fixed quotas of new seats over a number of years, the Government is backtracking on a key
need of the reform process, namely to open the broking market up to new, low-cost
entrants. The necessary implication of this position is that new seats will be limited and
costly, so as to allow brokers to realise a similar price for their seats. Instead, we
believe the Exchange should immediately allow any company with the necessary prudential
capital and appropriately qualified management to obtain trading rights on the Exchange. </p>

<p>The perpetuation of a finite supply of Exchange seats is similar to the
way a large part of your taxi fare relates to the fact that there is a finite supply of
taxi licenses. A large part of each fare goes to service the loan taken out to buy the
license, which usually costs more than the cab itself.</p>

<p>Each broker should be allowed to use as many trading terminals as they
want, on a user-pays basis.In any case, when AMS3 comes along, the number of trading
terminals will be almost irrelevant since orders will not be limited by the speed of a
human hand on the keypad, but by the speed of electronic links. Of course, the Exchange
could place artificially limits by setting a cap on the number of outstanding orders per
terminal. Key to the removal of the limit on seats is the closure of the Exchange Floor,
which is a relic whose main purpose is now to physically limit the number of seats, as
well as making it easier to commit offences such as rat-trading and front-running by
unrecorded person-to-person communication.</p>

<h3>Control</h3>

<p>The Government will have appointed seats on the board of the Exchange. In
Australia, the ASX has no government appointees, and regulation by the Australian
Securities and Investments Commission is considered good enough. We must ask ourselves
whether it is overkill to have government appointees on the board, given that the Exchange
itself will be overseen by the SFC. The answer again points to the oddity of having such a
key piece of public infrastructure floated as a profit-making body. The Government knows
that the Exchange is key, which is why it wants control. It is surely concerned that small
brokers, who will dominate the initial shareholder list of the new body, would otherwise
use their power to run the Exchange by determining the outcome of directors' elections.</p>

<p>It has been suggested that shareholdings will be limited to 2.5% per
person (including associates) but it seems almost impossible to define who is an associate
of someone else in a way that would prevent small brokers, or other shareholders, from
voting together. Therefor we are likely to see a board which comprises a majority of
Government appointees and Exchange staff.</p>

<h3>Regulation</h3>

<p>Reports suggest that the Steering Committee on Enhancement of Financial
Infrastructure is leaning towards all regulation of brokers and listed companies being
conducted by the SFC. We commend this approach, which is a step on the way to statutory
backing for the Listing Rules and regulation of brokers. The SFC will take on a role much
like the Securities and Exchange Commission in the USA. We will no longer see the
terrifying penalty of a &quot;public censure&quot; but instead more meaningful financial
penalties being doled out to offenders.</p>

<p>It is important that in its new role, the SFC continues the existing
Exchange practice of using advisory committees of market participants when formulating
policy. Only in this way can regulation remain in step with the practicalities of the
market.</p>

<h3>Valuation</h3>

<p>The valuation exercise is probably turning into a bit of a bragging match.
Since it is only the relative values of the two bodies which determines what percentage
the members will get, it is in each side's interest to maximise their valuation. The
problem is, they have no way to estimate future earnings until we know what the Scheme of
Control (or not) on prices of the monopoly's services will be. The looser the Scheme, the
more the merged Exchange will be worth. Each side is busy inventing hypothetical figures
for the value of their future businesses, such as the Exchange's GEM market which will not
be open for business until later this year. </p>

<h3>Clearing Houses</h3>

<p>The good news is that the parties seem to have accepted that the Clearing
Houses should retain their non-profit making status. That is, as their surplus rises, that
which is not needed for investment in the infrastructure should be returned to investors
in the form of lower fees for things like custody and settlement. It would be wrong to
turn the clearing system into a profit-making part of a listed company, since the whole
object is to provide a safe and low-cost body for the centralised custody of securities
and settlement of transactions. This should be a stepping stone to the eventual
&quot;dematerialization&quot; of shares, whereby share registers become electronic and
certificates for individual stocks are no longer issued.</p>

<h3>Timing</h3>

<p>Our greatest fear is that this whole process will be rushed and
half-baked. If it were not for the difficult politics of being seen to pay around HK$4-5bn
to a relatively small group of people, then the Government might have done the logical
thing and nationalised this key public infrastructure. Thereafter it could be run by
incentivised, progressive management at the lowest possible tariffs for the benefit of
Hong Kong. Performance targets are not incompatible with Government ownership.</p>

<p>If the Government proceeds with the flotation path, then it is essential
to put in place a sensible Scheme of Control which puts the public interest and long-run
real tariff reduction ahead of maximising profit by the monopoly. It will leave the shares
of the Exchange as a pretty unexciting, utility-type investment, but that is in the
greater interest of the future capital market in Hong Kong.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=137">Exchanges merger</a></li>
				
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
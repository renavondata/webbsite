
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

<script type="text/javascript">document.title="Waivers Galore for Tom.com";</script>

	<div class="summary">The SEHK, demonstrating the inherent conflict between its regulatory role and its future role as a profit-making company, has begun  waiving listing rules in a wholesale fashion to attract new listings. We look at the 3 major waivers granted to Tom.com on placings, lock-ups and a five-fold increase in share options, and at the wider issue of regulatory decay through competition.</div>

<h2 class="center">Waivers Galore for Tom.com<br>
<span class="headlinedate">21 February 2000</span></h2>
<p>This week's listing of Tom.com gives us a taste of things to
come in the new world of a listed monopoly stock exchange. Readers will know
that, subject to the passing of enabling legislation, the SEHK and HKFE are to
merge into the new Hong Kong Exchanges and Clearing (<b>HKEC</b>). </p>

<p>We have <a href="ExchangeMerger.asp">explained before</a> that
if the Exchange is to become part of a listed, for-profit entity then this
status is incompatible with its regulatory role. As a profit-making entity, the
HKEC, whose management will be motivated by share options and bonuses, has a
fiduciary duty to maximise profits. One way to do this is to loosen regulations
to attract more listing candidates, lowering the entry barriers at the expense
of reduced investor protection. Even worse, rather than amending the rules, the
Exchange seems capable of just waiving them whenever it chooses, creating
regulatory uncertainty and a somewhat bumpy playing field. </p>

<p>The British government has already recognised this conflict of
interest and, with the demutualisation of the <a href="http://www.londonstockexchange.com/" target="_blank">London
Stock Exchange</a>, they will remove the <a href="http://www.listing.co.uk/" target="_blank">UK
Listing Authority</a> from their exchange and transfer it to the government
regulator, the <a href="http://www.fsa.gov.uk/" target="_blank">Financial Services Authority</a>. </p>

<p>But in Hong Kong, the interests of profit and listed companies
have been put before the interests of investor protection, and the listing
division will be left as part of a for-profit company. </p>

<h3>Waivers galore</h3>

<p>The SEHK has granted at least 3 major waivers to Tom.com. These
relate to: </p>

<ol>
  <li>Issue of shares within 6 months of listing.</li>
  <li>Grants of options in excess of the normal 10% of issued
    share capital, up to 50%.</li>
  <li>Waiver of lock-up rules on Cheung Kong and Hutchison from 2
    years to 6 months.</li>
</ol>
<p>In addition, it is questionable whether transferring a few
assets and web domains from Metro Radio into a portal company with a proud
post-launch history of 5 weeks, and throwing in a couple of recently acquired
businesses, really gives it the 2-year track record under the same management
that the listing rules normally require. But we'll pass on that (for now), and
focus on the 3 waivers.&nbsp;</p>
<h3>1. Placings Within 6 months</h3>
<p>On the matter of share issues, the prospectus says:</p>
<blockquote>
  <p>&quot;there is a possibility that Tom will issue new Shares,
  whether as consideration or to raise funds, for the purposes of acquisitions
  or investments in Internet and related businesses within the first six months
  of listing.&quot;</p>
</blockquote>
<p>The SEHK which granted this waiver is the same SEHK which
recently refused permission for entrepreneur Jimmy Lai's <a href="http://www.nextmedia.com/" target="_blank">Next
Media</a> (which is also an internet business) to issue shares for a placing
within 6 months of its reverse takeover (which was deemed to be a new listing).</p>
<p>GEM rule 17.29 prohibits such issues within six months but
states in a note that</p>
<blockquote>
  <p>&quot;in <u>exceptional circumstances</u>, the Exchange may be
  prepared to waive the requirements of this rule, for example where the listed
  issuer raised, at the time of its initial public offering, less than the
  maximum amount stated in its listing document&quot;</p>
</blockquote>
<p>Clearly the circumstances described in that note do not apply,
because the Tom issue is fully underwritten. We can see nothing
&quot;exceptional&quot; about Tom which makes it necessary for the Exchange to
allow the possibility of further issues even before they have even been
proposed.</p>
<h3>2. Grant of share options in excess of 10%</h3>
<p>Under GEM rule 23.03(2), share option schemes are limited, in
aggregate, to 10% of the issued share capital of a listed issuer from time to
time.</p>
<p>The Tom.com prospectus states:</p>
<blockquote>
  <p>&quot;As a result of an application made on behalf of Tom, the
  Stock Exchange has granted a waiver from strict compliance with Rule 23.03(2)
  of the GEM Listing Rules. On this basis, Tom is allowed to increase the Scheme
  limit to 50% provided that if options are granted to a full-time employee who
  is a substantial shareholder or an Associate of a substantial shareholder of
  Tom, the granting of such option will be subject to independent shareholders'
  approval.&quot;</p>
</blockquote>
<p>The Substantial Shareholders in this case are Hutchison, Cheung
Kong and a Ms Chau Hoi Shuen. The definition of &quot;Associate&quot; in this
case has no bearing on companies since they cannot be employees, so the only
people affected by the proviso are Ms Chau, her spouse (if she has one) and
children or step-children under 18 (who are unlikely to be employed). Anyone
else (including, for example, a Director) is eligible to receive the options
without shareholders' approval.</p>
<p>This waiver amounts to a huge variation to the listing rules for
no good reason. Tom.com is not the first high-tech company with a need to
attract employees, so that is no justification in itself.</p>
<p>In a wide-ranging 
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/conpaper3.htm">consultation
paper</a>  on the main board listing rules released in May-99 (the results of
which we are <u>still</u> awaiting), various changes were proposed to the rules
governing option schemes on the main board, and although these have not been
implemented, they are recognisable in the current GEM rules.</p>
<p><i>Webb-site.com</i> made a written submission on that
consultation in which we advocated that, to provide flexibility in recruitment
of key personnel, it should be possible to grant options outside the terms of a
general 10% option scheme, but that any options granted outside the scheme should be made
subject to independent shareholders' approval on a person-by-person basis. We also
said that, in order to remove concerns about reciprocity in the board room (you
approve mine and I'll approve yours), all directors and substantial shareholders
should be excluded from voting, regardless of whether they were involved in the
particular option. We have nothing against special option packages to hire
special people, but they should have independent shareholders' consent to remove
the conflict of interest.</p>
<h4>A strange kind of consultation</h4>
<p>We now find it necessary, in the public interest, to reveal that subsequent
to the May-99 consultation, the SEHK quietly wrote on 29-Nov-99 to each person
who had made a submission (including us) and proposed further changes, including
the ability for shareholders to grant a renewable 10% general mandate to grant
options, which could be renewed every time it ran out. Since the controlling
shareholders would be allowed to vote on this, and they are usually the same
people as the board, it effectively allows them to keep renewing their own
mandate (the same way that some companies abuse the placing general mandate to
repeatedly issue shares) and this could be disastrous. The only limit the
Exchange placed on this repeat renewal was a proposed limit of 50% of the issued
shares from time to time.</p>
<p>We didn't bother to reply to this informal consultation because
we felt our views were clear enough from our first submission. Besides, the
general public was not being consulted in the normal way.</p>
<p>The discretion to grant options over 10% of the issued shares is
quite enough for general purposes. If a board has more discretion than that,
then there is a serious risk that it could be abused. For example, there have
been several cases of share option schemes being exhausted just a few weeks
prior to a major corporate move, such as a takeover or acquisition, which has
allowed management to benefit from the uplift. These grants happen far enough
from the event that you cannot prove insider dealing, but it is obvious what is
going on.</p>
<p>Another possible abuse is to blow the option scheme as a
defensive move prior to a hostile takeover. Imagine, if a company had the
ability to grant options in this way over 50% of its issued shares (or 33% as
enlarged by the exercise), this could have a major effect on the control
position and would heavily dilute other shareholders. This is why independent
shareholders should approve each grant outside the 10% limit.</p>
<h3>3. Waiver of lock-up rules</h3>
<p>GEM Rule 13.16 imposes a 2-year prohibition on sales by
&quot;initial management shareholders&quot;, which basically means people (other
than professional funds such as venture capitalists) with more than 5% of the company. The reason that the
2-year lock-up was put into the rules (as opposed to the 6-month lock-up
required on the main board) was that GEM companies are in general very new and
depend heavily on their management founders, therefore they should stick with it.
However, GEM Rule
13.17 says that</p>
<blockquote>
  <p>&quot;Nothing in Rule 13.16 shall prevent the disposal of an
  initial management shareholder in relevant securities in the following
  circumstances&quot;</p>
</blockquote>
<p>It then lists 6 specific circumstances (including takeover after
1 year, or death), none of which applies to Tom.com at the present time, and
concludes with a seventh sweep-all clause:</p>
<blockquote>
  <p>&quot;(7) in any other <u>exceptional circumstances</u> to
  which the Exchange has given is prior approval.&quot;</p>
</blockquote>
<p>The Tom.com prospectus states:</p>
<blockquote>
  <p>&quot;As a result of an application made on behalf of Tom, the
  Stock Exchange, having regard to the <u>exceptional circumstances</u> of this
  case, has granted a waiver to the effect that the moratorium applicable to
  [Cheung Kong and Hutchison] has been reduced to six months in respect of an
  aggregate of 1,380,000,000 Shares (representing 48.4% of the enlarged issued
  share capital of Tom)&quot;</p>
</blockquote>
<p>We see no exceptional circumstances to justify this, and if the
Exchange does, they had better be good. What prior circumstances mean that we
should allow, in advance, for 48.4% of the company to be dumped on the market at
any time after 6 months? Are they planning to sell out? Couldn't they seek
permission at the time? We trust that the &quot;exceptional circumstances&quot;
do not include the identity of the controlling shareholders. If the Exchange has
one rule for conglomerates and another for &quot;less trustworthy&quot;
companies then it is failing to understand the purpose of rules.</p>
<p>In the last few GEM listings there have been a few other
relaxations of this rule for small management shareholders but they were not on
this scale, and followed a refusal by the SFC to amend the rule back in
November. Since then, the SFC has remained silent on the increasing audacity of
the Exchange's waivers. To us, this silence implies either incompetence or
complicity on the part of the SFC.</p>
<h3>Playing fields and Rules&nbsp;</h3>
<p>There's a bigger issue at stake here. Whether or not you agree
with the principles behind the 3 waivers, the resulting changes are so
fundamental that they should be done by amendment to the listing rules (which
require SFC approval), not by waiving the rules for one or two companies.</p>
<p>If the Exchange waives the rules for one company, then everyone
else will surely request the same. If those rejects are rejected, then the first
waiver looks like favouritism. In the alternative, If the requests are all
accepted, then the Exchange has effectively changed the rules without going
through the proper procedure. Then every case becomes &quot;exceptional&quot;
and to be unexceptional is an exception to the rule. There will be one set of
printed rules and then an unwritten set of known waivers. Investors will no
longer be able to rely on the listing rules for protection from minority abuse.</p>
<p>It may well be that, in order to compete with overseas exchanges
such as Nasdaq, the Exchange needs to change some rules, but that need should be
carefully weighed by the SFC against the need to protect investors. As it is,
the Exchange, by granting wholesale waivers, has taken matters into its own
hands, and the SFC has remained silent.</p>
<p>There is also the question of global reputation to think about.
Lower the standards too far, and some investors will shy away, because their
risk is increased. That would increase the cost of capital. Do we want to be a
world-class financial centre or a free-for-all cowboy exchange? In our view, the
SEHK has less to fear from defections than from regulatory decay, for a simple
reason - local companies need the local market. Most local tech stocks would not
get the kind of frenzied retail market needed to sustain their shares if they
weren't listed in Hong Kong.</p>
<h3>Regulatory Decay</h3>
<p>The logical conclusion of &quot;regulatory competition&quot;, if
it is allowed to persist, is a decay of the listing rules to the point
where the investor has only the law to protect him or her, not the listing
rules. In the US, the securities laws are strong and the system allows class
action suits and no-win-no-fee plaintiff action. Both act as a deterrent. The
Hong Kong legal system does not permit either, which makes it even more
important that the Exchange and the SFC do their job.</p>
<p>So, ladies and gentleman of the SEHK and SFC, exactly what are
the rules today?</p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10265">TOM GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=147">Growth Enterprise Market</a></li>
				
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

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

<script type="text/javascript">document.title="Views on the GEM consultation";</script>

	<div class="summary">This page contains the views of Webb-site.com on the GEM consultation paper. Read them, decide whether you agree, then submit your view to the SEHK using our special form.</div>

<h2 class="center">Views on the GEM consultation<br>
<span class="headlinedate">26 June 2000</span></h2>
<h3>1. The lock-up (moratorium period) </h3>

<p>The Exchange proposes to reduce the lock-up period for
Controlling Shareholders from 2 years to 6 months after listing. In the second 6
months, Controlling Shareholders must retain at least 35% of the company, while
&quot;Initial Management Shareholders&quot; may dispose of up to 50% of their
original shareholding. </p>

<p>A Controlling Shareholder is one or more persons who control at least 35% of
the issuer, while an Initial Management Shareholder is one who owns at least 5%
and is able, as a practical matter, to direct or influence the management of the
issuer. All Controlling Shareholders are deemed to be Initial Management
Shareholders. </p>

<p>A certain amount of misinformation has been spread suggesting
that the current rules prevent venture capitalists who hold 5% or more, from
disposing of their shares for
2 years, but this is only true if they are represented on the board. Otherwise,
they are only &quot;Significant Shareholders&quot; and are subject to a 6-month lock-up, no worse than underwriters typically require on Nasdaq. </p>

<h4>Our View </h4>

<p>The Exchange's proposal on lock-ups should be viewed in the
context of its proposal (see below) to reduce the track record requirement from 2 years to 1
year of active business pursuits prior to listing. Previously, a company had to be <u>4 years</u> old (2 years pre-listing,
plus the 2-year lock-up) before management could start to sell out (except as
part of the IPO). This meant that companies were likely to be more mature and
less reliant on their management when they started to sell. </p>

<p>But if the track record is shortened to 1 year and management
can start to sell only 6 months after listing, then the company might only be <u>18 months</u>
old when the management starts to unload. </p>

<p>We don't think that this is fair to public investors who have
put their money into a company, often at much higher prices than management ever
paid. The Exchange offers the spurious reason that management shareholders might
want to <i> &quot;exchange shares with other investors whose investment is
beneficial to the new applicant&quot;. </i> We believe that objective can be met by
the issuer issuing new shares in a share swap rather than allowing management
shareholders to be the source of the swap. </p>

<p>We note that the consultation paper does not mention the
requirements for the Alternative Investment Market (AIM) in London. AIM requires
that if a company has been generating revenue from its main activity for less
than 2 years prior to joining AIM, then directors and employees may not sell
their shares for 1 year after admission. </p>

<h4>Our proposal </h4>

<p>Our proposal is that initial management shareholders should
continue to be entitled to dispose of shares as part of an IPO (because the
public has notice of this before deciding to invest), but that after listing,
they should be locked in for at least <b>1 year</b>. After that time, for a
further year, any initial management shareholder wishing to dispose of shares
should give 5 clear business days' public notice of the maximum amount of shares
that they intend to dispose of, and may then dispose of up to that amount within
a 10 business day period. After that, the window is closed and new notice must
be given of any further intended disposals. Full disclosure of the notice and
resulting disposal (including the prices) should be made public through
announcement on the GEM web site. </p>

<p>Although the disclosure of an intention to dispose may
negatively affect the share price, we believe this is fair because the mere fact
that an initial management shareholder is intending to dispose of stock should
be regarded as price-sensitive information which the company should be required
to disclose. If the Exchange takes the view that this information is not
price-sensitive, then they should have no problem with disclosing it in
advance!&nbsp; </p>

<p>Management should not be entitled to deal before that
information has been absorbed into the market, hence the proposed 1-week notice
period.&nbsp; </p>

<h3>2. Share issues within 6 months after listing</h3>

<p>The Exchange is proposing to lift the ban on new issues of
shares within the first 6 months of listing, subject to certain safeguards. The
shares could only be issued <i>&quot;for the purpose of an acquisition of a
business or assets which would complement the focused line of business of the
issuer&quot;. </i>We believe that these words are open to wide interpretation.
For example, would Timeless Software's <a href="timelessproperty.asp" target="_blank">purchase
of property</a> after its IPO have qualified if it had been made in return for
new shares? It would seem so.</p>

<p>The safeguards include a lock-up on the new shares if the
recipient owns 5% or more of the issuer, and the obtaining of independent
shareholders' approval.</p>

<h4>Our view</h4>

<p>There is a risk that listings will be &quot;engineered&quot;
simply for the purpose of establishing a shell into which businesses or assets
which have been excluded from the IPO can be injected immediately afterwards,
thus escaping the scrutiny of a prospectus.</p>

<p>We therefore believe that transactions involving share issues in
the first 6 months after listing should only be permitted if they would not
constitute &quot;Major Transactions&quot; within the meaning of the Listing
Rules. In essence, this limits the assets acquired to less than 50% of the
existing assets, and the shares to be issued shall be less than 50% of the
existing issued shares (or 33% of the enlarged issued shares) of the
company.&nbsp;</p>

<p>We propose an additional requirement that the vote of
independent shareholders must be held on a poll, not on a show of hands,
regardless of whether the transaction is a connected transaction or not. We've
explained why <a href="../pages/loopholes.asp#ConnectedT" target="_blank">before</a>.
This requirement already applies to connected transactions on the GEM, but not
on the main board.</p>

<p>The auditor of the company should also be required to attend the
meeting and certify the result of the poll and confirm that those shares
excluded from voting have in fact not voted .</p>

<h3>3. The track record (&quot;active business
pursuits&quot;)</h3>

<p>The Exchange proposes to reduce the track record of active
business pursuits from 2 years to 1 year.</p>

<h4>Our view</h4>

<p>The Exchange has already made a mockery of the track record
requirement by allowing companies such as Tom.com and Sunevision (both of which launched their portals only in the
last few months before listing) to list by transferring older subsidiaries into their listing
vehicle and then calling that a track record.</p>

<p>Tom.com did it by acquiring a Shenzhen developer of software for
electronic customs documentation, and Sunevision included a company which
installs satellite dishes on the roofs of apartment blocks. Neither of these had
much to do with the core businesses on which the stocks were promoted, and you
would struggle to find a public investor (other than our readers) who could
identify where the track records came from. </p>

<p>The GEM market was not designed to be a market for seed capital.
One-year-old start-ups are highly risky investments, and a line has to be drawn
between helping to fund young companies and protecting public investors from
&quot;<i>over-aggressive issuers and promoters</i>&quot; in the Exchange's own
words (May-98 consultation paper). </p>

<p>Venture capitalists are experienced investors and
are probably a better judge of start-ups than the mass market. The VC industry
in Hong Kong has been developing rapidly on the back of the technology boom, and
any firm which cannot raise sufficient venture capital to survive its first 2
years, probably does not deserve to be taking public money. We therefore believe
the requirement for a 2-year trading record should stay and should be more
rigorously enforced. </p>

<h3>4. Accountants' report</h3>

<p>The Exchange proposes that if the minimum track record period is
reduced to 1 year, then the minimum accountant's report will be reduced to the
track record period or 2 years (whichever is greater).</p>

<h4>Our view</h4>

<p>As noted above, we believe that the track record period should
remain at 2 years, so no amendment would then be needed to the coverage period
of the accountants' report. However, we believe that the accountants' report
should be expanded to include cash flow statements and balance sheets rather
than just net asset statements. This would bring them into line with the recent
amendments to the main board listing rules (update 51, 16-May-00).</p>

<p>We also take the opportunity to propose that the requirements in
relation to the contents of quarterly reports on GEM be brought into line with
the new requirements for interim reports on the main board (update 51), namely
that they should include a balance sheet and cash flow statement and be reviewed
by an issuer's auditors or audit committee. It is simply unacceptable to see the
balance sheet of a growth company only once a year. US standards (which the
Exchange is so fond of quoting) are quarterly balance sheets and cash flow
statements.&nbsp;</p>

<h3>5. Share Option Schemes</h3>

<p>The Exchange is proposing a wide-scale relaxation of the rules
relating to option schemes. This is a complicated issue which we will respond to
in sections. </p>

<h3>5.1 Option schemes of unlisted subsidiaries</h3>
<p>The Exchange proposes that share schemes of unlisted
subsidiaries will no longer be governed by the listing rules (Chapter 23).</p>
<h4>Our view</h4>
<p>We oppose this for a simple reason - if the option schemes of
subsidiaries are not regulated, then it opens a loophole for listed issuers. An
issuer could avoid regulation by holding all of its assets and subsidiaries
through an unlisted direct subsidiary. That subsidiary would then have an
unregulated option scheme and would issue options to whomever and in whatever
quantities and terms it pleases (including, presumably, to executive directors
of the listed issuer).</p>
<p>The Exchange may consider that these options, which convert into
unlisted shares, are worthless, or pose no threat to public shareholders of the
listed issuer - but that is untrue - they dilute the economic interest of the
listed company in its own business. Utlimately, in order to recover its economic
interest, the listed issuer may be forced to make an offer to buy out the new
shares in its unlisted subsidiary, and that offer may be in new shares -
effectively taking the options back into listed shares. It's a two-step
side-step of the listing rules. So we believe the listing rules should apply to
share schemes of any subsidiary.</p>
<h3>5.2 Adoption of a new scheme</h3>
<p>At present, the rules require that anyone who might receive
share options under a share scheme is banned from voting on whether the company
should adopt the new scheme. The Exchange proposes to lift that ban, so that
management shareholders (who often control the company) would be able to vote on
schemes from which they would benefit.</p>
<h4>Our view</h4>
<p>We oppose the amendment. The Exchange attempts to justify its
move by saying <i>&quot;in respect of the dilution effect <u> which relates to all
shareholders</u>, the Exchange is of the view that all shareholders should be
allowed to vote...&quot; </i>but of course this is nonsense. If you are granted
options under a scheme, your fully-diluted shareholding after the grant of
options to you will always be higher than before the grant. Although you will be
diluted by the grant of options to other parties, you will always be better off
than a shareholder who receives no options at all.</p>
<p>We believe that public shareholders will not hesitate to approve
a share scheme which motivates the management of their company, but if they are
not given the right to do so (by being outvoted by controlling or management
shareholders) then they are bound to suffer cases of abuse.</p>
<p>In any event, most GEM candidates come to market with
pre-approved share option schemes, so there should be only rare occasions when a
new scheme needs to be adopted (or amended). The vote should be held on a poll.</p>
<h3>5.3 Eligible Participants</h3>
<p>Under current rules, share options can only be granted to
full-time employees of the issuer or of a subsidiary. The Exchange proposes to
remove that restriction and require only that the issuer should &quot;define the
participants&quot; before the scheme is approved. This would allow issuers to
use options to reward suppliers, customers, independent directors and so on.</p>
<h4>Our view</h4>
<p>We support the amendment. We believe that the issuer should be
free to use whatever instruments (cash, securities, options or otherwise) it
chooses in transactions. Independent directors may be more motivated to enhance
shareholder value if they are given share options as part of their
remuneration.&nbsp;</p>
<p>However, a poorly-recognised aspect of options is that they are
not granted at &quot;no-cost&quot; to the issuer. It is true that they do not
involve the outlay of cash by the company (and indeed, cash is received if the
options are
exercised). However, the company bears the cost through future
dilution of the equity interests (and voting rights) of existing shareholders.
These costs are not recognised in the main profit and loss account, but will
eventually show up as lower earnings per share when the options are exercised,
creating new shares at below market price.</p>
<p>Taken to a theoretical extreme, a company could pay for all its
inputs (goods, services, labour, power and so on) using share options,
recognising no expenses at all. Every dollar of revenue would become a dollar of
profit, but earnings per share would trend towards zero as the number of
shares increased towards infinity.</p>
<p>There is a real danger that investors will overlook this area,
and we believe it should be addressed by requiring a numeric breakdown of the
&quot;fully diluted earnings per share&quot; figures in the profit and loss
account to show how much of the dilution (in $ per share) arises from
outstanding share options, convertible securities, warrants and so on.</p>
<p>It is also high time that issuers should be required to set
out in their financial reports the net tangible assets per share and a
fully-diluted version of the same, with a breakdown quantifying the dilutive
effect of share options. At the moment, we have to work it out for ourselves.</p>
<h3>5.4 Mandate for Granting Options</h3>
<p>The current rules limit the grant of options under a scheme
(aggregated with all other schemes) to 10% of the issued shares from time to
time. The Exchange proposes to raise this limit by allowing shareholders to
grant general mandates in 10% chunks, up to a limit of 30%. The Exchange also
proposes to allow specific approval for the grant of options in excess of the
10% limit of each tranche.</p>
<h4>Our view</h4>
<p>We agree that the 10% limit may be overly restrictive in certain
cases, and believe that <i>public</i> shareholders should be able to approve an increase
in that limit (on a poll). A renewable general mandate is a sensible way to achieve this.</p>
<p>Consistent with our views under para 5.2 above, we believe that
any party who might receive (or has received) options under the scheme should be
prohibited from voting on the award of a general mandate. Otherwise, it would be
possible for directors (who usually control a company) to repeatedly exhaust and
renew the general mandate in their own discretion. This self-mandating process
has been seen many times in the case of the placing general mandate - see our
article <a href="placing.asp" target="_blank">The Placing Game</a>.</p>
<p>We doubt that public shareholders will object if there is a
justifiable need to renew the mandate. It is in their interest to approve
mandates if the overall effect on earnings is likely to exceed the dilutive
effect of the options. However, if they are dissatisfied with the way the
previous mandate has been used (or abused) then they should be able to block
further mandates.</p>
<p>When companies tap the public market for funds by going to GEM,
then they must expect to offer certain basic protections to minority
shareholders from abuse. This is one such protection.</p>
<p>On the second leg of the proposal, we see no need to allow for
specific approvals for grants in excess of the 10% limit. Instead, companies
should seek a new 10% mandate and grant the options from that tranche.</p>
<h3>5.5 Total limit on options</h3>
<p>The Exchange proposes that the original 10% limit on the options
which may be granted under a scheme (aggregated with all other schemes) be
increased to 30%.</p>
<h4>Our view</h4>
<p>Provided that there are safeguards on the number of options
which may be granted to individuals (see below), and provided that the potential
recipients of options are prohibited from voting on general mandates as we
propose above, then we believe that there is no need to impose a total scheme
limit.</p>
<p>However, if the Exchange does not implement these safeguards, then
the limit should remain at 10%, as this sets a cap on the potential abuse of minority shareholders.</p>
<h3>5.6 Limit on options granted to an individual
participant</h3>
<p>The existing rules limit each participant to 25% of the
securities which are subject to the share scheme over a 10 year period. The
Exchange proposes to introduce an annual limit for each participant of <i>&quot;0.5%
of the securities subject to the share scheme for a 12-month period&quot;.</i></p>
<h4>Our view</h4>
<p>Perhaps the GEM consultation paper misstated the proposal. The
main board is currently in a consultation process over options, but the
proposals on the GEM and main board appear to differ. On the main board, the
proposal is 0.5% of the existing <u> issued shares</u> per year, not 0.5% of the
<u>
securities subject to the scheme</u>. Obviously if the scheme only covers 10% of the
company then the GEM proposal amounts to 0.05% of the company.</p>
<p>We believe the limit should be framed not in terms of the scheme
but in terms of the issued share capital. Furthermore, we believe that a limit
of 0.5% of the company (i.e. the issued shares) per year is appropriate. It
allows one individual to receive options over 5% of the company in a 10-year
period.</p>
<p>If an exceptional talent requires a better package, then it can
be put to public shareholders for approval. To remove concerns of reciprocity in
the boardroom, all the other directors should abstain from voting on such
approval. Otherwise we'll have everyone agreeing that everyone else is an
exceptional talent.</p>
<h3>5.7 Granting of options to connected persons</h3>
<p>The Exchange proposes that any grant of options to a connected
person should be approved by the independent non-executive directors (INEDs).</p>
<p>In addition, the Exchange proposes that if the connected person
is also a substantial shareholder or an INED, and the options in the previous 12
months exceed 0.1% of the company and exceed $5m in value, then the option
should be subject to shareholders' approval with all connected persons
abstaining.</p>
<h4>Our View</h4>
<p>As we have explained before (see our article - <a href="INED.asp" target="_blank">Hong
Kong's not so independent directors</a>) these people are seldom truly
independent and are not representative of minority shareholders, who are
powerless to appoint or remove INEDs since these appointments are made in the
boardroom and voted on at the AGM by controlling shareholders.</p>
<p>We have previously proposed that INEDs can be made
representative by removing the ability of controlling shareholders and directors
to vote on their appointment and removal. This would effectively mean that
public shareholders as a class would have representatives on the board. If they
are not happy with the INEDs, they can be replaced. The vote could be held at
each AGM. INEDs would be given space in the annual report to report on their
work prior to the next election.</p>
<p>Unless the Exchange adopts these proposals, public shareholders
should not be asked to delegate responsibility to people who are often just
rubber stamps for the executive directors, and who lack accountability to public
shareholders.</p>
<p>We believe that the limits on individual participants as
proposed in (5.6) above (0.5% of the company per annum per director) are
sufficient and that INEDs can be included as participants. As noted in (5.6), we
believe that independent shareholders should approve grants in excess of that
limit. This <i>includes</i> grants to executive directors.</p>
<p>As regards substantial shareholders who are not full-time
executive directors (and are not associates of them), we see no reason why they
should be granted options at all, but if they are granted options, then the
transaction should be treated as a connected transaction in the normal way. So
the Exchange would need to remove the exemption set out in Note 1 to Rule
19.59(1) so that Rules 20.54 to 20.58 will apply.</p>
<h3>5.8 Disclosure of options granted</h3>
<p>The Exchange proposes to require disclosure of the options
granted to connected persons (incuding directors) and to certain other
categories of person. The disclosure should incude a &quot;fair value&quot; and
the method used to calculate such fair value.</p>
<h4>Our view</h4>
<p>We are in favour of the proposed disclosure requirements, save
as follows. The fair value of options changes constantly. Most option models
take into account the market price, exercise price, volatility of the market
price, expected dividends, the risk-free interest rate and the time to expiry.
The proposal is silent on the time at which the fair value would be calculated.
Is this to be the date of grant?</p>
<p>Some of the assumptions in a typical valuation model (such as
future dividends and future volatility) are subjective, and the management would
often have no comparable instruments (such as exchange-traded options) from
which to infer market expectations.</p>
<p>We therefore believe that the statement of option values offers
limited benefit and may prove impractical or costly for companies to implement.
Instead, we propose a more detailed breakdown of the dilution in
&quot;fully-diluted earnings per share&quot; and fully-diluted net tangible
assets per share as explained in para (5.3).</p>
<p>While we are on this subject, as stated in a previous submission
on the main board, the Exchange should take a look at the Securities (Disclosure
of Interests) summary statements which it publishes daily. The section dealing
with directors' options is currently useless because it is impossible to
distinguish between newly granted options and previously disclosed options, both
of which are marked &quot;G&quot; for grant. Previously disclosed options seem
to be re-disclosed each time a director's shareholding changes. The grant of an
option is a significant event (effectively a directors' dealing under the model
code) and therefore it would be nice to know when this happens. The solution is
to include the date of grant in the printout against each option.</p>
<h3>6. Revenue or Profit Requirement</h3>
<p>The Exchange proposes no change to the current rules which do
not require any specific level of revenue or profits to qualify for a listing on
GEM.</p>
<h4>Our View</h4>
<p>We agree. GEM was designed to be a risky market for young
&quot;emerging&quot; companies, and some companies may take years before they
can record revenues - for example a biotech company researching and testing a
new drug. However, we refer also to our view in para (3) that the track record
requirement for &quot;active business pursuits&quot; should remain at 2 years.</p>
<h3>7. Offering Mechanism</h3>
<p>The Exchange proposes a requirement that a minimum of 10% of
each IPO should be made available by public offer rather than placing with
selected investors.</p>
<h4>Our View</h4>
<p>We are against the proposal. One of the design features of GEM
was intended to be a reduced cost of getting to market. Public offers add to
this cost, for example, by requiring more printing, a receiving bank, and
newspaper advertisements. Some GEM offers may be so small (as little as HK$30m)
that it would not be worthwhile to include a 10% public offer.</p>
<p>We suspect the proposal is being driven by concern over the way
certain GEM listings (which have been done by placing only) have subsequently
seen their shares very tightly held and may have been subject to upward price
manipulation. We do not believe a 10% public tranche would cure this, since it
would still leave the possibility of 90% of the public float in the hands of a
few placees.</p>
<p>Public investors simply need to be aware that this may happen,
and the Exchange can help by requiring disclosure of the breakdown of placees in
terms of the numbers of shares allotted (without names).</p>
<p>To preserve the original spirit of the GEM design, companies and
their sponsors should be free to determine the best method of marketing their
IPO. If they believe that the company will benefit (in terms of price, proceeds
or profile) from making a public offer, then they will surely do so.</p>

<h3>8. Additional Matters</h3>

<p>We refer the Exchange to our article <a href="waiver3.asp" target="_blank">No
Exceptions</a> in which we pointed out that certain issuers continue to benefit
from waivers which exceed even the terms proposed in the consultation paper. We
urge the Exchange to bring these waivers, granted to Tom.com and Hongkong.com,
back into line, before the Exchange makes any further claim to be running a
level playing field.</p>
<hr>
<p>Update: the consultation period has now closed. Read the results
<a href="gemresponses.asp">here</a>.</p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14388">GEM Listing Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=147">Growth Enterprise Market</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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

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

<script type="text/javascript">document.title="Decapitate the headcount";</script>

	<div class="summary">We make the case for abolition of the archaic and anarchic headcount rule in Schemes of Arrangement, which was brought into focus when we reported evidence of a vote-rigging scheme in the proposed PCCW privatisation in 2009. For once, the tycoons agree with us, but the Government seems afraid to take the lead.</div>

<h2 class="center">Decapitate the headcount<br>
<span class="headlinedate">12 March 2012</span></h2>
<p class="revisedate">Submission to Legislative Council Bills Committee on 
clause 664 of Companies Bill</p>
<p>Dear Members,</p>
<p>Thank you for you invitation to give views on
<a href="http://www.legco.gov.hk/yr10-11/english/bc/bc03/papers/bc030610cb1-2389-1-e.pdf" target="_blank">
clause 664 of the Companies Bill</a>.</p>
<h3>Background</h3>
<p>Late on 14-Jan-2009, <a href="../contact">via Webb-site.com</a>, Hong Kong's 
leading non-profit corporate and economic governance site, I received an 
anonymous tip-off alleging that there was a vote-rigging scheme in which 
hundreds of insurance sales agents would each receive one board lot of 1,000
<a href="../dbpub/articles.asp?p=2925">PCCW Limited</a> (<strong>PCCW</strong>, 
0008) shares, and that in return, they would sign a proxy form which would allow 
the holdings to count in favour of a privatisation by Scheme of Arrangement (<strong>SoA</strong>). 
Despite the anonymity of the complaint, the details were so specific that I 
immediately informed the SFC, which initially took no action.</p>
<p>Such a vote-rigging scheme, particularly one so blatant, with equal numbers 
of shares being registered on the same day to persons licensed to the same 
insurer or giving the same address, is relatively easy to verify, because one 
will find abnormal entries in the register of members, commonly known as the 
&quot;share register&quot;. On 29-Jan-2009, the first working day after Chinese New Year 
and the penultimate day before a book closure for the meeting, I went to the 
registrar and sampled the 26,000-member register, finding direct evidence of the 
scheme. I filed this with the SFC, which then swung into action and deployed 
extensive resources to investigate the vote-rigging. They opposed the SoA in the 
courts, losing in the Court of First Instance but winning in the Court of 
Appeal.</p>
<p>This episode brought renewed focus to the procedures in the Companies 
Ordinance for approving schemes of arrangement, which date back to the Victorian 
era and require approval not only 75% by value of shares or credits voted, but 
also a majority in number of members (shareholders) or creditors in the &quot;class&quot; 
affected by the scheme, the latter criterion being known as the &quot;headcount&quot;. 
Hence, in the course of rewriting the Companies Ordinance, the Government has
<a href="http://www.fstb.gov.hk/fsb/co_rewrite/eng/pub-press/doc/CB_Consultation_Ch6_e.pdf" target="_blank">
consulted</a> the public in an exercise starting on 17-Dec-2009, on whether the 
headcount rule should be abolished or amended.</p>
<h3>Our view</h3>
<p>In the article <a href="pccwrig.asp">Vote-rigging plan for PCCW 
meeting</a> (1-Feb-2009), Webb-site urged the SFC to intervene in the court to 
stop the PCCW scheme of arrangement, because although we disagree with the 
headcount criterion, we believe that the law should be enforced until it is 
abolished. As we said then, the criterion is archaic and anarchic because:</p>
<ol>
	<li>it goes against the 1-share-1-vote principle</li>
	<li>it gives disproportionate voting weight to small shareholders</li>
	<li>it attracts attempts to corrupt the vote (for or against a scheme)</li>
	<li>the Listing Rules (since 1-Jan-09) require all shareholder meetings to 
	be by poll (1-share-1-vote) rather than a show of hands. The headcount is 
	like allowing a show of hands to veto the outcome of a poll vote.</li>
</ol>
<p>The principal of a majority headcount harks back to the 19th century when 
most shareholders held shares in their own names rather than in the names of 
nominees or custodians. Even then, the rule was misguided and capable of 
manipulation by vote-splitting, but this problem was become worse with the 
increase over the last century of institutional investment, where large blocks 
of shares are held by single institutions (on behalf of thousands or millions of 
pensions and mutual fund investors) through a handful of custodians, each 
custodian having only 1 vote on a headcount.</p>
<p>Similarly, the introduction in the 1990s of the Central Clearing and 
Automated Settlement System (<strong>CCASS</strong>) operated by Hong Kong 
Securities Clearing Co Ltd (<strong>HKSCC</strong>) brought great efficiencies 
to the clearing and settlement of securities transactions but resulted in most 
retail investors holding stock not in their own names but in the name of HKSCC 
Nominees Ltd (<strong>HSCCN</strong>, a 100% subsidiary of HKSCC), the <em>de 
facto </em>central depository, which in turn holds stocks for banks, brokers and 
custodians. The banks and brokers in turn hold stocks for retail investors. 
HKSCCN only has 1 vote in a headcount.</p>
<p>The results is that the vast majority of publicly-held shares are represented 
by HKSCCN, a single registered shareholder. Even with
<a href="../dbpub/subject.asp?c=181">scripless registration</a> (if and when it 
finally arrives), this problem will not change much, because most investors will 
still hold their stock through banks, brokers and custodians, each of them 
having a single account on the electronic register of members. Under the 
headcount rule, it is then possible for a large number of small registered 
shareholders to defeat the wishes of the vast majority of affected shareholders. 
For example, as a result of Project Poll (see below), Webb-site has 5 registered 
shareholders, each holding 2 shares, in each of the blue-chip companies of 2003. 
We would have 5 votes in an SoA headcount, against 1 held by HKSCCN. How is that 
fair?</p>
<h3>Protection of minorities</h3>
<p>The clear intent of the original headcount rule, although poorly implemented, 
was to provide protection for minorities against abuse, a principle which 
Webb-site has spent 14 years fighting for. We would not advocate scrapping the 
headcount rule if we thought that it would cause harm to minority interests.</p>
<p>For many years, SoAs under
<a href="http://www.hklii.hk/eng/hk/legis/ord/32/s166.html" target="_blank">
section 166</a> were seen by companies as a relatively &quot;easy&quot; way to execute a 
takeover or privatisation, by proposing to cancel all the publicly-held shares 
in exchange for a payment, which would require a 75% approval of shares voted. 
The alternative was a general offer (<strong>GO</strong>). Using
<a href="http://www.hklii.hk/eng/hk/legis/ord/32/s168.html" target="_blank">
section 168</a>, the offeror can compulsorily acquire the outstanding shares but 
only if the offer has received acceptances for 90% of the shares under offer. 
Similar (but not identical) provisions apply in the Cayman Islands and Bermuda, 
where about 74% of HK-listed companies <a href="../dbpub/domicile.asp">are 
domiciled</a>. Put simply, 75% of votes cast (and not all shareholders vote) was 
often seen as an easier hurdle to compulsory purchase than to acquire 90% of all 
outstanding shares.</p>
<p>However, in the 1990s, the Takeover Panel closed this loophole, and Rule 2.10 
of the Takeover Code was further refined in 2001 (after I joined the Panel) to 
its
<a href="http://www.sfc.hk/sfcRegulatoryHandbook/EN/displayFileServlet?docno=H622" target="_blank">
present form</a>, in which a takeover or privatisation by SoA will fail if 10% 
of the disinterested shares vote against the scheme. We can call this the &quot;<strong>10% 
objection</strong>&quot; rule. For example, if an offeror already owns 60% of a 
company and tries to privatise it by SoA, then, then it fails if 4% of the 
shares (being 10% of the class) vote against the scheme.</p>
<p>I believe that the 10% objection rule is the proper protection, but it should 
be noted that the Takeovers Code has no statutory backing. So in addition to 
abolishing the headcount rule, I submit that <strong>the 10% objection rule 
should be included in the Companies Ordinance</strong>. It should also remain in 
the Takeovers Code which applies to companies incorporated outside HK, and as a 
separate matter, the Takeovers Code should have statutory backing, so that 
persons can be fined or jailed for breaking it, or at least be required by a 
civil tribunal to comply with the Codes or pay compensation. Currently the 
stiffest penalty is a &quot;cold shoulder&quot; order, ordering brokers and other 
intermediaries not to provide market access to the offender.</p>
<h3>Private companies and creditors' schemes</h3>
<p>The headcount rule should be abolished for all SoAs, not just SoAs involving 
members of listed companies. The vote-splitting risks are similar for private 
companies, except that by
<a href="http://www.hklii.hk/eng/hk/legis/ord/32/s29.html">section 29</a> they 
are limited to 50 members. This cap has the additional risk of a &quot;race&quot; to bring 
the number of shareholders up to 50 by vote-splitting before or after proposing 
an SoA. A further category is unlisted public companies, which could have more 
than 50 members but not fall within the protection of the Takeovers Code. They 
would benefit from having the 10% objection rule included in the Ordinance. The 
same issues apply to a creditors' SoA - someone who is determined to block a 
scheme, against the wishes of a large majority by value, can slice up the debt 
and assign it to multiple nominees who could vote against, thereby blocking the 
scheme. A 10% objection rule would be more appropriate to protect the interests 
of objecting creditors without frustrating a scheme which has over 90% support 
by value.</p>
<h3>Parallels in real estate</h3>
<p>The principle of protecting minorities against compulsory purchase of their 
shares, whether in an SoA or GO, is similar to the principle of protecting 
minority holders of an apartment building from compulsory purchase of their 
property. Section 3 of the
<a href="http://www.hklii.hk/eng/hk/legis/ord/545/" target="_blank">Land 
(Compulsory Sale for Redevelopment) Ordinance</a> (<strong>LCSRO</strong>) 
allows for a compulsory sale by auction of land upon application by person(s) 
who own not less than 90% of the undivided shares in a lot. It does not contain 
a headcount requirement, for a majority of owners (regardless of the number of 
shares they each own in the land) to be in favour of redevelopment. It has been 
deemed in the public interest that if 90% of the shares actively agree, then the 
public interest in redevelopment outweighs any wishes of those who own 10% or 
less of the shares in the land lot. This is as it should be, but if the 
Government did not see fit to include a headcount rule in the LCSRO, then why 
does it insist on retaining one in the Companies Ordinance?</p>
<p>It should be said that there is nothing magical about 10%, but I believe it 
strikes about the right balance. We got there only because we have 10 digits on 
our hands - if mankind had evolved with 8 digits, then we would likely be 
counting in octal and thinking in terms of 1/16 or 1/8 as a threshold.</p>
<p>I am not in agreement with the subsequent
<a href="http://clic.org.hk/hk/legis/en/reg/545A/s4.html" target="_blank">
relaxation</a> of this requirement to 80% in the case of buildings with 9 or 
fewer units or occupied more than 50 years (30 years for industrial buildings). 
I think that a 20% objection threshold is too high, and that if you cannot 
persuade the holders of 90% of the merits of a proposal then you should not be 
able to literally bulldoze the assets of the remainder. But that is a subject 
for another day.</p>
<h3>Project Decapitate</h3>
<p>Webb-site's 2003 <a href="../dbpub/subject.asp?c=172">Project Poll</a> 
successfully forced blue-chip companies to stop holding their meetings on a show 
of hands (1-person-1-vote) and start counting on a 1-share-1-vote basis (known 
as &quot;poll voting&quot;), including proxies which were previously ignored. This brought 
increased fairness and transparency of shareowners' views on proposals. Once we 
had neutralised the opposition from tycoons using Project Poll, the Listing 
Committee found itself able to make poll-voting mandatory for all shareholder 
meetings, starting 1-Jan-2009.</p>
<p>If the Government, and you as legislators, do not see fit to abolish 
the headcount rule in the Companies Ordinance, then the next time a 
HK-incorporated company proposes a privatisation (or even a redomicile) by SoA, 
Webb-site will consider financing and launching &quot;Project Decapitate&quot;, to 
demonstrate how anarchic the headcount rule is. We will buy a board lot (<a href="../dbpub/HKstocksByBoardLot.asp">typically 
1,000 or 2,000 shares</a>) and offer each reader of Webb-site (and we have over 
20,000 on the mailing list) a single share in the company for free, and invite 
them to vote one way or the other in the SoA. We will not tell them which way to 
vote, so this will not be &quot;vote-rigging&quot; in that sense. It will throw such 
uncertainty into the SoA that its proponents will almost feel obligated to go 
out and orchestrate vote-rigging in favour, otherwise the headcount will turn 
into a lottery. Meanwhile, the market price during the offer will reflect this 
uncertainty.</p>
<p>To completely avoid the risk that our readers' votes might be excluded from 
the headcount by the court, we will also consider pre-emptively distributing to 
each participating reader 1 share in each of say, 20 HK-listed HK-incorporated 
companies, large and small, which are not currently under offer. Sooner or later 
one of them will be. In the meantime the new registered shareholders will get 
the benefit of direct communications and the right to attend AGMs for the food. 
Think of it as a perpetual cake voucher. The participants would not attempt to 
sell these shares, because the transaction costs will be far higher than they 
are worth. They can just frame the certificate and take pride in being a 
well-fed shareholder activist.</p>
<h3>Concluding remarks</h3>
<p>The Government, despite receiving a clear majority of
<a href="http://www.fstb.gov.hk/fsb/co_rewrite/eng/pub-press/ccfp-written-submissions.htm" target="_blank">
submissions</a> (mostly from listed companies) in favour of abolishing the 
headcount,
<a href="http://www.legco.gov.hk/yr10-11/english/bc/bc03/papers/bc030610cb1-2389-1-e.pdf" target="_blank">
wishes to keep it</a>. I do not believe we should place the onus on courts to 
decide when a headcount has or has not been rigged, or if it hasn't been rigged, 
whether the views of a large number of small shareholders should outweigh the 
views of the vast majority by value.</p>
<p>For once, I find myself in agreement with the tycoons. The Government 
seems to hold the view that because other jurisdictions which inherited this 
rule from English law have not seen fit to abolish it, nor should HK. That is 
not a logical reason for maintaining a rule which is absent in many other 
jurisdictions. HK has the 10% objection rule which some other places do not. Too 
often, the Government is afraid to make reforms based on logical reasoning and 
instead makes changes only years after others have done the same. HK, which 
claims to have a competitive advantage in innovation, should not be afraid of 
leading by legislative example.</p>
<p>So please abolish the headcount rule, and legislate the 10% objection 
rule. I will be pleased to attend your
<a href="http://www.legco.gov.hk/yr10-11/english/bc/bc03/agenda/bc0320120323.htm" target="_blank">
meeting on 23-Mar-2012</a> to answer any questions that you may have.</p>
<p>David M Webb<br>Editor, Webb-site.com<br>Member, Takeovers and Mergers Panel</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=114">Company & securities law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=149">Headcount test</a></li>
				
				<li><a href="/dbpub/subject.asp?c=191">Takeovers</a></li>
				
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
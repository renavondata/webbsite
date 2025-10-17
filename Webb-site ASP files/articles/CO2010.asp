
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

<script type="text/javascript">document.title="Multiple statutory derivative actions";</script>

	<div class="summary">David Webb responds to the Legislative Council's invitation for comments on proposed amendments to the statutory derivative actions regime. In its current form it is unlikely to be useful to public shareowners of listed companies, but we suggest how to improve it. We also call on the Administration and Legislators to get behind class actions, litigation finance and contingent legal fees. Justice is the friend of fair societies, and litigation is the path to it.</div>

<h2 class="center">Multiple statutory derivative actions<br>
<span class="headlinedate">18 April 2010</span></h2>
<p>Submission to the Legislative Council<br>
<a href="http://www.legco.gov.hk/yr09-10/english/bc/bc03/general/bc03.htm" target="_blank">
Bills Committee on Companies (Amendment) Bill 2010</a></p>
<p>Honourable Members,</p>
<p>Thank you for your e-mail of 8-Apr-2010 inviting me to give views 
specifically on Clauses 14-20 of the
<a href="http://www.legco.gov.hk/yr09-10/english/bills/b201001221.pdf" target="_blank">
Companies (Amendment) Bill 2010</a> (the <strong>Bill</strong>), to enable a 
member of a related company of a specified corporation to bring or intervene in 
proceedings against a specified corporation as defined in section 2 of the 
Companies Ordinance. This I now do, and apologise for it being 1 business day 
late. I hope that you can still incorporate my views into your deliberations on 
20-Apr-2010.</p>
<p>Most importantly, the Bill will allow registered shareholders (members) of a 
holding company to bring a statutory derivative action on behalf of its direct 
or indirect subsidiary. As the Administration notes, this is already a common 
law right, as affirmed by the decision in
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=62499" target="_blank">
Waddington Ltd v Thomas Chan Chun Hoo</a>, Court of Final Appeal, 8-Sep-2008. 
Holding companies are just one category of related companies in the Bill, the 
others being subsidiaries or fellow subsidiaries of the specified corporation. 
The CFA did not deal with the question of minority shareholders in a subsidiary 
company bringing a derivative action on behalf of a holding company or on behalf 
of a fellow subsidiary.</p>
<p>Whilst the proposed amendments to the Ordinance will certainly be of use to 
registered shareholders in private holding companies and their subsidiaries, they are not, in their 
present form, of much use to the public shareowners of listed companies, for 
reasons which I will explain. You can rectify this by amending the Bill.</p>
<p>The Financial Services and Treasury Bureau (<strong>FSTB</strong>) in Annex D 
of its
<a href="http://www.legco.gov.hk/yr09-10/english/bc/bc03/papers/bc030330cb1-1453-8-e.pdf" target="_blank">
follow-up to issues raised</a> at the first meeting on 23-Feb-2010 (pages 30-34 
of the PDF), provides a helpful review of the legislation in Australia, New 
Zealand, Canada, the UK and Singapore. In three of those places (Australia, New 
Zealand and Canada), there is now a statutory right of derivative action for all 
related companies. Furthermore, in Canada and Singapore, any other person who, 
in the discretion of the court, is a &quot;proper person&quot;, may seek to bring a 
derivative action. Presumably, in determining whether a person is a proper 
person, the issue to be considered is whether the person has suffered a loss 
from the wrong done to the specified corporation and will have a sufficient 
economic interest in the relief claimed in the proceedings.</p>
<h3>Include all proper persons</h3>
<p>Now this brings me to the key gap in the Administration's proposal. The vast 
majority of shares beneficially owned by the public in HK-listed corporations 
are not in fact held by them, but by a bare nominee. In most cases, the 
registered shareholder is HKSCC Nominees Ltd (<strong>HKSCCN</strong>), the <em>de 
facto</em> central depository of the Central Clearing and Automated Settlement System 
(<strong>CCASS</strong>) operated by Hong Kong Securities Clearing Co Ltd, a 
wholly-owned subsidiary of Hong Kong Exchanges and Clearing Ltd. In order to 
settle a transaction on the stock exchange, the shares must have been deposited 
into CCASS. HKSCCN in turn holds the shares for more nominees, owned by banks, 
brokers and custodians, who in turn hold shares for beneficial owners.</p>
<p>There is no realistic possibility of HKSCCN bringing derivative actions on 
behalf of beneficial owners, because it has no economic interest in the shares 
it holds, and because it is part of a bureaucratic public body which I doubt 
would entertain the idea of conducting the litigation on behalf of a beneficial 
owner even if it was remunerated and under a collateralised indemnity for costs. 
Even under <a href="../dbpub/subject.asp?c=181">scrip-less registration proposals</a> 
(if we ever get them implemented), it is likely that most beneficial owners 
would still not be legal shareholders.</p>
<p>It might be possible for a prospective applicant to withdraw shares from 
CCASS and register them in its own name, but this would inevitably occur after 
the alleged wrongdoing to the specified corporation, and it could be open to the 
defendant to argue that the applicant was not a legal shareholder at the time of 
the alleged wrongdoing. Furthermore, if a holding company has put itself, or 
been put, into provisional liquidation, then under
<a href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/480D5D9FDE0546FBC8256480004326D0?OpenDocument" target="_blank">
s182</a> the register of members is 
automatically frozen and transfers are prohibited without the consent of the 
court, so taking legal ownership of 
the holding would not be an option.</p>
<p>Incidentally, the freezing of the share register is another area of the 
Companies Ordinance that needs reform, since it makes it impossible for most 
public shareowners, not being registered holders, to oppose a petition by a 
company to put itself into provisional liquidation. That process is something 
which several apparently solvent companies used in the last 2 years to run away 
from minority shareholders.</p>
<p>So, for the current proposals to have any real benefit to public shareholders 
of listed companies, it is important that you amend the Bill to broaden the 
class of applicants to include not just related companies but all beneficial 
shareowners. I suggest you include &quot;proper persons&quot;, preferably to be defined 
as:</p>
<blockquote>&nbsp;&quot;any person who, to the satisfaction of the court, has 
an interest in the relief claimed in the proceedings, whether legal or 
equitable&quot;.</blockquote>
<p>This would still be subject to the safeguard requirement in
<a href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/27104FAE36ABEE4A4825705100299CDB?OpenDocument" target="_blank">
s168BC(3)</a> that the court is satisfied that it appears to be prima facie in 
the interest of the specified corporation that leave be granted to the applicant 
and that there is a &quot;serious question to be tried&quot;. As a second-best 
alternative, the law should state that a person who is a member of a company (or 
its related company) has the same rights to apply to bring the derivative action 
regardless of whether he was a member at the time of the alleged wrongdoing to 
the company.</p>
<h3>Parallel regimes</h3>
<p>While writing, I note that the CFA in <em>Waddington</em> urged the 
Administration and the Legislature to remove the duplication of common law 
rights and statutory rights. This has not been done, and the Administration has 
not explained why not. Ribeiro PJ wrote (para. 32):</p>
<blockquote>&quot;The co-existence of both the statutory and common law regimes 
is unusual in an international context and is a source of confusion and 
complication. It would appear to be appropriate for the statutory regime to 
replace the common law derivative action altogether. This question deserves to 
be addressed by the Administration and the Legislature as soon as possible.&quot;</blockquote>
<p>While Lord Millett NPJ wrote (para. 80):</p>
<blockquote>&quot;We have no power to extend the provisions of
<a href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/27104FAE36ABEE4A4825705100299CDB?OpenDocument" target="_blank">
s.168BC</a> to multiple derivative actions by analogy. We must leave such 
actions to continue to be governed by the common law, while expressing the hope 
that the legislature may in due course extend the section to cover them, and 
perhaps at the same time take the opportunity to consider whether it is really 
sensible to maintain two parallel regimes with different threshold tests, one 
requiring leave and the other not.&quot;</blockquote>
<p>The statutory regime requires that there is a &quot;serious question to be tried&quot;, 
while the common law regime sets the higher hurdle of requiring that a prima 
facie case be shown. However, the statutory regime requires leave of the court 
to bring the action, while the common law does not. In my view, the statutory 
regime is more efficient, as it is less likely to require a &quot;trial before a 
trial&quot;. </p>
<h3>Access to Justice</h3>
<p>I cannot conclude without mentioning the economic reality. While such 
statutory rights as are proposed are important to have, they are of little value 
if they are prohibitively expensive to enforce. While the court has discretion 
under
<a href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/D543BC7630E0384C4825705100299CE1?OpenDocument" target="_blank">
s168BI</a> at any time during the case to make an order for costs to be paid by 
the specified corporation, there is no certainty for a potential applicant as to 
whether and when this order will be forthcoming, and if it is, then whether the 
specified corporation, having been the subject of the alleged abuse by the 
defendants, will have the means to pay any costs if ordered to do so. A court 
will only make an award for costs if it is satisfied that the member was acting 
in good faith and had reasonable grounds for making the application for the 
derivative action.</p>
<p>Furthermore, even if a derivative action is successful, the award will be 
made to the specified corporation, not its members (or its parent's members), 
and the abused company will likely still be controlled by the defendants, since 
otherwise, it could have sued them on its own. So the money may promptly be 
siphoned off again, and the value of the recovery may never be realised by the 
shareholders.</p>
<p>So these are significant deterrents to bringing a derivative action, which is 
why so few have been brought since 2004. It is not as if HK is such a bastion of 
good governance that few cases warranted the action. There have also been very 
few shareholder legal actions of any other kind, including
<a href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/921FBAD1B738B01B4825705100299CD0?OpenDocument" target="_blank">
s168A</a> (unfair prejudice), because the potential costs for any one 
shareholder on its own far outweigh the size of its claim.</p>
<p>To address this issue:</p>
<ol>
	<li>the Administration and Legislators should give full support to the
	<a href="http://www.hkreform.gov.hk/en/publications/classactions.htm" target="_blank">
	proposals of the Law Reform Commission</a> to introduce class action rights;</li>
	<li>lawyers must be allowed to work for contingent legal fees;</li>
	<li>litigation finance companies must be permitted to finance litigation; 
	and</li>
	<li>to make points (2) and (3) possible, the laws against champerty and 
	maintenance must be abolished.</li>
</ol>
<p>I wrote extensively about all these issues on Webb-site.com in the article 
&quot;Class actions for HK&quot; (17-Mar-10) <a href="classactions.asp">which I 
attach</a>. The 4 points above were also the subject of an opinion poll which 
indicated strong public support. I <a href="../vote/result.asp?p=37">attach the 
results</a>. The Administration has no excuse for inaction, if it wishes to 
enhance and protect HK's position as an international financial centre.</p>
<p>Finally, I note that a Legislator has expressed concerns that increasing 
shareholder rights will increase the amount of litigation &quot;thereby subjecting 
the operation of listed companies to higher risks of legal challenges&quot; (<a href="http://www.legco.gov.hk/yr08-09/english/panels/fa/minutes/fa20090611.pdf" target="_blank">Panel 
on Financial Affairs, 11-Jun-2009</a>). Of course it would. The point of these 
proposals is to increase the risk that abuse of a company will be challenged, 
and thereby to deter it. That is the whole point - you cannot have a fair 
society if people do not have laws to ensure fair play and the means to enforce 
them through litigation when all else fails. Honest management should have 
nothing to fear. Justice is the friend of fair societies, not its enemy. Our 
loser-pays costs system will ensure that frivolous or vexatious actions will be 
kept to a minimum and will remain the domain of those for whom money is no 
object.</p>
<p>Yours sincerely</p>
<p>David M. Webb<br><em>Editor, Webb-site.com</em></p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=111">Class action rights</a></li>
				
				<li><a href="/dbpub/subject.asp?c=114">Company & securities law</a></li>
				
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
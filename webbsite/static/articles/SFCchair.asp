
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

<script type="text/javascript">document.title="The SFC Chairmanship: Submission to the Panel on Financial Affairs";</script>

	<div class="summary">The Government is proposing to create a non-executive, token-payment Chairmanship at the SFC. In a submission invited by the Legislative Council's Panel on Financial Affairs, we argue that this would be dangerous and wrong in principle.</div>

<h2 class="center">The SFC Chairmanship: Submission to the Panel on Financial Affairs<br>
<span class="headlinedate">20 December 2004</span></h2>
<p>To the Chairman<br>
<a target="_blank" href="http://www.legco.gov.hk/general/english/panels/yr04-08/fa.htm">
Panel on Financial Affairs</a><br>
<a target="_blank" href="http://www.legco.gov.hk/">Hong Kong Legislative Council</a></p>

<p>Dear Sir,</p>

<p>Thank you for the letter of 24-Nov-04 inviting my submission on the question 
of whether the Securities and Futures Commission (<b>SFC</b>) should have a 
non-executive Chairman, thereby splitting the roles of Chairman and Chief 
Executive. I hereby submit my views. I do not currently intend to attend the 
Panel's meeting on 3-Jan-05 but would be pleased to do so if members require 
elaboration.</p>

<p>I have read the 4-Nov-04
<a target="_blank" href="http://www.legco.gov.hk/yr04-05/english/panels/fa/papers/fa1110cb1-177-1e.pdf">
briefing paper</a> from the Government's Financial Services Branch and the 
8-Nov-04
<a href="http://www.legco.gov.hk/yr04-05/english/panels/fa/papers/fa1110cb1-177-2e.pdf">
briefing paper</a> from the Legislative Council Secretariat.</p>

<p>I must admit to being surprised by the Administration's sudden purported 
interest in good governance. Nevertheless, what is proposed would be negative to 
the governance and effectiveness of the SFC, for the reasons I state below, and 
given the circumstances it is difficult to resist the conclusion that the 
administration has other, unstated goals in making this proposal.</p>

<h3>Local and international practice</h3>

<p>The Government states that it has <i>&quot;drawn reference to the best governance 
practice both locally and internationally&quot; </i>and cites the Standing Committee 
on Company Law Reform (<b>SCCLR</b>) in Hong Kong and the Dec-92 Cadbury report 
and Jan-03 Higgs Report in the UK.</p>

<p>However, these reports established best practice for widely-held listed 
companies. The SFC is not a listed company, it is a statutory regulator. 
Different considerations apply. Even in the case of listed companies, the 
corporate control structure is a key consideration in whether any benefit can be 
obtained from having a non-executive Chairman.</p>

<p>Where there is a controlling or dominant shareholder, as is the case for 90% 
(by number) of HK-listed companies, then I doubt that there is any material 
improvement in governance or financial performance caused by splitting the roles 
of Chairman and Chief Executive. The controlling shareholder gets to vote on the 
election of both positions as well as voting on the election of so-called 
independent directors, so they are indeed all dependent on the controlling 
shareholder. If any comparison is to be made between the SFC and listed 
companies, then it should be noted that the 100% &quot;controlling&quot; shareholder of 
the SFC is the Government, which appoints all the directors. I shall return to 
this point later.</p>

<p>When looking at domestic practice, one should note that the
<a target="_blank" href="http://www.info.gov.hk/hkma/">Hong Kong Monetary 
Authority</a> (HKMA), which regulates the banking sector, has no Chairman, 
indeed, it doesn't even have a board. A Chief Executive and two deputies oversee the 
banks. Meanwhile, in the insurance sector, the
<a target="_blank" href="http://www.info.gov.hk/oci/">Office of the Commissioner 
of Insurance</a> regulates insurers (who often sell investment-lined products) 
without a board or Chairman, and likewise for the
<a href="http://www.ofta.gov.hk/">Office of the Telecommunications Authority</a>. 
There has not been any suggestion from Government of having a non-executive 
Chairman for these entities, or that their governance is somehow lacking. 
Government has not explained why it thinks the regulation of securities and 
futures merits a different approach to that of banking or insurance.</p>

<p>In terms of international practice for securities regulation, this points in 
the other direction. In the UK, although roles are split, the Chairman of the 
FSA is stated in its annual report to be an executive director and is 
practically full time. He was once briefly my boss. The Chairman of the US SEC 
is also a full-time executive. Both have extensive work experience at senior 
positions in the financial services industry. In Australia and Germany the 
situation is similar.</p>

<p>There is a simple reason for this. As stated in the Government Briefing, the 
role of Chairman includes setting agenda, establishing priorities, and 
representing the SFC publicly. In my view, a Chairman of a regulator can only 
fulfil that role if he or she is a full-time Chairman who is up to speed with 
all the technical and regulatory issues in a highly complex industry. It would 
be dangerous for Hong Kong to be represented in entities such as the
<a target="_blank" href="http://www.iosco.org/">International Organization of 
Securities Commissions</a> (IOSCO) by a Chairman who was not in command of his 
facts and the principles behind them. He or she would have to liaise with 
counterparts who are. This is not a role in which a Chairman who spends only a 
fraction of his time on the job can bluff his way through with scripted 
speeches.</p>

<p>The Government has a habit of appointing tycoons and businessmen, often from 
among its narrow electorate, to Chair government-appointed entities such as the
<a target="_blank" href="http://www.hongkongairport.com/">Airport Authority</a>,
<a target="_blank" href="http://www.ha.org.hk/">Hospital Authority</a>,
<a target="_blank" href="http://www.mtrcorp.com">MTRC</a>,
<a target="_blank" href="http://www.kcrc.com/">KCRC</a> and the
<a target="_blank" href="http://www.tdctrade.com/">Trade Development Council</a>. 
The role is often part-time, with the Chairman also running a major business and 
holding numerous other posts at the same time. They are, in effect, political 
appointees holding titular positions. This practice is highly questionable, but 
in the case of a regulatory organisation it is downright dangerous.</p>

<h3>Remuneration</h3>

<p>Any role which is full-time in a role, whether you call it executive or not, 
deserves a full-time remuneration that will attract suitable professional and 
experienced candidates in a competitive selection process, not a token payment. 
The Government Briefing states that the financial implications of splitting the 
role would be &quot;<i>minimal</i>&quot; and by implication that the Chairman would 
receive only a token fee as a non-executive director. This is wrong in principle 
and would inevitably mean that only those seeking the status or influence of the 
role and who are independently wealthy, without the need of an earned income, 
would be interested in serving. Token payments increase the probability of 
influence-peddling by those who serve, and decrease the probability of 
recruiting the most competent and professional candidate.</p>

<h3>Independence from Government</h3>

<p>The Government Briefing places emphasis on strengthening the independence of 
the SFC, but &quot;independent&quot; is of course an adjective and one must ask, 
&quot;independent of whom?&quot;. While it is rightly stated in the Government Briefing 
that the Chairman should continue to have no involvement in the management or 
directorship of listed companies or regulated entities, the more pressing 
question is whether the directors of the SFC are independent of Government, 
given that the Government appoints all of them. The appointment system in itself 
makes it difficult for the SFC to criticise or regulate Government's behaviour 
in the markets.</p>

<p>In the United States, the Commissioners of the SEC are appointed by the 
President but only after confirmation by the Senate. This gives them some 
independence of the executive branch of Government. As I have said in previous 
submissions, because of the HK Government's continued participation in the 
securities markets, there needs to be a separation of the SFC by creating a 
check and balance on the appointment and removal of commissioners. The most 
appropriate way to do this would require that the appointments and removals are 
subject to approval by the Legislative Council.</p>

<p>The Government's involvement in the securities markets comes through the 
Exchange Fund, through occasional intervention as in 1998, and through the 
privatisation of assets such as the MTR, Link REIT and the Airport Authority. It 
also holds investment portfolios through other entities such as the Housing 
Authority.</p>

<p>During the recent Link REIT fiasco, the SFC has been notably silent on the 
matter, even though it operates the REIT Code and there were questions from the 
public over whether the prospectus should have been supplemented with disclosure 
of subsequent litigation during the offer period.</p>

<p>During the 1998 stock market intervention, the SFC was also in a conflicted 
position over the Government's market manipulation (deliberately forcing up 
share prices to squeeze those holding short positions) and failure to disclose 
its interests in securities (it eventually revealed that it held over 10% of 3 
companies). See our article <a target="_blank" href="interven.asp">Market 
Intervention</a> on <i>Webb-site.com</i> and
<a target="_blank" href="scmp981116.asp">Investor urges prosecution of 
Government</a> (<i>SCMP</i>, 16-Nov-98). The Government claimed &quot;crown 
exemption&quot; from the securities laws. It continues to make this claim in respect 
of its aggregate holdings in the MTRC. See our article
<a target="_blank" href="abovethelaw.asp">State Securities Above the Law</a> 
(8-Jun-03).</p>

<h3>Independence from Management</h3>

<p>The current board of the SFC has five executive directors (including the 
Chairman) and 7 non-executive directors, all of whom are directly appointed by 
Government. The Government Briefing suggests that making the Chairman 
non-executive would <i>&quot;enhance the independence of the Governing body and... 
its supervisory functions over senior management&quot;</i>.</p>

<p>This rather ignores the fact that the senior management are also directors 
and, in the absence of schizophrenia, one cannot supervise oneself. The 
structure would be little changed by the proposal. Currently, the law only 
requires that there be more non-executive than executive directors, so if there 
is a matter of policy dispute between management and the non-executives, then it 
may require all of the NEDs to out-vote the management before the so-called 
&quot;supervision&quot; is effective.</p>

<p>One way to create a separation between board and management would be to have 
a two-tier board structure, with a Supervisory Board overseeing the Executive 
Board. However, I am not a fan of such arrangements, because the more layers you 
have, the less informed the upper layers tend to be. I think that supervision is 
already adequate in the form of the Process Review Panel, the Securities and 
Futures Appeal Tribunal (chaired by a judge) and ultimately the courts. Where 
conflicts of interest arise, such as on the remuneration of executive directors, 
this can be dealt with by non-executive directors in committee.</p>

<h3>Separation of roles</h3>

<p>There is, in fact, already a separation of roles within the SFC. There is an 
executive Chairman and there is a Chief Operations Officer (<b>COO</b>) who is 
tasked with day-to-day operational management such as human resources, finance 
and administration. I am not opposed to either the creation of an additional 
executive post, as Chief Executive, or to &quot;upgrading&quot; the current post of COO. 
Whether there is a need for an additional executive post largely depends on the 
workload which I am not able to judge externally.</p>

<p>As an aside, at present the COO is doubling up as head of Corporate Finance 
following the departure of the person filling that role at the expiry of his 
term. This, in my view, is an unsustainable situation and greater steps should 
be taken to provide either a new COO or a new head of Corporate Finance. The 
attraction of being Head of Corporate Finance has undoubtedly diminished with 
the Government's decision to leave the role of front-end listing regulation with 
HKEx. As a result, the SFC ends up being accountable for passenger safety while 
HKEx makes the traffic rules. Many candidates would see this as a poisoned 
chalice.</p>

<p>Yours faithfully,</p>
<p>David M. Webb</p>
<p>Editor, Webb-site.com<br>
Elected non-executive director, Hong Kong Exchanges and Clearing Limited<br>
Member, SFC Public Shareholders Group<br>
Member, SFC Takeovers and Mergers Panel<br>
Member, SFC Takeovers Appeal Committee</p>

<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
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
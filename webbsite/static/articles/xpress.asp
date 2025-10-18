
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

<script type="text/javascript">document.title="Xpress excess";</script>

	<div class="summary">Here's a horror story of excessive pay at Xpress Group (0185), a company you've probably never heard of, but pay attention, because it could just as easily happen to yours, as the Listing Rules do not prevent it. In the last 15 years, the controlling family have received HK$493m in pay as directors, while the loss attributable to shareholders was $248m.</div>

<h2 class="center">Xpress excess<br>
<span class="headlinedate">8 October 2012</span></h2>
<p>Sitting in a panel session on executive pay in a Singapore conference last Tuesday 
(2-Oct-2012), while HK was taking time off for National Education Day, the following HK case sprang to 
your editor's mind, and he resolved to write it up when he got home.
<a href="../dbpub/orgdata.asp?p=4862">Xpress Group Ltd</a> (<strong>Xpress</strong>, 0185) is a clear demonstration of 
the excessive executive pay that can occur under HK Listing Rules when 
the director is also a substantial or controlling shareholder. Never heard of 
the company? Well just bear in mind that it could happen to yours too.</p>
<h3>Option grant</h3>
<p>Back on 17-Aug-2010, a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0816/LTN20100816135.pdf" target="_blank">
circular</a> went to independent shareholders asking them to approve the grant 
of options over 400m shares (15.15% of the existing issued shares) to &quot;retain&quot; 
and &quot;incentivise&quot; the &quot;Managing Chairman&quot; and majority shareholder, 
<a href="../dbpub/positions.asp?p=5524">Ambrose Chan Heng 
Fai</a> (<strong>Mr Chan</strong>). Mr Chan and his family already owned 66.24% 
of Xpress. Webb-site has never met a controlling shareholder who lacked 
incentive to run his company. Any controlling shareholder already has a strong 
financial interest in the success of the company, and controlling shareholders 
simply don't get &quot;poached&quot; to leave the company they control and go and run 
someone else's company.</p>
<p>The Listing Rules allow grants of options to substantial shareholders up to 
0.1% of the outstanding shares, or HK$5m of exercise value, whichever is higher, 
per year. Beyond that, you need independent shareholders' approval. Mr Chan's 
option grant was 151 times that number, and the underlying shares, at $0.134, 
had a subscription value of HK$53.6m.</p>
<p>Independent Financial Adviser <a href="../dbpub/adviserships.asp?p=19774">Chanceton Capital Partners Ltd</a> (<a href="../dbpub/positions.asp?p=67950">Wong Kam Wah</a>) 
saw nothing wrong with this, and the three wise INEDs 
<a href="../dbpub/positions.asp?p=7656">Peter Wong Dor Luk</a> (<strong>Peter 
Wong</strong>), 
<a href="../dbpub/positions.asp?p=8740">Joao 
Paulo Da Roza</a> (<strong>Mr Da Roza</strong>, deceased 16-May-2011) and
<a href="../dbpub/positions.asp?p=55437">Aston Wong Tat Keung</a> (<strong>Aston 
Wong</strong>), an accountant, 
agreed that it was fair and reasonable. Two of them, Mr Da Roza and Peter Wong, 
were 
also members of the Remuneration Committee at the time, and Aston Wong replaced 
Mr Da Roza subsequently. Incidentally, in the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2011/0520/LTN20110520120.pdf" target="_blank">
death notice</a>, Xpress eulogised Mr Da Roza's &quot;lofty professionalism&quot; and 
&quot;outstanding contributions...in promoting standardized corporate governance and 
protecting the interest of the Company and its shareholders as a whole&quot;.</p>
<p>At the EGM, the total number of
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2010/0902/LTN20100902283.pdf" target="_blank">
votes cast</a> was 25,476,849, only 2.96% of the 861,319,086 shares held by 
independent shareholders. This again highlights a huge problem - retail banks 
and brokers, who hold shares on behalf of their customers, are not required by 
their regulators to seek voting instructions from customers. So most investors 
were blissfully unaware that they had an opportunity to vote this down. Only 
290,005 shares voted against. The proposal was passed with a 98.86% majority of 
votes in favour, but that was only 2.92% of the eligible shares, and only 0.95% 
of the issued shares. Xpress probably has no institutional shareholders, because 
they tend to vote through their custodians.</p>
<p class="regbox"><strong>Note to regulators<br></strong>When you have such low 
voting turnouts in shareholder meetings, the whole system for connected 
transactions fails, because it is always possible for a few employees, friends 
of management or relatives (other than a spouse and minor children), to push 
through a bad proposal. As we've said many times, the SFC and HKMA should 
require bank and brokers who hold client stock to seek their voting instructions 
for every shareholder's meeting. Those banks and brokers who don't want to do 
the work can instead open a
<a href="http://www.hkex.com.hk/eng/prod/clr/sec_clrsett/segacct/segacct_page.htm" target="_blank">Stock Segregated Account</a> with Hong Kong Securities Clearing Co Ltd (<strong>HKSCC</strong>) 
for each client, so that they can receive notice of meetings from HKSCC and vote 
their stock through HKSCC.</p>
<h3>Service contract</h3>
<p>If you thought the option grant was excessive, you ain't seen nothin' yet. The options circular failed to give a full picture of Mr 
Chan's remuneration arrangements which would have put the proposal in context. 
In particular, at that time of the EGM to approve the options (2-Sep-2010) it 
had not yet been disclosed that on 29-Jan-2010, Xpress entered into a 
service contract with Mr Chan commencing 1-Feb-2010, under which he would be 
paid an annual salary equal to 5.9% of the net assets value as shown in its 
consolidated audited accounts at each financial year end (plus an accommodation 
allowance of $30k per month).</p>
<p>This was a huge increase in his pay. In the year to 31-Mar-2010, he was 
paid an already-generous $5.524m. The net assets at 31-Mar-2010 were HK$772.7m, 
so 5.9% of that would be $45.59m, more than 8 times the previous year, plus the 
value of the options. The service contract was not known to shareholders before 
voting on the options. The contract is outrageous by any measure - he gets a 
percentage of net assets, whether or not the company makes a profit, and if it 
raises new funds, he gets a percentage of that too. Every year. Even if Xpress 
were an investment fund, and Mr Chan were its only fund manager, a 5.9% 
management fee would be excessive. The contract lasts 3 years. If there is no 
other change in net assets per share over that time (i.e. no net overall gain or 
loss), the compound rate of fee will reduce net assets by 1-0.941^3 = 16.7%, or 
one-sixth, over that period. In a 10-year period, it would drag net assets by 
1-0.941^10 = 45.6%.</p>
<p>Despite this, the circular contained the required responsibility 
statement from each director and stated that:</p>
<blockquote>&quot;The Directors, having made all reasonable enquiries, confirm 
that to the best of their knowledge and belief the information contained in this 
document is accurate and complete in all material respects and not misleading or 
deceptive, and <strong>there are no other matters the omission of which would 
make any statement herein or this circular misleading</strong>.&quot; (our bold)</blockquote>
<p>We regard the omission of Mr Chan's new service contract from the circular as 
very material. If investors had known how much he stood to gain under the new 
contract, this would have been a very material factor in deciding whether he 
should also have such a large slug of options. Not only that, but the contract 
was so large relative to the company's finances, that in our view it should have 
been announced when it was signed on 29-Jan-2010, as negative price-sensitive 
information under
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_13.pdf" target="_blank">
Listing Rule 13.09</a>. It follows from this that the statement that there are &quot;no other 
matters...&quot; was itself false and misleading, and we have urged the SFC to 
investigate this in a complaint filed on 2-Jun-2012. Several (if not all) of the 
directors would or should have had direct knowledge of Mr Chan's service 
contract, including Mr Chan, his wife, and the two INEDs who served on the 
Remuneration Committee.</p>
<h3>The regulatory position on service contracts</h3>
<p>Directors' service contracts, being the provision of services to a company by 
a connected person, are connected transactions, but under
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_14a.pdf" target="_blank">
Listing Rule 14A.31(6)</a>, they are exempt from the announcement and 
independent shareholders' approval requirements, even if that director is a 
substantial (10%) or controlling (30%) shareholder, and regardless of how 
excessive the provisions are. This forms a giant loophole in the rules. The only 
exception (for contracts signed since 1-Feb-2004) is that under
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_13.pdf" target="_blank">
Listing Rule 13.68</a>, if the contract may last more than 3 years, or if it 
requires more than 1 year's notice or 1 year's pay to terminate, then it must be 
subject to independent shareholders' approval. That's why Mr Chan's contract 
lasts 3 years and requires 1 year's pay or notice to terminate, the maximum 
allowed without approval.</p>
<p class="regbox"><strong>Note to regulators</strong><br>The Listing Rules are 
clearly inadequate, as the Xpress case demonstrates. In our view, if the 
director is also a substantial shareholder, then service contracts, initial pay 
packages, and increases 
in pay beyond a reasonable speed limit (say,10% per year), should be subject to 
independent shareholders' approval.</p>
<p>You may be wondering, what about the much-vaunted Remuneration Committee, 
which became mandatory under Listing Rules on 1-Apr-2012 (this was not a joke, or at least it 
wasn't meant to be). Well yes, Xpress has had one since 2005, and obviously, 
this did not stop Mr Chan being hideously overpaid.</p>
<p>And why are HK Remuneration Committees generally ineffective? Investors 
should remember that in a controlled company, the controlling shareholder 
effectively determines the membership of the entire board, including the 
&quot;independent directors&quot;, by voting in all the elections in shareholder meetings. 
We explained that in detail in our article &quot;<a href="3wisemonkeys.asp">The 
three wise monkeys of HK boards</a>&quot; on 15-Feb-2011. So whatever committees you 
put INEDs into, it makes no difference if they aren't truly independent to start 
with. They are only as independent as the controlling shareholder wants them to 
be.</p>
<p class="regbox"><strong>Note to regulators</strong><br>Unless independent 
directors are elected (and removable) only by independent shareholders, with 
controllers abstaining, the INEDs cannot be truly independent. Controllers could 
still nominate candidates with whom they feel they can work on the board, but 
the candidates should be subject to approval by independent shareholders. If 
regulators are not willing to make that Listing Rule change, then they should stop 
this charade, and drop the requirement to have INEDs at all. Instead make a rule 
that you cannot call anyone an INED unless the controlling shareholder and 
executive directors, as shareholders, have abstained from voting on the election 
of the INED in general meeting.</p>
<h3>Disclosure of Mr Chan's service contract</h3>
<p>The service contract was first disclosed almost by accident. Xpress announced 
a &quot;Major Transaction&quot; under the Listing Rules, and as a consequence it 
had to produce a circular, and that
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2010/0916/LTN20100916166.pdf" target="_blank">
circular dated 17-Sep-2010</a> had to include details of any service contracts 
which were not terminable within one year without payment of non-statutory 
compensation. So, deep in the circular, on page 6 of Appendix II, you will find 
a brief summary of Mr Chan's contract, by then 7 months old. This also means 
that the contract was briefly &quot;available for inspection&quot; at the company's office 
in HK until the EGM on 4-Oct-2010, but under HK's archaic Listing Rules, these 
documents do not have to be filed online, nor kept available after the EGM. To 
put them on display in this way is really a sham form of disclosure.</p>
<p class="regbox"><strong>Note to regulators<br></strong>As we've
<a href="submn110325.asp#docsOnDisplay">said before</a>, the Listing 
Rules should be amended to require that all &quot;documents available for inspection&quot; 
are filed on the central web site for listed company disclosures (currently at 
HKEx), and are kept there forever, not taken down after a few days. If something 
is important enough to be disclosed, then it should not be hidden in a physical 
office and then withdrawn.</p>
<h3>The outcome</h3>
<p>Mr Chan's total remuneration was HK$64.62m in the year to 31-Mar-2011, and 
$54.19m in the year to 31-Mar-2012, a <strong>2-year total of $118.8m</strong>. That absorbs the 
bulk of the gross profits of the group, which were $67.27m in 2011 and $72.58m in 
2012, mostly from rental income on investment properties, and hotel operation. 
After tax, the group made a profit attributable to shareholders of $45.42m in 
2011 and a loss of $156.4m in 2012, a <strong>net 2-year loss of $111.0m</strong>. 
You can ascribe that loss almost entirely to the excessive remuneration of Mr 
Chan.</p>
<h3>A history of excessive pay</h3>
<p>We should note that this is not the first time Mr Chan has had an unusual 
contract. Way back on 1-Oct-1992, he signed a 5-year contract with Xpress as 
Executive Director, for a potentially lucrative 20% of net operating profit 
before tax (if any). That didn't work out though - Xpress made a loss every year 
until from then until 1995, so it was replaced with a contract effective for 5 
years from 1-Nov-1995, under which he would receive a not-unreasonable HK$100k 
per month on a 13-month basis, subject to an annual increase of at least 10%. At 
the same time, his wife <a href="../dbpub/positions.asp?p=5525">Chan Kong Yoke Keow</a> 
(<strong>Mrs Chan</strong>) was contracted for 5 years at 
$80k on a 13-month basis, again with at least 10% annual increase. The couple 
each 
had the right to terminate on 180 days' notice, but there was no mention of any 
such right for Xpress, which would presumably have to pay for the full 5-year contract.</p>
<p>Xpress continued to make losses, but on 1-Feb-1997, 15 months after the 
previous contract, Mr Chan swapped it for a new 5-year contract on a tripled 
salary of HK$300k x 13 months, again with at least a 10% annual increment, which would 
have increased it to at least $439k per month for the 5th year. This time, the 
annual report stated that if Mr Chan's employment was terminated by Xpress 
following a change of control of the company, or for any reason not specifically 
excluded, then the full 5-year amount was payable. On the same date, Mrs Chan 
was given a 5-year contract on similar terms starting at $88k x 13, plus a 
housing allowance of $30k per month.</p>
<p>But that wasn't enough either. Just 6 months later, on 1-Aug-1997, Xpress and 
Mr Chan supplemented his contract, extending it out to 31-Jul-2007 (a ten-year 
contract from then) and tripled his pay again to $900k x 13, or $11.7m per year, 
and not only that, but he would also get a bonus of 8% of pre-tax profits, if 
any. Assuming the 10% escalator remained in place, by the 10th year his basic 
salary would be $27.59m, plus the profit share. By comparison, at 31-Mar-1997, 
Xpress had shareholders' funds of just $133.5m.</p>
<p>But wait, that's not enough either. 6 months later, on 1-Feb-1998, perhaps 
realising that the way he was running Xpress, it was unlikely to make 
much profit, they supplemented the contract again, making the salary either 101% of 
the previously-agreed amount, or 5.9% of the net assets at each financial year 
end, whichever is higher. At the same time, Mrs Chan's contract was also 
supplemented, making her salary either 110% of the previously agreed amount, or 
1% of net assets at each financial year-end, whichever is higher. So the couple 
together would get 6.9% of net assets per year, whether or not the company made 
a profit. They knew by then, after a 
series of placings during 1997, that the net assets would be the driver of this 
formula. Net assets at 31-Mar-1998 were $397.1m, so 6.9% of that would imply 
combined salaries of $27.40m for the following year, plus Mrs Chan's housing 
allowance.</p>
<p>On 9-Nov-1998, Mr Chan's contract was replaced with a new, shorter contract, 
dialled back to 5 years and deemed effective from 1-Feb-1997, expiring 
31-Jan-2002. This still gave him the same salary arrangement from 1-Feb-1998, 
plus a housing allowance of $30k per month, as if he needed it. On 25-Nov-2000 
with 15 months remaining, Mr Chan's contract was extended by 3 years 
to 31-Jan-2005.</p>
<p>On 22-Apr-2002, Mrs Chan signed a new contract, replacing the expired one, 
for 5 years to 1-Feb-2007, on the same terms as before. The 2004 annual report 
mentions that for 12 months from 1-May-2002, she &quot;voluntarily received only 75%&quot; 
of her pay under the contract. That still earned her between $4.5m and $5.0m in 
the year to 31-Mar-2003 (pay was then disclosed in bands).</p>
<p>On 22-Aug-2003, Mr Chan gave a &quot;Voluntary Undertaking to Reduce Basic 
Remuneration by Approximately 50% effective August 1, 2003&quot; and &quot;requiring any 
additional remuneration to be subject to the Company's profit before taxation&quot;. 
Although it didn't say on what basis it would be &quot;subject&quot;, it did say that the 
total remuneration would not exceed the previous arrangement. This apparent 
munificence initially made no material difference to pay - the executive directors were 
paid $33.23m in the year to 31-Mar-2004, compared with $31.33m the previous 
year. That includes 2 of their children, who were on modest stipends.</p>
<p>There was a dip in the year to 31-Mar-2005, when Mr Chan was paid 
$15.0m, but then, on 22-Feb-2005, Xpress and Mr Chan signed a new 3-year contract to 
31-Jan-2008 for HK$2.1m per month ($25.2m per year), plus $30k of housing 
allowance. Under the new Listing Rules which took effect in 2004, the new 
contract was limited to 1 year's pay in the event of termination by the company.</p>
<p>On 3-Jul-2007, Mr Chan signed a new contract for 2 years from 1-Feb-2008 to 
31-Jan-2010. This provided a nominal salary of $185 per month (the same as the 
stock code), plus a housing allowance of $160k per month. On 20-Nov-2008 the 
allowance was reduced to $30k per month effective 1-Nov-2008. Meanwhile, Mrs 
Chan's contract expired on 31-Jan-2007 but continued on a &quot;month-to-month basis&quot; 
to pay on the same formula as before.</p>
<h3>15-year total</h3>
<p>Under HK Listing Rules, directors pay has been disclosed in annual reports on 
a named basis since 2005. In the 8 years to 31-Mar-2012, Mr &amp; Mrs Chan were paid 
a total of $268.2m (of which Mr Chan was paid $216.7m), while the total profit 
attributable to shareholders over that period was just $60.4m.</p>
<img class="center" alt="" src="../images/XpressPay.gif">
<p>Going back further, in the 7 years to 31-Mar-2004, the Executive Directors 
were paid $206.0m, while the net loss attributable to shareholders was $307.9m. 
The only EDs during that period were Mr &amp; Mrs Chan and their children, but it is 
clear from the pay bands that the vast majority went to Mr &amp; Mrs Chan, with one 
child earning between $1.0m and $1.5m in 4 of those years and otherwise below 
$1m each.</p>
<img class="center" alt="" src="../images/XpressPay2.gif">
<p></p>
<p>Taking the 15 years together, the Chan family has taken pay of $492.8m, and 
the total profit attributable to shareholders was...well, there wasn't any. It 
was a total loss of $247.5m. And let's be clear, none of this pay was a breach of 
the Listing Rules - because the Listing Rules contain no constraints on such 
atrocious behaviour. During the same 15-year period, the
<a href="../dbpub/ctr.asp?i1=1081&amp;rel=0&amp;d1=3/27/1997">Webb-site Total 
Return</a> on the shares was -69.15%.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=19774">Chanceton Capital Partners Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4862">Zensun Enterprises Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=5525">Chan Kong, Mabel Yoke Keow</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=5524">Chan, Ambrose Heng Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8740">Da Roza, Joao Paulo</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=55437">Wong, Aston Tat Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=67950">Wong, Kam Wah (SFC:AEZ347)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7656">Wong, Peter Dor Luk</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=125">Directors' remuneration</a></li>
				
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
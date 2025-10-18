
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

<script type="text/javascript">document.title="Global Tech's Wreck";</script>

	<div class="summary">We take a detailed look at the accounts of mobile phone box-pusher Global Tech (Holdings), which has been doshing out massive "commitment fees" and huge salary increases to its directors even in a year in which it plunged into loss. With a controlling shareholder about to face a mainland trial for tax evasion, he has apparently been making undisclosed connected transactions and breached his non-compete undertaking with the company.</div>

<h2 class="center">Global Tech's Wreck<br>
<span class="headlinedate">10 February 2003</span></h2>
<p>As we've said before, when a Hong Kong company incorporates the words
&quot;Global&quot; and &quot;Tech&quot; into its name, you can be fairly certain
that it is neither global in scope nor possesses any great technology. Such is
the case with Global Tech (Holdings) Limited (<b>GT</b>, 0143), a
distributor of mobile phones to mainland China for the likes of Samsung and
(formerly) Nokia. Pushing boxes is not high-tech. </p>

<p>GT was listed on 9-Apr-99 in an IPO of 100m shares at HK$1.80 per
share (or $0.18 per share after a 10:1 split). The IPO represented 25% of the
enlarged company, and included a secondary listing in Singapore, with 17.75% of
the offer being placed there. The shares soared into the mobile stratosphere,
reaching a high of $16 ($1.60 post-split) in Mar-00, when it was briefly worth
$6.5bn. With the shares down to
$11.25 in Sep-00, Deutsche Bank took them on a roadshow, sang the praises of the
growing Chinese mobile market, and set a price target of $18.50 ($1.85
post-split). <i>&quot;One of the cleanest and most attractive China stocks we
have analysed for some time&quot;</i> wrote their analyst, since departed. On
Friday 7-Feb-03, the shares closed at $0.085. </p>

<p>At IPO, GT was chaired by Johnny Sze Tsang Fai (<b>Mr Sze</b>), and
his brother, Timothy Ethan Sy Ching-tang (<b>Mr Sy</b>) was Vice Chairman. Their family
trust owned 69.75% of the company, and a mystery <i>&quot;independent third party&quot;</i> held another 5.25%
through a Bahamas company. </p>

<h3>Directors' bonuses</h3>

<p>The first warning sign on GT was the very generous bonus arrangement for directors, which
was clearly disclosed in the IPO prospectus. The
bonuses were based on <i>&quot;profit after minority interests but before
taxation and extraordinary items&quot;</i> (<b>PAMIBT</b>) and calculated as
follows: </p>
  <table class="numtable center">
    <tr>
      <td class="left"><i>PAMIBT</i></td>
      <td><i>Bonus</i></td>
    </tr>
    <tr>
      <td class="left">First $0-150m</td>
      <td>5%</td>
    </tr>
    <tr>
      <td class="left">Next $50m</td>
      <td>10%</td>
    </tr>
    <tr>
      <td class="left">Excess over $200m&nbsp;</td>
      <td>15%</td>
    </tr>
  </table>

<p>This was subject to a cap at 10% of the PAMIBT. So did they stick to that?
Take a look at the table below: </p>

<img class="center" alt="" src="../images/global4.gif">

<p>Note: as minority interests were always loss-making, we have
excluded them from the calculation, since otherwise the directors would be
rewarded for higher losses in the subsidiary, which clearly is not the intent. </p>

<p>As you can see, GT breached the bonus limit in the first two years.
The only way to get the calculations below 10% is if you adjust PAMIBT to add
back the bonuses before dividing the total into the bonuses - then you get 9.98%
and 9.81%, but that is not what the prospectus said would happen. Either the prospectus
was misleading, or the bonuses breached the contractual limit. The Stock Exchange does not
appear to have noticed this. </p>

<p>Secondly, did you notice that we labelled the results for 30-Sep-01 as <i>&quot;Original&quot;</i>?
That's because they were restated in 2002, to include a $120m write-off of
goodwill on a 51%-owned loss-making subsidiary called Sino Media Group (SMG) Ltd (<b>SMG, </b>formerly known as
Chinese Sports Program Syndicating Co Ltd). Even though the 2001 profit was
restated and reduced by $120m, the
directors didn't hand back their 15% of it last year. The actual results are as
follows: </p>

<img class="center" alt="" src="../images/global2.gif">

<h4>SMG History </h4>

<p>The acquisition of SMG was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000620/LTN20000620040.doc" target="_blank">announced</a>
on 19-Jun-00, although a letter of intent had been <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000128/LTN20000128038.HTM" target="_blank">announced</a>
as early as 27-Jan-00. Initially, the target was described as <i>&quot;an
internet and network company&quot;</i>, but 5 days and several newspaper stories
later, GT <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000202/LTN20000202033.HTM" target="_blank">came
clean</a> - it was a TV advertising company, which on 1-Oct-99 entered into an
8-year agreement effective from 1-Jan-00 with a PRC company called Tianjin
Zhongti Film &amp; Television Co Ltd (<b>TZFT</b>) to buy and re-sell
advertising space on a daily evening programme known as China Sports
Broadcasting Network, to be broadcasted via <a href="http://www.cetv.edu.cn/" target="_blank">CETV-1</a>,
a state-owned TV channel. SMG would also post real time sports news on its own
web site, and that was the feeble justification for the deal - GT planned to become a WAP mobile phone internet content provider. </p>

<p>SMG had net liabilities at 31-Mar-00 of HK$12.52m, and would have to pay a
yearly fee for the advertising rights of RMB15m (HK$14.1m), escalating at 5% per
annum. Despite the ink on the advertising deal being barely dry when negotiations
began, the vendor, Mr Cheng Kwee Cheh (<b>Mr Cheng</b>), received new GT shares valued at
HK$130m. The owner of the other 49% of SMG was not disclosed (perhaps it was
TZFT). Mr Cheng was described as an <i>&quot;independent third party&quot;, </i>and
we know nothing else about him. Mr Cheng was also to receive $35m in cash if SMG
ever listed on a stock exchange, but that never happened. </p>

<p>On 6-Jan-03, SMG was put into voluntary liquidation. The directors' report at
30-Sep-02 reveals that GT had loans receivable from SMG of <b>$72m</b>
which were unsecured and interest bearing at HIBOR, or 2.02% p.a.. In the year
to 30-Sep-02, GT wrote off <b>$39.6m</b> of receivables from the
minority shareholders of SMG. In effect then, 100% of SMG's losses had been
funded by GT, but until the write-off, the company had held out the
hope of recovery from the minority shareholder, and boosted director's bonuses
in the process. We wonder how realistic that hope was. </p>

<h4>Technical note </h4>

<p>One of the big problems with the kind of bonus plan adopted by GT is
that it does not allow for loss-making years in the formula. There is no
&quot;make-good&quot; provision that requires them to recover previous losses before the
bonus share kicks in again. Hedge fund managers are well-used to this
&quot;hi-on-hi&quot; formula, but it seems that GT is not. Their
formula incentivises the directors to &quot;manage&quot; profits, and encourages
them to defer recognition of losses in order to boost bonuses, and then throw
the problems all into a single
loss-making year. Despite mounting receivables and
inventory, GT did not make any major provisions until the year to
30-Sep-02. Then it made a massive $257m write-down of inventory and a $210m
provision for bad and doubtful debts. It also wrote off $57.4m for long-term
investments. </p>

<p>We cannot judge whether these provisions were excessive, but because of the
lack of a &quot;make-good&quot; in the bonus formula, management had an
incentive to make excessive provisions for both inventory and debt in a single
loss-making year, since any recovery if that inventory is sold or debts repaid
later may increase the future profits and hence bonuses. </p>

<p>Another company which has used a similar bonus structure with a pattern of
massive profits followed by similarly massive losses since its IPO is <a href="../dbpub/articles.asp?p=4952" target="_blank">Regent
Pacific Group Ltd</a> (0575). Enough said - that disaster epic will have to wait
for another article. </p>

<h3>Directors committed</h3>
<p>The IPO prospectus said that the 4 executive directors had entered into
service contracts for 3 years from the date of listing on 9-Apr-99 (terminable
by 6 months notice) and were entitled to <i> &quot;fixed&quot;</i> salaries totalling
$3.384m, or an average $0.85m per director. The next table shows that the <i>&quot;basic
salaries and allowances&quot;</i> ran to a lot more than that, and increased
297% over 3 years. No explanation for the extra allowances over the salaries, or
the sharp increase in 2002, was ever given. It is being economical with the
truth to say that salaries are <i>&quot;fixed&quot;</i> if you are going to
supplement them with increasing additional allowances.</p>

<img class="center" alt="" src="../images/global3.gif">
<p>No directors' bonus was payable last year because of the $235m loss. In case
you were worried about how the directors would make ends meet, you will be
pleased to see that the loss included a <i>&quot;commitment fee&quot;</i> for 3
directors totalling <b>$41m</b>. Yes, they are committed alright. The breakdown
of this figure between directors is not given, but the highest paid director
last year received total remuneration of at least $38.5m. It's a fair bet that
this is Mr Sy.</p>
<p>Not only that, but the old contract expired on 9-Apr-02 and the new contracts
for the 3 directors who have survived since IPO includes a combined <i> &quot;fixed
salaries&quot;</i> of $25,126,080. Again, no breakdown is given, but that's an average of $8.38m per director, an
increase of<b> 886%</b> over the previous $0.85m per director.</p>
<p>But wait, there's more. The bonuses are now unlimited. There is no longer any
formula, no cap, and the bonuses will be determined <i>&quot;in the sole discretion of
the board&quot;</i>.</p>
<p>The total executive directors' remuneration in the 4 years since the IPO is
$212.4m, equivalent to 27.4% of the total net profits attributable to
shareholders of $775.9m.</p>
<h4>Regulatory note</h4>
<p>This case demonstrates all too clearly why the latest proposals from the
Stock Exchange on disclosure of directors pay on a &quot;no names&quot; basis
are grossly inadequate. We need to go much, much, further than that. The
commitment fees in this case are simply a way of making up for the absence of
the massive bonuses received in previous years. It is a clear abuse of minority
shareholders' money, and a clear conflict of interest for the directors who
control the company to determine
their own pay in this fashion.</p>
<p>The Listing Rules should require that minority shareholders' approval be
obtained for such massive variations in compensation plans. We have previously
proposed that any new profit sharing or similar scheme, and any annual increase
of more than 20% in an individual director's total compensation, should be
approved in advance by minority shareholders.</p>
<h4>INEDs</h4>
<p>In case you were wondering, the two <i>&quot;independent non-executive
directors&quot; </i>of GT since the IPO are David Ip Man Tin (<b>Mr Ip</b>) and
Michael Tai Ah Lam (<b>Mr Tai</b>). Mr Ip has been an INED of <a href="../dbpub/articles.asp?p=1366" target="_blank">King
Pacific International Holdings Ltd</a> (0072) since 6-Sep-01. Mr Tai has been a
director of Haywood Investments Ltd (0905) since 11-Dec-01 and became Managing
Director and CEO on 1-Jun-02.</p>
<h3>China Tax Trouble</h3>

<p>On 14-Jan-02, GT's shares fell 15.6% from $0.64 to $0.54. The
company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020114/LTN20020114043.HTM" target="_blank">said</a>
it didn't know why. The next day, they <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020116/LTN20020116009.doc" target="_blank">said</a>: </p>

<blockquote>
  <p>&quot;Regarding an article appearing on the Hong Kong Economic Times on 15 January 2002 in relation to the detention in Guangzhou City of a member of the Company's senior management due to certain taxation issues, the Board is not aware of the sources of such article but wishes to confirm that none of the directors of the Company is involved in the alleged investigation&quot; </p>

</blockquote>
<p>The stock closed unchanged that day, but the shares soon began to slide
again, including a 21.4% fall on 23-Jan-02 to $0.385 before the stock was
suspended at lunch-time. A week later, the company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020130/LTN20020130016.doc" target="_blank">announced</a>
that it was negotiating a possible placing of new shares (which never happened)
and almost in passing, mentioned that they had seen an article in <i>Ming Pao </i>on
24-Jan-02 in relation to </p>

<blockquote>
  <p>&quot;the detention and investigation of a member of the Company's senior
  management... due to breach of certain relevant rules; and... the avoidance of
  customs duties by the Company by parallel importing Samsung mobile phones into
  the PRC...&quot; </p>

</blockquote>
<p>But not to worry, the Board wished to state that: </p>

<blockquote>
  <p>&quot;none of the directors or senior management of the Company is involved
  in the alleged detention and investigation...&quot; </p>

</blockquote>
<p>The day after that announcement, both Mr Sze and Mr Sy failed to show up for
the company's Annual General Meeting, and their staff claimed that it clashed
with another important meeting. Well after all, other shareholders are not that
important, are they? </p>

<p>Six days later, Mr Sze resigned as Chairman and his brother Mr Sy was promoted from Vice Chairman
to Chairman. The company also appointed Paul Tse Po Lau (<b>Mr Tse</b>) as an
executive director,&nbsp; and he turned out to already own 2.3% of the company. </p>

<p>The trail fell cold until 24-Sep-02, when local papers quoted a report from
state-run news agency Xinhua that Mr Sze had been arrested by Guangdong police
on accusations of hiding RMB304m in sales and evading RMB51.78m in Value Added
Tax and RMB53m of corporate taxes, a total of RMB104m (HK$98m). </p>

<p>In an <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020925/LTN20020925020.pdf" target="_blank">announcement</a>
on 24-Sep-02, GT said: </p>

<blockquote>
  <p>&quot;The Board also noted...articles...[in] today's newspapers in respect
  of the alleged involvement of the former chairman of the Company, [Mr Sze] in
  mistated sales and tax evasion by two of his privately controlled companies,
  Guangdong Foshan City Xinlingyu Telecommunications Equipment
  and Tianfu Telecommunications Equipment...&quot; </p>

</blockquote>
<p>the announcement also stated that GT <i>&quot;had sold mobile
phones&quot;</i> to the two companies controlled by Mr Sze - which raises two
interesting questions: </p>

<ul>
  <li>Why were the sales of phones to Mr Sze's companies not disclosed as
    connected transactions?</li>
  <li>Doesn't this business amount to a breach by Mr Sze of his non-competition
    undertaking?</li>
</ul>
<p>In the IPO prospectus (p46), both Mr Sze and his brother agreed not to
compete with GT until:</p>
<blockquote>
  <p>&quot;the earlier of the date on which he and his associate cease to be a
  controlling shareholder of the Company or Director or the securities of the
  Company cease to be listed n the Hong Kong Stock Exchange&quot;.</p>
</blockquote>
<p>Quite clearly, Mr Sze still controls the Company through the family trust -
indeed, it is a condition of one of the bank loans that the company remains at
least 35% controlled by the brothers. So what was Mr Sze doing trading in mobile
phones outside of GT?&nbsp;</p>
<h3>Geographic shift</h3>
<p>It is most interesting to note that in the year to 30-Sep-02, there was a
dramatic shift in the declared location of GT's sales. Take a look at
this table:</p>
<img class="center" alt="" src="../images/global5.gif">
<p>Sales to the mainland plunged, while shipments in &quot;HK, Macau and
Taiwan&quot; soared. This increase of
over $3bn in non-mainland sales, equivalent to perhaps 2 million phones at wholesale
prices, is very unlikely to be as a result of higher sell-through to end-users
in HK, and it is likely that the phones found their way to mainland China, but the method
is not clear. What was the scale of GT's dealings with Mr Sze's
companies? Did he &quot;introduce&quot; any other third parties?</p>
<h3>Bad Debts</h3>
<p>A large part of the loss for the year to 30-Sep-02 was due to a $210m
provision for bad and doubtful debts. Does this have anything to do with the
sudden change in geographic sales? Are any of these debts due from Mr Sze's
companies, we wonder?</p>

<h3>HK Tax Trouble</h3>

<p>As if the investigation of Mr Sze wasn't enough, the latest annual report
reveals that GT itself is in dispute with the Hong Kong Inland Revenue over the
tax of <i>&quot;certain subsidiaries&quot;</i> from 1996/7 to 2002/2. The amount
of disputed tax assessment was not specified, or the extent to which it exceeds
the amounts previously provided for.</p>

<h3>Breach of covenant</h3>

<p>The accounts also show that at 30-Sep-02, the financial covenants and
undertakings of a loan agreement were breached by GT, and the company was
negotiating with the banks on this. GT had total banking facilities of $1,366m
of which all but $16m was utilised. This is despite the fact that GT had cash
and bank balances of $1,070m and &quot;trading investments&quot; (mostly
unlisted debt securities) of $262m. However, trade payables (mostly for phones)
had swollen from $757m a year earlier to $1,055m, all of which were <i>&quot;aged
less than 30 days&quot;</i>.</p>

<h3>Conclusions</h3>

<p>What do we have here? A company which: </p>

<ul>
  <li>grossly overpays its directors and apparently
    breached a formula limit</li>
  <li>wrote off $210m in bad debts, $257m in inventory
    and $57m in long-term investments last year to 30-Sep-02</li>
  <li>restated and reduced 2001 profits by $120m
    without calling back the 15% bonuses from directors</li>
  <li>paid directors &quot;commitment fees&quot; of
    $41m in a year when bonuses were not payable</li>
  <li>topped up &quot;fixed&quot; salaries with
    increasing allowances, and then increased the salaries by an average 886%
    after 3 years</li>
  <li>has a controlling shareholder and former
    Chairman about to undergo trial for tax evasion, who appears to have
    breached his non-competition undertaking, and has been buying mobile phones
    from the company in unannounced connected transactions</li>
  <li>is in dispute with the HK Inland Revenue over
    taxes</li>
  <li>is in breach of financial covenants on a loan
    agreement</li>
</ul>

<p>and the Stock Exchange has done nothing. If Hong Kong investors had class
action rights and contingent legal fees, you would probably see shareholder
claims for recovery from the directors, but we don't, and we won't. </p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=8378">Guoan International Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2538054">Cheng, Kwee Cheh</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8514">Ip, David Man Tin</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8511">Sy, Timothy Ethan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8510">Sze, Johnny Tsang Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8516">Tai, Michael Ah Lam</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=3437">Tse, Paul Po Lau</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=125">Directors' remuneration</a></li>
				
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
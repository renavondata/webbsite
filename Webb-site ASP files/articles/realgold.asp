
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

<script type="text/javascript">document.title="Real Gold, XING, QXM and Prod-Art";</script>

	<div class="summary">What has Wu Ruilin, the controlling shareholder of Real Gold Mining, been up to? We take you through the latest shenanigans, worry about his overseas listings, and take a look at his past history in the HK market, which dates back to 1998.</div>

<h2 class="center">Real Gold, XING, QXM and Prod-Art<br>
<span class="headlinedate">20 June 2011</span></h2>
<p><a href="../dbpub/orgdata.asp?p=47924">Real Gold Mining Ltd</a> (<strong>RGM</strong>, 
0246)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110620/LTN20110620023.pdf" target="_blank">
admitted</a> this morning that its controlling shareholder,
<a href="../dbpub/positions.asp?p=8785">Wu Ruilin</a> (<strong>Mr Wu</strong>), 
who on the face of things has no official role in the group, had in fact 
remained as only director of Lita Investment Ltd (<strong>Lita</strong>), RGM's 
only direct subsidiary, and on behalf of Lita, he signed pledges over the entire 
issued share capital of its subsidiary Fubon Industrial (Huizhou) Co., Ltd (<strong>Fubon</strong>) 
in favour of <a href="../dbpub/adviserships.asp?p=19779">Shanghai Pudong 
Development Bank</a>, to secure loan facilities granted to private companies 
under Mr Wu's control.</p>
<p>The first pledge was signed on 27-Sep-2009 (7 months after RGM listed) for 
facilities of CNY100m for 2 of Mr Wu's private companies. That was released on 
the first anniversary. 10 days later, on 7-Oct-2010, the second pledge was 
signed for facilities of CNY240m for 4 of his private companies, and that pledge 
was only released on 16-Jun-2011 (last Thursday) after he was rumbled.</p>
<p>As shown in the diagram on
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090210/00246_484910/E117.pdf" target="_blank">
page 104</a> of the 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090210/LTN20090210013.HTM" target="_blank">IPO prospectus</a> dated 10-Feb-2009, Lita owns Fubon, which owns 
Chifeng Fuqiao Mining Co Ltd (<strong>Chifeng Fuqiao</strong>), which owns the 
mining subsidiaries of the group. That structure hasn't changed much; in note 33 of 
RGM's
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110323/LTN20110323265.pdf" target="_blank">
2010 annual report</a>, Lita is the only directly-owned subsidiary. So Mr Wu had 
put essentially all the assets of RGM at risk to support financing for his 
private business. RGM says that its board of directors did not know that Mr Wu 
had signed these pledges until 13-Jun-2011, after enquiries were made by the <em>
SCMP, </em>which broke the story on Friday 16-Jun-2011.</p>
<p>Mr Wu is not a director of RGM and is not listed as a senior executive in its 
annual report or the prospectus. However, that was not always the case. RGM was 
incorporated on 13-Mar-2008 and he was an Executive Director from then until 
18-Dec-2008, less than 2 months before the IPO. We suspect this resignation was 
part of the listing approval process at the Stock Exchange, because after 
describing his other mining interests on page 178, it states on
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090210/00246_484910/E118.pdf" target="_blank">
page 179</a>:</p>
<blockquote>&quot;We are satisfied that our Company is capable of carrying on 
its business independently of Mr Wu.&quot;</blockquote>
<p>Yet there are embarrassing remnants of his presence: particularly the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090210/00246_484910/E133.pdf" target="_blank">
Independent Technical Expert's Report</a>, which carries the same date as the 
prospectus. There, on page V-62, it says:</p>
<blockquote>&quot;The Company's senior management team is headed by Mr. Wu 
Ruilin, founder and Chairman of the Board of Directors of the Company&quot;</blockquote>
<p>Oops! Maybe an expert should know, but this is somewhat contradicted by RGM's 
statement on page 115-116:</p>
<blockquote>
	<p>&quot;Historically, the role of Mr Wu, our ultimate controlling 
	shareholder, has been to assist in identifying and acquiring our initial 
	strategic assets (i.e. our Gold Mines). However, since acquisition of our Gold 
	Mines, Mr Wu has hired a team of professional management for our Group and hence 
	has neither been involved in the daily development of our Gold Mines nor in the 
	operations of our Group. Therefore, we have been operating independently from 
	our controlling shareholder....&quot;</p>
	<p>&quot;...Mr Wu's role in the future is expected to be limited to 
	exerting influence on our Company at the shareholder level...&quot;</p>
</blockquote>
<p>But, on page 101, it says point blank, and without any suggestion that this 
might be inappropriate:</p>
<blockquote>&quot;Mr Wu is currently the sole director of Lita&quot;</blockquote>
<p>And finally, deep in the prospectus,
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090210/00246_484910/E135.pdf" target="_blank">
Appendix VII-10</a> states that Mr Wu was then a director of Fubon, along with 2 
other people who are not directors or senior managers of RGM. At the next level 
down, Mr Wu was also one of 4 directors of Chifeng Fuqiao (including 3 EDs of 
RGM) and he was its only legal representative. Finally down at the 3 mining 
subsidiaries, Mr Wu was the sole director of one of them, Luotuochang Mining, 
while Wang Zhentian, the Chairman of RGM, was the only director of the other 
two. At the AGM of RGM on 30-Apr-2009, 5 weeks after it listed, Mr Wang was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090430/LTN20090430646.pdf" target="_blank">
voted out</a> of office as a director. Mr Wu voted against his re-election. We 
don't know whether Mr Wang still sits on the subsidiary boards or who took over 
from him.</p>
<p>A listed company (RGM) putting a non-director in sole directorship of its 
only subsidiary (Lita) in itself shows a severe weakness of internal controls. 
The annual report says (p37):</p>
<blockquote>&quot;The Board is responsible for implementing and maintaining the 
Group's internal control system and reviewing its effectiveness. During the year 
ended 31 December 2010, they have carried out a review of the implemented system 
and procedures, including areas covering financial, operational and legal 
compliance controls and risk management functions. The Board considered that, 
for the year ended 31 December 2010, the Company's internal control system is 
adequate and effective...&quot;</blockquote>
<p>Yeah, right. One of the most basic questions in any internal control review 
would be &quot;do we have control over our subsidiaries?&quot;. Another would be 
&quot;can any single person cause harm?&quot;. RGM now says that after 
the Feb-2009 IPO, it hired an &quot;independent internal control consulting firm&quot; to 
conduct an annual review of the internal controls. <strong>RGM should name that 
firm and explain </strong>why it considered it appropriate for <em>any</em> 
subsidiary to have only one director, and why it considered it appropriate for 
Mr Wu to have any directorships in the group at all. RGM says that Mr Wu 
resigned from Lita on Thursday &quot;and from positions in other companies in the 
Group&quot;.</p>
<p>Rather conveniently, RGM has obtained a legal opinion from
<a href="../dbpub/orgdata.asp?p=8518">Commerce &amp; Finance Law Offices</a> dated 
19-Jun-2011 (Sunday) that the pledges were &quot;invalid&quot;, although it does not say 
on what basis. <strong>RGM should explain why the pledges were invalid. </strong>
That may get them out of potential legal trouble, because page 12 of the annual 
report states:</p>
<blockquote>&quot;Pledge of assets: there were no significant charges on group 
assets at 31 December 2010 and 31 December 2009.&quot;</blockquote>
<p>It is an offence under
<a href="http://www.hklii.org/hk/legis/en/ord/571/s298.html" target="_blank">
Section 298</a> of the Securities and Futures Ordinance knowingly or recklessly 
to make a false or misleading statement inducing transactions. If the pledges 
were valid, then that statement would be false. If investors had known that the 
group's assets had been pledged, they might not have paid the prices they did 
for the stock.</p>
<h3>Mr Wu's other listings</h3>
<p>Mr Wu apparently got into mining relatively late in life. Through companies 
he controlled, he bought the first of the 3 mining companies which were floated 
in RGM on 30-Oct-2006 and the last on 25-May-2007 before RGM's listing on 
23-Feb-2009. The total acquisition price of the 3 companies, all from 
independent third parties, was CNY205m.</p>
<p>Before that, Mr Wu's original business was making corded telephone handsets, 
a business he established in 1992. This was listed on Nasdaq on 16-Feb-1999 as 
Qiao Xing Universal Telephone Inc and renamed on 28-Jan-2010 as
<a href="../dbpub/orgdata.asp?p=66267">Qiao Xing Universal Resources, Inc</a> (Nasdaq:
<strong>XING</strong>), after it
<a href="http://www.sec.gov/Archives/edgar/data/1051846/000095013409007243/0000950134-09-007243-index.htm" target="_blank">
acquired</a> China Luxuriance Jade Co Ltd (<strong>China Luxuriance</strong>) 
from Mr Wu. China Luxuriance owns &quot;the right to receive the expected residual 
returns&quot; from Chifeng Haozhou Mining Co., Ltd, a start-up copper-molybdenum 
mining company. XING paid Mr Wu USD110m for this, of which USD30m was cash and 
the rest in shares at USD2 each.</p>
<p>Mr Wu is Chairman and CEO of XING and his son, Wu Zhi Yang, is Vice Chairman. 
On 2-May-2007 XING spun off its mobile phone business into a NYSE-listed 
subsidiary, <a href="../dbpub/orgdata.asp?p=66269">Qiao Xing Mobile 
Communication Co. Ltd.</a> (NYSE: <strong>QXM</strong>) of which Mr Wu is Vice 
Chairman and his son is Chairman. Given that he was pledging the assets of RGM, 
investors in XING and QXM might wonder whether their assets have also been put 
at risk to support Mr Wu's private business.</p>
<h3>Mr Wu and Prod-Art</h3>
<p>Mr Wu has an earlier appearance in the HK market: on 17-Jun-1998,
<a href="../dbpub/orgdata.asp?p=4971">SEEC Media Group Ltd</a> (then Prod-Art 
Technology Holdings Ltd, <strong>Prod-Art</strong>, 0205) then a struggling 
electronics maker, bought 28.84% of Wu Holdings Ltd (<strong>Wu Holdings</strong>, 
BVI) for HK$40m, presumably from Mr Wu. Wu Holdings in turn controlled XING. 
That deal was a few months before XING was listed on Nasdaq. Mr Wu became an 
Executive Director of Prod-Art on 26-Aug-1999.</p>
<p>On 31-Dec-2001, Prod-Art (by then named Sino Infotech Holdings Ltd)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020107/LTN20020107014.doc" target="_blank">
agreed to sell</a> its stake in Wu Holdings for HK$40.04m (in 3 instalments) to 
Mr Wu's family trust, which already owned the remaining 71.16%. This was a 
connected transaction duly
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020301/LTN20020301081.doc" target="_blank">
approved</a> by minority shareholders, at a $24.4m discount to Prod-Art's attributable share of 
the net assets at 31-Dec-2001, resulting in an impairment charge of the same 
amount. We are putting the <a href="../codocs/0205_020125c.pdf" target="_blank">
circular</a> online for readers' interest. The final instalment for the sale was 
due by 31-Oct-2002. Mr Wu
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021213/LTN20021213111.pdf" target="_blank">
resigned</a> from Prod-Art on 13-Dec-2002, but
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030430/205/F115.pdf" target="_blank">
notes 28 and 38(a)</a> of the 2002 annual report reveal that he had only paid 
$18.42m by 31-Dec-2002 and it was not until 9-Apr-2003 that the sale was 
actually completed.</p>
<p>But the Prod-Art story doesn't end there. On 3-Mar-2003, Prod-Art
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030310/LTN20030310081.pdf" target="_blank">
agreed</a> to sell its original business, Prod-Art Co Ltd (HK), to a company 
called Ankson Ltd (<strong>Ankson</strong>) for HK$19m. That was a P/E of about 
2 times its net profit of $8.9m in 2002. The deal completed on 30-Jun-2003. 
Ankson, incorporated in the BVI on 10-Apr-2002, was described as &quot;independent&quot;, 
and its owner was not disclosed. If it was Mr Wu, then as a director within the 
previous 12 months, he was a connected person of Prod-Art and it would have been 
a connected transaction. But of course, we have no knowledge of who owned 
Ankson. </p>
<p>But wait! Fast forward seven years to the RGM prospectus of 10-Feb-2009, and you 
will find that Ankson (with the same BVI incorporation date) was then 
wholly-owned by Mr Wu. According to
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090210/00246_484910/E117.pdf" target="_blank">
page 101</a> of the prospectus, Fubon was established on 23-Jun-2006 (when Fubon 
was known as &quot;Huizhou Ankson Plastic Moulding Technology Co Ltd&quot;) and was then 
90% owned by Ankson, and Mr Wu acquired Ankson on 23-Apr-2007 - from whom it 
does not say. It seems like an amazing coincidence - how did Ankson, the 
independent company which bought Prod-Art's main subsidiary, end up being owned 
by Mr Wu?</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=66269">Qiao Xing Mobile Communication Co. Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=66267">Qiao Xing Universal Resources, Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=47924">REAL GOLD MINING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4971">SEEC MEDIA GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=8785">Wu, Ruilin (1952)</a></li>
				
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
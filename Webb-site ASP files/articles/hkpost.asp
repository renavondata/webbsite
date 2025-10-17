
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

<script type="text/javascript">document.title="The Post Office Investment Fund";</script>

	<div class="summary">Following yesterday's Audit Commission report on Hongkong Post, we look at the potential closure of rural post offices, removal of its mail monopoly and universal service obligation, and its cash-rich balance sheet and prime property. We also discuss the Government's tendency to stash pots of money away in different bodies rather than pass recurrent spending through the budget and the Legislative Council and manage its liquid funds centrally.</div>

<h2 class="center">The Post Office Investment Fund<br>
<span class="headlinedate">22 April 2010</span></h2>
<p>Hong Kong's <a href="http://www.aud.gov.hk/" target="_blank">Audit Commission</a> 
yesterday published a
<a href="http://www.aud.gov.hk/pdf_e/e54ch08.pdf" target="_blank">report on the 
provision of postal services</a> by
<a href="http://www.hongkongpost.com/" target="_blank">Hongkong Post</a> (<strong>HK 
Post</strong>), the government-owned &quot;Trading Fund&quot; - a term it uses for a 
Government entity which is meant to be run on a stand-alone basis like a 
company, under the
<a href="http://www.hklii.org/hk/legis/en/ord/430/" target="_blank">Trading 
Funds Ordinance</a>.</p>
<p>Unfortunately this report did not cover the bigger issue with HK Post, namely 
its huge pile of cash and investments, and the location of its facilities on 
prime land. If you were an analyst looking at its 
accounts but didn't know whose accounts they were, then you would think that it is an 
investment fund which operates a postal service on the side, rather than the 
other way around, as we explain later in this article. We also look at the 
Government's general tendency to stash money away in different bodies rather 
than pass recurrent spending through the budget and the Legislative Council.</p>
<h3>The declining importance of mail</h3>
<p>The report takes aim at a number of issues, including the fact that 97 of the 
125 post offices make an operating loss. The 3 biggest losers lost $14.9m 
between them in the year to 31-Mar-2009. You can bet that those are on outlying 
islands or remote parts of the New Territories. Now the mail goes both ways, 
outbound and inbound, and for now, there is a universal service obligation for 
postal deliveries. HK Post has the mail monopoly, and it is not really practical to 
charge an increased tariff for mail to remote places, even though it costs more 
to deliver. Since HK Post still has to deliver mail, it can continue to collect 
outbound mail from
<a href="http://www.hongkongpost.com/eng/locations/spb/out/index.htm" target="_blank">
post boxes</a> at the same time.</p>
<p>We say &quot;for now&quot;, because as the importance of hard-copy correspondence 
declines in favour of e-mail (digitally signed where needed) and online 
payments, then there is little justification for the universal service 
obligation either. You can already pay almost all your bills online, receive 
bank statements online, apply for vehicle licenses online, and do your tax 
returns online. At some point, it will become socially acceptable to sell off 
the Post Office, scrap its monopoly, remove its universal service obligation, and allow it to 
compete freely. It would probably still deliver to all but the most difficult 
locations (because commercial users of direct mail marketing will require that) 
but it would not have to. The alternative is to require those who live in remote 
locations to collect their mail from a post office box, or for the remote 
addressee to pay someone to collect it and deliver to them. Indeed, competing 
service providers might enter the market, receiving mail from HK Post and 
delivering to customers at a charge to the addressee. This would not be much different than paying to get your 
newspapers delivered.</p>
<p>However, there is no reason why HK Post should continue to operate manned post 
offices at a loss. If people choose to live in remote places, then they should 
be prepared to come to urban areas for counter service, or use commercial 
courier services instead. Urban dwellers should not have to cross-subsidize 
rural dwellers. The sale of postage stamps can be done through other 
outlets, including convenience stores, or even online, using 
<a href="http://www.royalmail.com/portal/rm/jump2?catId=400046&amp;mediaId=106700775" target="_blank">
2D barcodes</a>. In the 
UK, 2,500 branches of the Royal Mail
<a href="http://www.postoffice.co.uk/portal/po/content2?catId=57600693&amp;mediaId=57600697" target="_blank">
were closed</a> over 18 months since Oct-2007 as part of what they called the 
&quot;Network Change Programme&quot;. The postal monopoly of Royal Mail was abolished on 
1-Jan-2006, and the market is now regulated by the
<a href="http://www.psc.gov.uk/" target="_blank">Postal Services Commission</a>.</p>
<h3>The cash-fat balance sheet of HK Post</h3>
<p>Here's what the Audit Commission report didn't cover. Take a look at the latest
<a href="http://www.hongkongpost.com/doc/publications/annual/2008_2009/annual_report2009.pdf" target="_blank">
annual report</a> for the year to 31-Mar-2009. The balance sheet is in page 110 
of the PDF. What we see is capital and reserves of HK$4.15bn. Of this, there is 
$1,800m of cash and bank deposits, $964m of &quot;structured&quot; notes and deposits, and 
$458m of &quot;held-to-maturity securities&quot;. That's a total of $3.22bn, so the cash 
and investments amount to about 78% of net assets.</p>
<p>Note 23(a) on investment policy says:</p>
<blockquote>&quot;To provide an ancillary source of income, surplus cash is 
invested in a portfolio of financial instruments. The portfolio includes 
held-to-maturity securities, structured notes, structured deposits and bank 
deposits. It is the POTF's policy that all investments in financial instruments 
should be principal-protected.&quot;</blockquote>
<p>In other words, their policy is that they should only invest in bonds or 
capital-guaranteed products where the downside is zero. They allow themselves 
some risk, by swapping the certainty of a fixed rate of return for the 
possibility of higher returns, but they should always get their money back in 
the end. Note 12 shows that the held-to-maturity securities are debt securities 
(bonds). Note 13 shows that most of the structured notes bear &quot;interest&quot; 
(surely, they mean investment returns) at rates determined by reference to the 
value of underlying investment funds (whatever those are) and underlying market 
indices (probably equity markets). It also says:</p>
<blockquote>&quot;For these structured notes, the embedded derivatives are 
separated from the notes and accounted for as derivatives... Due to the 
significant decline in the value of the underlying investment funds resulting 
from the deterioration of the world's financial markets during 2008, the 
embedded derivative of one structured note was crystallised on 5 December 2008, 
while the host contract was still being accounted for separately. Upon 
crystallisation, the payoff of the structured note would be the same as a 
zero-coupon bond with the maturity date unchanged.&quot;</blockquote>
<p>Now, take a look at note 5. They booked a <strong>loss of $121.8m</strong> on 
&quot;net realised and revaluation losses on derivative financial instruments&quot;. That 
loss was greater than all the other interest income and investment returns, 
dragging them into a negative net investment return of $22.5m for the year. If 
it is principal-protected, then that loss on the derivative should eventually be 
recovered by the maturity of the bond, but it just underlines that there is no free 
lunch in capital-guaranteed products - you are buying a combination of a 
derivative (usually a call-option on an index) and a discounted bond which 
matures at par.</p>
<p>In HK Post's case, some of its structured notes are of up to 
5-year maturity, as shown in note 23(c). so they'll be waiting a while to get 
their money back. Since they didn't need the money for at least 5 years, they 
should have returned it to Government instead. Furthermore, the issuing bank usually makes more profit on these 
products than it does on bank deposits - otherwise why would it peddle them to 
depositors in the first place? Incidentally, HK Post's annual accounts are audited by the Audit Commission, so 
they should have had something to say about this in yesterday's report.</p>
<p>Readers might be wondering where all the cash came from, given that the Audit 
Commission has just criticised HK Post for running 97 of its 125 post offices at 
a loss. Well, HK Post does make an overall operating profit, and it only returns 
part of that to the Government in the form of profit tax and dividends. The cash 
and bank deposits, net of a government loan, were $1.38bn at 31-Mar-2002, so 
they have swollen by $1.84bn in 7 years. Incidentally, you won't find any
<a href="http://www.hongkongpost.com/eng/publications/annual/index.htm" target="_blank">
annual report online</a> before 31-Mar-04, because they've been deleting the 
older ones. Luckily, we downloaded them earlier.</p>
<p>HK Post's best ever year was the year ended 31-Mar-1998, which included 
philatelic sales surrounding the 1-Jul-97 handover of sovereignty, something 
which can safely be called a non-recurring item. That year, it booked sales of $4.93bn and 
an operating profit of $1.23bn. Sales dropped to $3.52bn the next year, 
indicating that the surge in philately added around $1.4bn to turnover.</p>
<p>If HK Post were a listed company, investors would be demanding to know why it 
is hoarding so much cash, and why it is speculating in structured notes and 
structured deposits. This isn't a listed company, and the annual audit report is 
addressed to the Legislative Council. So, Dear Legislators, you should be asking the same 
questions. HK Post should return to market principles which Trading Funds are 
supposed to follow, and return its &quot;surplus cash&quot; to its only shareholder, the 
Government, rather than stashing it in questionable investments. Let the 
Government do that through the Hong Kong Monetary Authority's Exchange Fund - 
they're rather good at making questionable investments.</p>
<h3>Land value</h3>
<p>The other hidden asset of HK Post which received no mention in the Audit 
Commission's report is its property bank. That includes the
<a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=hong+kong+general+post+office&amp;sll=37.0625,-95.677068&amp;sspn=72.431071,86.660156&amp;ie=UTF8&amp;hq=&amp;hnear=General+Post+Office,+2+Connaught+Pl,+Hong+Kong&amp;ll=22.283227,114.159582&amp;spn=0.002671,0.002645&amp;t=h&amp;z=19&amp;layer=c&amp;cbll=22.283173,114.159679&amp;panoid=nxQtg4G6Ru7PDR4zy-EStg&amp;cbp=12,355.34,,0,-19.46" target="_blank">
prime piece of land</a> on which sits its grotty old 1970s-era headquarters in Central. 
The accounts do not reflect the site's value, but its about 50,000 sq ft of 
land, so at a plot ratio of 15 you could put about 750,000 sq ft of offices on 
it - and look across the street at Jardine House, Exchange Square and IFC. Take 
an accommodation value of say HK$10k per gross sq ft and the land is worth maybe 
$7.5bn. The General Post Office used to benefit from a waterfront site (it moved 
to this one after the 1960s reclamation), because before the Cross-Harbour 
Tunnel, all the mail arrived by sea (including surface mail from Kowloon and 
airmail from Kai Tak). Not any more, which is just as well, because there's a 
new reclamation in front of it. It could easily be moved to somewhere less 
central, releasing the land for sale.</p>
<p>There's just one snag though - in an <a href="../codocs/Star760814.pdf">
article</a> in the HK Star on 14-Aug-1976, it was reported that Hongkong Land, 
which owns Jardine House (then Connaught Centre), was promised by Government in 1971 that nothing in 
front of it would be built higher than 120 feet, or five stories. If true, then 
it was incredibly short-sighted of the Government. We don't know how long that 
agreement lasts - it might be as long as the land lease, which runs from 1970 to 
2110 (in two lots of 75 years), but it would be pretty amazing if it covers all 
the new land in front of the GPO too. We note that the article mentions the new 
1976 post office has a central vacuum cleaning system &quot;with a much higher sucker 
capability than ordinary systems&quot;. The same might be said of HK's then 
Government when it came to land deals - so little has changed!</p>
<h3>HK Post is not the only pot of gold</h3>
<p>HK Post is just one of several Government-owned bodies which are hoarding 
public wealth. Others include (figures at 31-Mar-2009):</p>
<ul>
	<li>The
	<a href="http://www.sfc.hk/sfc/doc/EN/speeches/public/annual/rep08-09/full.pdf" target="_blank">
	Securities and Futures Commission</a>, sitting on cash and bonds of 
	HK$4.90bn</li>
	<li>The
	<a href="http://www.mpfa.org.hk/english/quicklinks/quicklinks_pub/files/MPF_AR09_Eng_Full.pdf" target="_blank">
	Mandatory Provident Fund Schemes Authority</a> had $5.11bn and racked up an 
	investment loss of $283m for the year</li>
	<li>The
	<a href="http://www.ura.org.hk/usrAtt/222000/2009_low_e.pdf" target="_blank">
	Urban Renewal Authority</a> had $7.67bn</li>
	<li>The
	<a href="http://www.wkcdauthority.hk/filemanager/en/share/doc/info/AnnualReport2009/FullCopyVersion.pdf" target="_blank">
	West Kowloon Cultural District Authority</a> had $21.6bn in the bank</li>
	<li>The
	<a href="http://www.housingauthority.gov.hk/hdw/en/aboutus/publication/haar0809/" target="_blank">
	Housing Authority</a> had a whopping $57.5bn, including $6.11bn in equities 
	on which it lost $4.11bn that year.</li>
</ul>
<p>Rather than try to bring liquid assets back under centralised management (and 
Legislative Council authority for spending), the Government is busily creating 
more separate pots of gold. In the last 2 years it has annexed $26.3bn to the 
West Kowloon Cultural District Authority (which has yet to break ground in the 
West Kowloon Cultural Desert) and $18bn to set up a
<a href="http://www.legco.gov.hk/yr08-09/english/fc/fc/papers/f08-55e.pdf" target="_blank">
Research Endowment Fund</a> under the University Grants Council (which could 
have continued to receive annual funding instead). This reduces Legislative 
Council oversight of annual spending, leads to an uncoordinated approach to 
investment management, and also makes it harder to retract the money from bodies 
which have outlived their utility.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3728">HKSAR Government</a></li>
				
				<li><a href="/dbpub/articles.asp?p=34937">HKSAR Research Grants Council</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18581">HKSAR University Grants Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11585">HONG KONG HOUSING AUTHORITY (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10806">Mandatory Provident Fund Schemes Authority</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16864">URBAN RENEWAL AUTHORITY</a></li>
				
				<li><a href="/dbpub/articles.asp?p=46752">WEST KOWLOON CULTURAL DISTRICT AUTHORITY</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=145">Government policy - general</a></li>
				
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
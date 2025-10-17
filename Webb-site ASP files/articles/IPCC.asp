
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

<script type="text/javascript">document.title="Government Data Security - the IPCC Case";</script>

	<div class="summary">Webb-site.com editor David Webb blew the lid on a huge leak of data on complaints against the Police. More than two weeks on, the silence from the Government and IPCC offers no comfort to the victims, who could sue for injury to their feelings. We recount the discovery and call for an independent panel of inquiry into the bigger issue of data security across all HK Government organisations.</div>

<h2 class="center">Government Data Security - the IPCC Case<br>
<span class="headlinedate">28 March 2006</span></h2>
<h3>How we found it</h3>
<p>Around 2 a.m. on 9-Mar-06, your humble editor was doing a bit of late night 
research on the Hong Kong residential property market. He typed the street 
address of a property into Google, hit the enter key, and among the links 
returned was a huge text file containing the address, name, age, gender, ID 
number and a series of other data columns on around 20,000 people in Hong Kong.</p>
<p>After a few minutes of browsing the site, which contained a directory 
structure and hundreds of other files, it became obvious that we were looking at 
a copy of a database maintained by either the
<a target="_blank" href="http://www.ipcc.gov.hk">Independent Police Complaints 
Council</a> (<b>IPCC</b>) or the entity it oversees, the
<a target="_blank" href="http://www.info.gov.hk/police/hkp-home/english/contactus/index.htm#complaint">
Complaints Against Police Office</a> (<b>CAPO</b>), which itself is part of the 
Police and handles all incoming complaints against the police. Yes, that's an 
obvious conflict of interest, but don't get us started on that one. CAPO should 
really be separate from the Police, but it isn't.</p>
<p>The database contained complaints made from 1996 to 2004. As you would expect 
in such a database, it wasn't just information on the complainant that was 
compromised, but also the name, age, gender, rank and station of the police 
officers against whom the complaints were made, and specifics of the complaint 
and the outcome, including any action taken against the officer, up to 
dismissal. Other index tables seemed to record the occupation of the 
complainant, their educational attainment, and whether they had a criminal 
record. Also, if the complainant had been charged with an offence, then the type 
of offence was recorded, and the outcome of the prosecution, including the type 
of sentence.</p>
<p>One table seemed to classify nationality into either Chinese, Mainlander, 
Vietnamese, Filipino, Pakistani or Others. Complaints were also categorised into 
causes (presumably the cause was concluded after investigation), including 
&quot;tactical complaints&quot; and &quot;political complaints&quot; -&nbsp; imagine who gets that 
category.</p>
<p>It was obvious from the files that it wouldn't take long for anyone with some 
basic understanding of databases to reassemble the whole thing. It was also 
obvious from the location of the files, in a directory with a person's first 
name on it, which in turn was on a commercial server of a company with normal 
trading business, that this was not a police or IPCC server which had 
accidentally been opened up. At that early stage it was clear that two things 
had happened. First, somebody, acting with or without permission, had copied the 
database from what should be a secure IPCC or police server and put it on the 
commercial server, and second, that server had at some point become open to the 
public.</p>
<p>Not knowing the source of the leak, we had to allow for the possibility that 
it was caused by an employee or consultant of either CAPO or IPCC, so we thought 
it might be wrong to report it to the police themselves. An outside agency 
should be involved, one with investigatory powers. So we sent off an e-mail to a 
contact at the ICAC, and then, somewhat tired, went to bed.</p>
<p>Later that day, the ICAC came back to us and told us that an investigation 
was underway (the following day, we were told it had been referred for 
investigation to the technology crimes unit of the Police). We were concerned 
that, given the sensitivity of the situation, the authorities might be tempted 
to try to suppress or downplay the story. So in order to corroborate it, we gave 
an exclusive to the <i>South China Morning Post </i>late that afternoon. Readers 
with long memories might recall that the last time we did this was when we
<a target="_blank" href="kroll.asp">discovered that Kroll was investigating us</a> 
for our critical coverage of the Cyberport, back in 1999.</p>
<p>The team over at <i>SCMP</i> pulled out all the stops and ran the story on 
the front page the next day, Friday 10-Mar-06. By the time they went to press, 
they had contacted the company which hosted the server, and the files had all 
been deleted, although the rest of the server was still there. Unfortunately, 
SCMP published the domain name of the server, and this allowed anyone who knew 
how to do advanced searches on Google (restricted by domain) to find copies of 
all the files in Google's cache relatively easily. As a responsible citizen, we 
didn't tell any other media organisation how to find the files, but by the end 
of Friday, some of the more internet-savvy journalists had figured it out. It 
was almost 3 days before the authorities managed to get Google to delete the 
cache files, on the early evening of Sunday 12-Mar-06.</p>
<h3>The Government response</h3>
<div style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
	Update 8-Apr-06: in the original version of this article, we stated that we 
	were unable to find any information on the IPCC web site regarding this 
	incident. We looked, naturally enough, at the
	<a href="http://www.ipcc.gov.hk/en/publication_03.htm">p</a><a target="_blank" href="http://www.ipcc.gov.hk/en/publication_03.htm">ress 
	releases</a> page, which still has nothing on it. However, the site now has
	<a target="_blank" href="http://www.ipcc.gov.hk/en/press_releases.htm">
	another press releases page</a>, one layer under &quot;<a target="_blank" href="http://www.ipcc.gov.hk/en/whatsnew.htm">What's 
	New</a>&quot;. That is where you will find information on the incident and 
	on a
	<a target="_blank" href="http://www.ipcc.gov.hk/en/pdf/IPCC%20Hotline.pdf">
	hotline</a> for complaints (2524-3841). Whoever 
	is designing their web site needs a lesson in user friendliness.</div>
<p>The only thing the Government has published itself was an
<a target="_blank" href="http://news.gov.hk/en/category/lawandorder/060310/print/060310en08006.htm">
article</a> on 10-Mar-06 on their propaganda site
<a target="_blank" href="http://www.news.gov.hk">news.gov.hk</a>, stating that 
an investigation has been launched by the IPCC and by the
<a target="_blank" href="http://www.pco.org.hk/">Office of the Privacy 
Commissioner</a>, Roderick give-me-some-teeth Woo. On Saturday morning, 
11-Mar-06, the IPCC held a press conference, but no press release was issued on 
the Government web site, so all we have to go on is media reports that the 
non-executive body had asked its full-time staff for a report.</p>
<p>The Privacy Commissioner, to his credit, has been somewhat more active, 
putting out an
<a target="_blank" href="http://www.pco.org.hk/english/infocentre/press20060310.html">
initial response</a> on 10-Mar-06 and then
<a target="_blank" href="http://www.pco.org.hk/english/infocentre/press_20060313.html">
announcing</a> a probe on 13-Mar-06. At the end of that announcement, you will 
find important advice:</p>
<blockquote>
	<p>&quot;according to Section 66 of the
	<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&Start=486&Count=30&Expand=486.1#486.1">
	Personal Data (Privacy) Ordinance</a>, any citizen who suffers damage, <b>
	including injury to feelings</b>, from this incident are entitled to civil 
	compensation from the data user.&quot; (our bold)</p>
</blockquote>
<p>So if you have ever made a complaint against the police, or if you are a 
police officer who has been complained about, then even if you cannot prove any 
financial loss, you should consider taking legal action against the IPCC and/or 
the Government for the emotional distress or &quot;injury to feelings&quot; caused by the 
leak of your data. Have you been losing sleep at night? You may not even need to 
pay a lawyer for this - if you start at the
<a target="_blank" href="http://www.judiciary.gov.hk/en/crt_services/pphlt/html/sc.htm">
Small Claims Tribunal</a>, for civil damages up to $50,000, then it doesn't 
allow legal representation, although you may end up in the Court of First 
Instance on appeal.</p>
<p>Clearly the Government knows this, and that's probably why you've seen 
nothing in writing from the IPCC stating their position or saying &quot;sorry&quot;. They 
don't want to open the floodgates to litigation. They are somewhat fortunate 
that Hong Kong does not allow class actions and contingent legal fees, because 
otherwise there would be lawyers willing to represent the entire class of 
victims and sue for damages, on behalf of all 20,000 victims.</p>
<h3>How did it happen?</h3>
<p>In our view, the Government will not escape blame in this episode. The IPCC 
secretariat apparently allowed its data to be taken off-site by a consultant, 
reportedly for the purpose of conversion of the database from one format used by 
COPA to another used by the IPCC. The person who worked for the consultant then 
reportedly left the consultancy, and took the data with him, storing it on the 
commercial server. An alternative explanation might be that the consultancy 
outsourced the work to him.</p>
<p>Press reports on a
<a target="_blank" href="http://www.legco.gov.hk/general/english/panels/yr04-08/se.htm">
Legislative Council Security Panel</a> hearing on 17-Mar-06 indicate that the 
consultancy contract did not include any provision for security of the data. If 
so, then that's outrageous. What we know, from
<a target="_blank" href="http://www.asiamedia.ucla.edu/article.asp?parentid=41156">
media reports</a> so far, is that the contract was with EDPS Systems Ltd (<b>EDPS</b>). 
Their web site is inactive, but don't worry, here's a
<a target="_blank" href="http://web.archive.org/web/20050309024908/http:/www.edps.com.hk/">
copy from archive.org</a> of what it looked like on 9-Mar-05. According to that:</p>
<blockquote>
	<p>&quot;From as early as 1977, EDPS has been one of the major suppliers of 
	contract manpower to the Hong Kong Government and large corporations.&quot;</p>
</blockquote>
<p>The Government on 25-Jul-05
<a target="_blank" href="http://www.info.gov.hk/gia/general/200507/25/07250181.htm">
awarded</a> 3-year &quot;standing offer agreements&quot; to EDPS and 9 other companies. We 
don't know which other departments' contracts EDPS is or was working on.</p>
<p>The domain where the data was hosted, china2easy.com, is
<a target="_blank" href="http://www.dnsstuff.com/tools/whois.ch?ip=china2easy.com">
registered</a> to a company called De Motif Limited, although that company was 
dissolved on 23-May-03.
<a target="_blank" href="http://web.archive.org/web/20050206090525/http:/www.china2easy.com/">
Click here</a> to see what china2easy.com looked like on 5-Feb-05 (be patient, 
the archive is slow). It shows that another company, China Motif Ltd (<b>China 
Motif</b>), was now associated with the domain. So it appears that the web site 
was functional at least up to 5-Feb-05, and became dysfunctional and open to the 
internet at some time after that.</p>
<p>A quick search at the Companies Registry tells us that China Motif has 3 
shareholders, including 20% held by a director, Heung Yam-ling, the person 
identified by media reports as Kirren Heung, the former employee of EDPS.</p>
<h3>Remedial action</h3>
<p>Your editor has in fact been the subject of another possible data leak 
recently. The case took place in America, where the laptop of an Ernst and Young 
(<b>E&amp;Y</b>) employee was stolen from a locked car. Although the laptop required 
a password to use it, E&amp;Y did not claim that the hard drive itself was 
encrypted, so if it wasn't then anyone determined enough could have read the 
files directly off the drive.
<a target="_blank" href="http://www.theregister.co.uk/2006/02/25/ernst_young_mcnealy/">
The Register</a> reports that Sun Microsystems CEO Scott McNealy's data was also 
on the drive. Your editor received a
<a target="_blank" href="../codocs/E&Y060214.pdf">Valentine's day letter</a> 
from E&amp;Y, informing him of the incident, and offering to place a &quot;fraud alert&quot; 
with the 3 major US credit bureaus to alert creditors of the risk of identity 
theft, and offering free credit monitoring for the next year. E&amp;Y also set up a 
call centre to field queries on the incident. E&amp;Y knows they have exposed 
themselves to potential litigation, and they are doing the right thing by 
seeking to mitigate the damage with these remedial measures.</p>
<p>That kind of response is what the IPCC should have done, and can still do. 
They should write to every complainant whose personal data was published, 
explain what happened and offer them free credit monitoring at Government 
expense for at least a year. They should also offer a change of identity number, 
although many may choose not to change it, since it leads to all sorts of 
updating requirements with banks, employers, insurers and so on. The longer they 
delay and prevaricate, presumably consulting lawyers on their potential 
liability, the more distress they will cause to those whose data were released.</p>
<h3>What else could go wrong?</h3>
<p>This is undoubtedly the worst breach of data privacy in Hong Kong's history. 
30 years ago, it would have been almost impossible to remove this much data from 
any government department, because almost everything was kept on paper or large 
mainframe computers. Today, the entire tax assessment and payment records of 
every tax-payer in Hong Kong would comfortably fit on a 60GB iPod hard drive, 
and you'd probably have room for their immigration movements and driving licence 
details left over.</p>
<p>The implications of this case reach far beyond the IPCC, which is just one of 
hundreds of government-related organisations. The Government should establish an 
expert panel of inquiry to investigate:</p>
<ul>
	<li>Are there uniform standards of electronic data security across all 
	government departments and organisations, including quasi-independent 
	organisations such as the ICAC and SFC?</li>
	<li>Do these standards prevent any single rogue employee, or consultant, 
	from removing data from secure government facilities, without express 
	permission?</li>
	<li>If data are to be removed from secure government facilities, then are 
	the data subject to adequate protection, including encryption and dual-key 
	access to machines, so that no single consultant can copy the data?</li>
	<li>Are those security arrangements audited before the data are released to a 
	consultant?</li>
	<li>Do consultants give contractual undertakings for data security?</li>
	<li>Are consultants prevented from sub-contracting or outsourcing the 
	work, and the data, to third parties?</li>
</ul>
<p>Pending such a report, which should be published in full, the Government 
should put an immediate stop on all consulting contracts which involve off-site 
data work until these issues can be addressed. It is obviously too easy at 
present for an employee of a consultant to simply leave and take the data with 
him.</p>
<p>The Government has a duty to protect the personal data it holds on all of us, 
and steps must be taken to ensure that such a loss never happens again. They 
cannot treat this as just an isolated incident. It is a wake-up call, and 
changes must come from it.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

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
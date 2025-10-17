
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	text-decoration: underline;
}
</style>
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

<script type="text/javascript">document.title="Government misled LegCo over HKIDs";</script>

	<div class="summary">A quick Sunday search using a single popular name finds 8 pairs of matching masked HKIDs in the Companies Registry. There must be hundreds or thousands of other such pairs on other names - yet the Government claimed on Friday that it could only find 8 in the entire database. (Updated 13-Apr).</div>

<h2 class="center">Government misled LegCo over HKIDs<br>
<span class="headlinedate">12 April 2021</span></h2>
<p class="revisedate"><a href="#update1">Updated</a> 13-Apr-2021</p>
<p>In 2013, facing opposition from investors (<a href="identity2.asp">led by Webb-site</a>), professionals, 
businesses and the media, the Government withdrew a proposal to redact Hong Kong 
Identity (HKID) card numbers from the Companies Registry.</p>
<p>Now it's back, and the Government hopes to ram it through a neutered 
Legislative Council (<strong>LegCo</strong>), first submitting a
<a href="https://www.legco.gov.hk/yr20-21/english/panels/fa/papers/fa20210409cb1-737-7-e.pdf" target="_blank">
discussion paper</a> to the Financial Affairs Panel (<strong>FAP</strong>) for 
its meeting last Friday, 9-Apr-2021. At the meeting, Secretary for Financial 
Services and the Treasury <a href="../dbpub/positions.asp?p=1868735">Christopher Hui 
Ching Yu</a> (<strong>Mr Hui</strong>) told the FAP (at 
13:13:55 in the English-dubbed
<a href="https://webcast.legco.gov.hk/public/en-us/SearchResult?MeetingID=M21040032" target="_blank">
video</a>):</p>
<blockquote>"In April we conducted a study. We found that there were 588,000 
entries on the register and only 8 of them have the same name and the same 4 
digits on the ID card, so the probability is very low." (English translation)</blockquote>
<p>Oh, really? This contradicts the position in a 
<a href="https://www.cr.gov.hk/en/publications/docs/122009_ch7-e.pdf" target="_blank">consultation paper</a> published 
on 17-Dec-2009 by the Government-appointed Standing Committee on Company Law 
Reform, which said (para 7.15(a)):</p>
<blockquote>"in view of the fact that different persons having the same name are 
quite common in Hong Kong, restricting access to identification numbers may 
deprive the public of a means of uniquely identifying individuals, and might 
make it easier for the dishonest to escape creditors or otherwise engage in 
fraudulent activity. The option of masking 3 or 4 digits of an identification 
number would not serve the purpose of identifying a person as there are cases of 
persons with the same name having similar identity card numbers;"</blockquote>
<p>Also, in a defensive
<a href="https://www.info.gov.hk/gia/general/202103/31/P2021033100993.htm" target="_blank">
press release</a> on 31-Mar-2021, the Government claimed that the partial HKID 
(the prefix letter(s) and 3 digits of the HKID) "should be sufficient to enable 
searchers to ascertain the identity of the director concerned".</p>
<p>Really? So, how big a risk is mistaken identity? Is Mr Hui correct that out of 
more than half a million people in the register, only 8 (pairs) have the same 
name and the same 4 digits on their HKID? Of course not, and we'll prove it. A 
brief reminder: HKIDs have a 1-letter or sometimes 2-letter prefix followed by 6 
numerals. So if 3 numerals are masked (any 3 of 6), there are 1,000 possible 
HKID numbers behind the mask. There is also a check-digit (in brackets) on the card, which can be 
calculated using our handy <a href="../dbpub/idcheck.asp">generator here</a>. 
Conversely, if one numeral is redacted in the HKID, it can be calculated if the 
check-digit is known.</p>
<p>We didn't have to look far to find matches. We picked just one common name, 
"Chan, Chi Keung". That is, we entered family name "Chan" and given name "Chi 
Keung", into the Companies Registry ICRIS search system. It's the most fun you 
can have for HK$22 on a Sunday afternoon, although it really should be free (<a href="cr.asp">article 
here</a>), like grown-up registries in other countries/places.</p>
<img class="center" alt="ICRIS Directors Index Search" src="../images/ICRIS-DIS.jpg">
<p>The result was 245 records, of which 243 showed a redacted HKID, none 
used a passport (the alternative to HKID) and 2 had neither an HKID nor a 
passport. One of the records, currently the 180th in the sequence, had a malformed HKID of 
"E30031***)" in the passport field. It should actually read "E30***4" in the 
HKID field.</p>
<p>It did not take us long to find a match:</p>
<img class="center" alt="Chan Chi Keung match 1" src="../images/CCK1.jpg">
<p>We verified that these are different people - one is D30<strong>170</strong>4 
and the other is D30<strong>714</strong>4. In each example, we won't tell you 
which order they are in, even though the 
information is publicly available and you can find it yourself (it's in the 
source code of the results page) - so we're not identifying anyone. The point here 
is just to prove that there are different people behind the masks, by allowing 
fellow journalists and others to enter the HKIDs and retrieve the name "Chan, 
Chi Keung".</p>
<p>Here's another pair:</p>
<img class="center" alt="Chan Chi Keung match 2" src="../images/CCK2.jpg">
<p>They are in fact E74<strong>162</strong>8 and E74<strong>531</strong>8. And 
another:</p>
<img class="center" alt="Chan Chi Keung match 3" src="../images/CCK3.jpg">
<p>They are in fact E81<strong>070</strong>5 and E81<strong>235</strong>5. And 
another pair (the first and third entries, ignore the middle entry):</p>
<img class="center" alt="Chan Chi Keung match 4" src="../images/CCK4.jpg">
<p>These are in fact G448<strong>17</strong>9 and G448<strong>63</strong>9. 
Notice that the 4th character is the same, "8", so they only differ by 2 digits. 
Even if the Registry were to display 5 characters and redact only two, as in 
"G448**9", they would still appear the same. And here's another:</p>
<img class="center" alt="Chan Chi Keung match 5" src="../images/CCK5.jpg">
<p>These are in fact G63<strong>52</strong>60 and G63<strong>84</strong>60 - 
again, they only differ by 2 digits, so would be the same if masked as "G63**60". Are you counting? Here's our 6th match:</p>
<img class="center" alt="Chan Chi Keung match 6" src="../images/CCK6.jpg">
<p>These are in fact G64<strong>416</strong>7 and G64<strong>504</strong>7. 
There are 2 more pairs of names sharing the same masked ID. They appear at 
different points in the sequence, because in each pair, one has a 
Chinese-character name and the other does not.</p>
<ul>
	<li>The 7th pair, currently 5th and 212th in the sequence, show the 
	HKID as "A94***5". They are different people, A94<strong>0</strong>6<strong>5</strong>5 and 
	A94<strong>6</strong>6<strong>8</strong>5 (again, only 2-digits apart).</li>
	<li>The 8th pair, currently 38th and 215th in the sequence, show the HKID as 
	"D15***3". They are different people, D15<strong>944</strong>3 and D15<strong>057</strong>3.</li>
</ul>
<p>So just by searching for a single name, we found 8 pairs of people with the 
same name and same masked ID, showing how real the risk of mistaken identity is. 
And you will recall that Mr Hui claimed they could only find 8 matches in the 
entire database, not just with one name like we did. Given that there are many 
other popular names in HK, there are probably hundreds or thousands of other 
pairs.</p>
<p>Incidentally, in these 245 records, there were also 21 double entries: 
that is, a person had used the same ID with 2 variations of his/her 
Chinese-character name (blank, or slightly different characters), 2 
triple-entries and 1 quad-entry (take a bow, E30***4).&nbsp; So in fact, there 
were 215 unique IDs and 2 records with no form of ID, all with the English name 
"Chan, Chi Keung".</p>
<p>We hope that LegCo takes note of this and sends Mr Hui back to his database 
to tell us the true number of 4-character matches in his 588,000-people 
database, which is surely more than the 8 we found. What a confusing place Hong 
Kong is becoming. How ironic that the Government passed a law in 2019 
prohibiting face masks in public assemblies so that people could be 
identifiable, arguably deterring them from committing crimes, but now wants to mask the 
identities of people trading with the privilege of limited liability, 
incentivising fraud and corruption. Masks may protect people from infections but 
sunshine is the best disinfectant in the Companies Registry. Keep the masks off 
the HKIDs, and drop the paywall while you are at it.</p>
<p><strong>If you have a view on this, please drop an email to the LegCo 
Financial Affairs Panel at <a href="mailto:panel_fa@legco.gov.hk">
panel_fa@legco.gov.hk</a>.</strong></p>
<h3 id="update1">Update, 13-Apr-2021</h3>
<p>Late last night at 23:20, the Government
<a href="https://www.info.gov.hk/gia/general/202104/12/P2021041200904.htm" target="_blank">
published a response</a> (<strong>Response</strong>) to this article without 
directly citing it. The Response claimed that our search used "any three out of 
the six numbers instead of the first three". That claim is false because, as 
shown above, we didn't pick which numerals to redact: the Companies Registry 
does that - these are direct screenshots from the registry search. We did not 
selectively choose different numerals to redact. Currently, they are redacting 
the 3rd to 5th numerals; in future they plan to redact the 4th to 6th numerals.</p>
<p>If the registry shifts the 3-digit mask, it will make no difference to the 
probability of a match, because there will still be 1000 possible HKIDs that 
look the same when masked. The only circumstance in which the probability would 
change is if the numbers are not fully utilised or unevenly distributed - for 
example, if they stopped issuing sequential numbers at 499999, then blanking the 
first 3 digits would only have 500 possible matches, while blanking the last 3 
digits (as proposed by Government) would have 1000 possible matches and a higher 
risk of mistaken identity. However, we know from Webb-site Who's Who that the 
number space in many letters was exhausted long ago - and a few years from now 
they will have to start using ambiguous letters like O or Q (which can look like 
zero when written) or more likely move to a regular double-letter system.</p>
<p>Apart from immigrants, numbers are generally issued on birth certificates and 
become HKIDs when the holder reaches 11. By the time they are old enough to be 
directors at age 18, the numbers in their alpha-numeric sequence will likely be 
exhausted. More
<a href="https://accessinfo.hk/zh_HK/request/you_guan_xiang_gang_shen_fen_zhe_2" target="_blank">
info here</a> and
<a href="https://en.wikipedia.org/wiki/Hong_Kong_identity_card#HKID_number" target="_blank">
here</a>.</p>
<p>Second, in the Response, the Government admitted that its search only 
involved <span class="auto-style1">current</span> directors of
<span class="auto-style1">current</span> companies, not former directors of 
current companies or former directors of dissolved companies. There are 
currently about 3 million companies in the register, of which 1.4 million are 
active. To anyone performing due diligence or investigative journalism, the past 
and present directorships are all relevant, so the Government's search was 
artificially constrained. Searchers need to know whether the director has left a 
trail of corporate bankruptcies behind her, or has been associated with other 
individuals via former directorships of the same company - so the proper test is 
the whole database, not a smaller subset.</p>
<p>Third, in the Response, the Government claimed that it could only find 8 
pairs with "identical Chinese and/or English full names". The problem there is 
that directors use variations of their names when filing, sometimes with or 
without a Chinese name, sometimes omitting an English given name. So the same 
person may file as "Peter Chan", "Peter Chan Chi Keung" or "Chan Chi Keung", 
with a chinese name given as "陳志強" or "陳志强" (look closely, the third character 
is different). A person born in the mainland may use "Zhang" rather than 
"Cheung", "Wang" or "Huang" rather than "Wong" and so on. So if the HKIDs are 
masked, then a simple search by English or Chinese name won't capture all of his 
past and present directorships, while a full HKID would do so.</p>
<p>Fourth, given the poor state of the registry's web site, we have no 
confidence in the I.T. department that even their narrow search of <em>current</em> company directors was 
executed correctly - for example, did they treat 2 people with the same English 
name, same masked HKID, but one of whom did not state a Chinese-character name, 
as different? What about the same English name but slightly different Chinese 
characters? Searchers should be able to use English, still an official language 
in Hong Kong and the language of international finance, if Hong Kong is to 
maintain its role as an international financial centre.</p>
<p>Finally, the whole point of an identity number is to uniquely identify 
someone, a more precise version of a person's name. Any masking of results will 
frustrate that objective. The HKID is not a secret and should not be abused by 
commercial entities as a password for services instead of setting up a secure 
password or other authentication method only for that service. Without a full HKID, searchers 
will not be able to match results across other public registries such as the 
Land Registry and obtain public information about the unique individual.</p>
<p>This goes further than directorships and property ownership - look for example at the list of 
appointees to public bodies such as District Fight Crime Committees (soon to 
elect seats in the rejigged Chief Executive Election Committee) and you will 
often find common names with no indication of who they are. Which "Wong 
Chi Chung", for example, sits on
<a href="https://www.had.gov.hk/en/18_districts/my_map_02_dfcc.htm" target="_blank">
the Eastern District committee</a>? 
We have no idea. The Government should disclose full HKIDs when appointing 
people to any public body, or including them in any public licence register, so 
that the public can know to whom they are referring and the media can 
investigate any conflicts of interest they may have.</p>
<p>For more on this subject, listen to our discussion on RTHK Radio 3 "Backchat" 
this morning, <a href="../audio/Backchat210413.mp3"><strong>podcast here</strong></a>.</p>
<p><em>&copy; Webb-site.com, 2021</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2322557">HKSAR Companies Registry</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1868735">Hui, Christopher Ching Yu</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=114">Company & securities law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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
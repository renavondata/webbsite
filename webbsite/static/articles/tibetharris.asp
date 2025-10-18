
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

<script type="text/javascript">document.title="Is Tibet entitled to self-determination?";</script>

	<div class="summary">This is the article by Senior Counsel Paul Harris originally commissioned by Hong Kong Lawyer, the journal of the Law Society, the Editorial Board of which approved, but then U-turned and decided not to publish. In the interests of freedom of speech and debate that are cornerstones of HK's success, Webb-site.com is publishing it instead.</div>

<h2 class="center">Is Tibet entitled to self-determination?<br>
<span class="headlinedate">26 April 2008</span></h2>
<p class="revisedate"><a href="#Harris">By Paul Harris, SC</a></p>
	<ol>
		<li>The purpose of this article is to explore whether	Tibet can be 
	said to have a right to self-determination under international law.</li>
		<li>The official position of the Chinese Government on this 
	issue is that Tibet is an 
	inalienable part of the People's Republic of China (just as France once claimed that Algeria 
	was an inalienable part of Metropolitan France). Those who question this are regularly attacked in the official 
	Chinese media in vitriolic terms as &quot;splittists&quot;<a id="_ftnref1" href="#_ftn1">[1]</a>, 
	and anti-China. If they are themselves Chinese and live in China 
	they are liable to be imprisoned. Wei Jing Sheng and more recently Hua Jia 
	are well-known Mainland Chinese dissidents imprisoned for calling for a new 
	Chinese government attitude towards Tibet. </li>
		<li>Questioners about Tibet from outside China are also habitually criticized by 
China for &quot;interfering in 
China's internal affairs&quot;. However to 
	the Tibetans and most people in the world outside China who are familiar with Tibet's 
	situation, it is an international problem crying out for a solution. </li>
		<li>Most countries recognize China's sovereignty over Tibet. 
	The one notable exception is the United 
	Kingdom which traditionally recognizes &quot;suzerainty&quot; of 
China with autonomy for 
Tibet, a subtle evasion which 
	happens to be fairly close to the actual situation of Tibet in relation to China 
	during the last years of the Ching dynasty (1644-1911).
	&nbsp;The 
	United States has officially recognized China's sovereignty over Tibet 
	since 1966. Many states have glossed over or deliberately left undefined the 
	question of whether their recognition is de jure or de facto i.e. 
	recognizing 
China as having a legal 
	title, or merely recognizing the fact that it is in reality ruling Tibet.
		</li>
		<li>Notwithstanding these ambiguities, overwhelming state 
	recognition for a given territorial status is itself usually powerful or 
	even conclusive evidence of that status in international law. The question 
	therefore arises as to why Tibet should be different? To answer 
	this it is necessary to consider the meaning of sovereignty and of 
	self-determination in international law and the facts of China's involvement with Tibet.
		</li>
	</ol>
	<h3>What is sovereignty?</h3>
	<ol start="6">
		<li>Under the traditional theory of state sovereignty which 
	underpinned international law for three hundred years, it was for the rulers 
	of states to determine by agreement between themselves which territories 
	they would rule over. This system, formalized by the Treaty of Westphalia in 
	1648, did not give any role to subjects in choosing their ruler. If sovereignty was not determined by conquest, it was decided by 
	mutually agreed cession. No one consulted the inhabitants of the island of 
	Minorca before it was ceded by Spain to Britain by the Treaty of Utrecht in 
	1713, or before it was ceded to Britain a second time, after capture by the 
	French, by the Treaty of Paris in 1763, or before it was ceded back to Spain 
	by the Treaty of Amiens in 1802. Minorca's experience was typical of many small European 
	territories which happened to be coveted by more than one European power. 
	Similar cession with complete disregard for the views of the inhabitants was 
	also the fate of overseas colonial territories.
		Bombay became British in 1662 because it was ceded to 
England by Portugal as the dowry of Charles II's 
	Portuguese bride, Catherine of Braganza. </li>
		<li>Modern international law, although now applied at least 
	to some extent by every country in the world, is largely a European 
	invention<a id="_ftnref2" href="#_ftn2">[2]</a>. 
	This applies particularly to the doctrine of state sovereignty, under which 
China claims sovereignty over 
Tibet. It has been cogently argued <a id="_ftnref3" href="#_ftn3">[3]</a> 
	that by appropriating this European concept to claim sovereignty over Tibet, 
	China is distorting a traditional historic relationship between the Ching 
	dynasty emperors and the Dalai Lama of Tibet, which was that of a patron and 
	a religious leader, and not that of a sovereign and a subject. If this is 
	right, all China's claims 
	to sovereignty based on the Ching-Dalai Lama relationship (and its more 
	recent claims based on the earlier relationship between the Mongol (Yuan 
	dynasty) emperors and Tibet) are misconceived. However I 
	argue below that, misconceived or not, these claims are in any case 
	irrelevant to whether Tibet now has a right to self 
	determination.</li>
	</ol>
	<h3>Self-determination</h3>
	<ol start="8">
		<li>The Westphalia concept of state sovereignty came into 
	conflict with nationalist aspirations for statehood in nineteenth century 
Europe. Polish nationalists did not like 
Poland being partitioned between the 
	German and Russian Empires. Czechs did not like being part of the 
	Austro-Hungarian Empire. Britain supported the cause of Greek independence 
	against the Ottoman Empire, and the 
	European powers generally supported the cause of independence of the Serbs, 
	Romanians and Bulgarians.</li>
		<li>At the Paris Peace Conference after World War 1 US 
	President Woodrow Wilson pushed for the peace settlement to be based on the 
	principle that &quot;every territorial settlement in this war must be made in the 
	interest and for the benefit of the populations concerned, and not as a part 
	of any mere adjustment or compromise of claims amongst rival states&quot;. 
	Despite this, the principle was only selectively applied, where it coincided 
	with the interests of the major players at the conference. In other cases it 
	was flagrantly ignored, most notably in the transfer of the former German 
	Chinese treaty port of Tsingtao to Japan against the wishes of its 
	inhabitants.</li>
		<li>By the time the United Nations was set up after World 
	War II, it was generally recognized that peoples had the right of 
	self-determination. Article 1.2 of the United Nations Charter states that 
	the purposes of the United Nations include the development of friendly 
	relations among nations based on respect for the principle of 
	self-determination of peoples. It can therefore be said that all states which have become members of the 
	United Nations by ratifying the United Nations Charter - including China - have accepted the principle 
	of respect for the self-determination of peoples. </li>
		<li>The United Nations Charter was followed by the 
	Universal Declaration of Human Rights. The rights in the Universal 
	Declaration were elaborated in two more detailed international covenants 
	which, unlike the Declaration itself, are treaties intended to have legal 
	force. Article 1 of the International Covenant on Civil and Political Rights 
	(ICCPR) states that &quot;All peoples have the right to self determination. By 
	virtue of that right they may freely determine their political status&quot;.
	The ICCPR has been ratified by 161<a id="_ftnref4" href="#_ftn4">[4]</a> 
	of 192 United Nations member countries. Five other countries, including 
China, have signed but not ratified. A nation which is a signatory of a international treaty, such as the 
	ICCPR, is obliged under international law to &quot;refrain from acts which would 
	defeat the purpose and object of the treaty&quot; (Vienna Convention on the Law 
	of Treaties, Article 18, codifying earlier customary international law). 
		</li>
		<li>China is therefore bound, both by its 
	adherence to United Nations Charter and by its signature of the ICCPR to 
	respect the principle of self-determination of peoples. </li>
	</ol>
<h3>What does the right of peoples to self-determination actually mean?</h3>
<ol start="13">
	<li>There was no consensus about what the right to 
	self-determination meant when it was included in the ICCPR. Western 
	countries were generally reluctant to include it, but felt obliged to do so 
	in response to the aspirations of recently independent countries to end 
	European colonialism in those places were it still existed. Communist and 
	Soviet influenced countries generally interpreted self-determination as 
	meaning the right to choose a socialist form of government. </li>
		<li>Since the ICCPR 
	came into effect in 1976 there has been widespread concern that if the right 
	to self determination in Article 1 is applied literally this could lead to 
	the break-up of many existing states. This applies particularly to Africa, whose national boundaries are mostly colonial era 
	constructs, but also to numerous other states with ethnic minority 
	populations who form a majority in particular regions. </li>
		<li>The consensus which has emerged is that the right to 
	self determination for the purposes of ICCPR Article 1 applies only to the 
	following: (1) entire populations living in independent states, (2) entire 
	populations of territories yet to receive independence, and (3) territories 
	under foreign military occupation<a id="_ftnref5" href="#_ftn5">[5]</a>.
	&nbsp;</li>
		<li>This is a restrictive definition which excludes 
	numerous groups who would in ordinary language be regarded as &quot;peoples&quot;. It excludes African tribes whose populations may be concentrated in 
	one part of state, or parts of more than one state. It therefore gives no 
	encouragement to the destructive tendency to fragmentation of African states 
	which was seen in the Biafran War in Nigeria and which has recently been evident in 
Kenya. More controversially it 
	excludes some peoples with a long history of struggle for independence, such 
	as the Kurds (spread across parts of Turkey, Iran, Iraq and Syria). </li>
		<li>The issue of self-determination was considered in the 
	context of colonial territories in the United Nations General Assembly 
	Declaration on the Granting of Independence to Colonial Countries and 
	Peoples (General Assembly Resolution 1514(XV)) of 
		14 December 1960. Article 1 of this Declaration states that &quot;The subjection of peoples 
	to alien subjugation, domination and exploitation constitutes a denial of 
	fundamental human rights, is contrary to the Charter of the United Nations 
	and is an impediment to the promotion of world peace and co-operation.&quot; A further General Assembly resolution, the Declaration on Principles 
	of International Law, Friendly Relations and Co-operation among states in 
	accordance with the charter of the United Nations, of 1970, again states 
	that &quot;alien subjugation, domination and exploitation are a violation of the 
	principle&quot; [of self-determination], as well as a denial of fundamental human 
	rights, and is contrary to the [United Nations] Charter&quot;.</li>
		<li>These two 
	United Nations General Assembly Resolutions have been extensively applied.
	&nbsp;The concept of alien domination has 
	been treated by the UN as applicable to the Russian invasion of Afghanistan; 
	the Vietnamese invasion of Cambodia; the occupation of Arab territories by 
	Israel; of Estonia, Latvia and Lithuania by the former Soviet Union; of 
	Grenada by the United States; of East Timor by Indonesia; and of Kuwait by 
	Iraq<a id="_ftnref6" href="#_ftn6">[6]</a>. It is strongly arguable that the rule that alien subjugation, 
	domination and exploitation breach a people's right to self-determination 
	now forms part of international customary law i.e. international law 
	established not by treaties but by the customs of nations. </li>
	</ol>
	<h3>The history of China's relations with Tibet</h3>
	<ol start="19">
		<li>China's 
	present control over Tibet 
	dates from 1950 when the People's Liberation Army invaded Tibet 
	and defeated the Tibetan Army at Chamdo. China claims that 
Tibet was already part of 
China when it invaded.</li>
		<li>This claim is 
	based on a claim to sovereignty over Tibet by the Ching Imperial dynasty 
	dating from the eighteenth century. More recently China has claimed that its rule over 
Tibet can be traced to the 
	rule of Tibet by the 
	Mongols - known in China as the Yuan dynasty. </li>
		<li>There are at 
	least three major historical difficulties with China's 
	claim. Firstly, as indicated above, it is doubtful whether the relationship 
	between the Ching and the Yuan on the one hand, and Tibet 
	on the other,was really one of sovereign and subject. The Kangxi Emperor 
	occupied Tibet in 1720. After his death in 
	1722 this occupation continued under his successor the Yongzheng Emperor 
	until 1728, and there were further Chinese invasions in 1750 and 1792.
	&nbsp;However after the end of the 
	occupation in 1728, and after each of the later invasions, the Chinese 
	armies withdrew and 
Tibet had virtually complete 
	independence in practice<a id="_ftnref7" href="#_ftn7">[7]</a>.
	&nbsp;</li>
		<li>Secondly, it was never suggested under either dynasty 
	that the relationship made Tibet 
	a part of metropolitan China. If it was a political 
	relationship at all, it was one of dependency which translated into modern 
	language was a colonial relationship. It is therefore a basis for concluding 
	that Tibet is a colony and so entitled to 
	self-determination. </li>
		<li>Thirdly, and most importantly, there was no 
	relationship - either similar to that between Tibet and the Ching dynasty, or similar to the 
	modern concept of sovereignty - between Tibet and the
		Chinese
		Republic which succeeded the Ching dynasty 
	in 1911. In 1912 the Thirteenth Dalai Lama made a formal declaration of 
	Tibetan independence. Although the Chinese Republic responded by laying 
	claim to Tibet, it never exercised any control over it, save for certain far 
	eastern regions, where there had always been an ill-defined borderland, 
	which it invaded and occupied. Tibet was entirely independent of 
	foreign control between 1911 and 1950. </li>
		<li>Even if China's historical claim was much 
	stronger than it is, this would not provide a justification for invasion of 
	an independent country. Most countries were at one time under alien rule.
	&nbsp;In 1911 Ireland was under British rule as it had been for 
	centuries, Finland was 
	ruled by Russia, and 
Korea was ruled by Japan. 
	The setting up of the United Nations was expressly intended to prevent the 
	kind of aggressive wars, based on spurious or doubtful claims to historical 
	rule or cultural identity, which had been the practice of both Nazi Germany 
	and Imperial Japan. </li>
		<li>China has frequently attempted to justify the 
	invasion by the claim that Tibetan society was feudal and backward, and that 
China therefore brought liberation to 
	the Tibetan peasantry from feudal domination. </li>
		<li>Scholars agree 
	that the pre-1950 Tibetan regime was feudal and backward<a id="_ftnref8" href="#_ftn8">[8]</a>. 
	One aspect of its backwardness was its failure to appoint ambassadors to 
	other countries or to apply to join the United Nations until invasion by China 
	was imminent. However this failure was not due to lack of independence but 
	due to the absence, in Tibet's intensely traditional and 
	isolated government, of a clear sense of the need for a modern state to 
	maintain relations with other states. </li>
		<li>At the risk of 
	stating the obvious, the fact that a country is backward cannot justify 
	invading it. Backwardness was often advanced as a justification for 
	nineteenth century colonialism, what Kipling called &quot;The White Man's burden&quot; 
	when he encouraged the 
United States to colonise the 
	supposedly backward Philippines. The fact that 
China relies on the 
	&quot;backwardness&quot; argument<a id="_ftnref9" href="#_ftn9">[9]</a> 
	to support its occupation of Tibet is a further indication of a 
	classic colonial occupation. </li>
	</ol>
	<h3>China/Tibet relations since 1950</h3>
<ol start="28">
		<li>China invaded Tibet on 
		7 October 1950. On 
		7 November 1950 the Tibetan Government 
	appealed for help to the United Nations but no assistance was forthcoming. 
	Tibetan forces were easily overwhelmed by the much stronger Chinese forces, 
	with the bulk of the Tibetan Army being surrounded and surrendering at 
	Chamdo. </li>
		<li>After the surrender the Chinese Government embarked on 
	what would now be called a &quot;charm offensive&quot; in Tibet. 
	Tibetans were given money by People's Liberation Army representatives, and 
	encouraged to accept Chinese occupation on the understanding that their 
	traditional way of life would be unchanged and that Tibet 
	would enjoy a high degree of autonomy.</li>
		<li>In 1951 China and representatives of the 
	Dalai Lama signed the &quot;17 point agreement for the Peaceful Liberation of 
	Tibet&quot;. The drafting phraseology of this document shows that some-one was 
	looking at it when drafting Hong Kong's Basic Law. It provides that &quot;the 
	Tibetan people have the right of exercising national regional autonomy under 
	the unified leadership of the Central People's Government'(Article 3); that 
	&quot; the Central People's Government will not alter the existing political 
	system in Tibet&quot;(Article 4), and &quot;will not alter the established status, 
	functions and powers of the Dalai Lama&quot;(Article 4).
	</li>
		<li>These autonomy provisions were never observed. The 
	Chinese Communist Party ruled Tibet, 
	as it rules China, by way of a centralized party 
	organization based on classic communist doctrine, whereby each organ of 
	government is shadowed by an organ of the party. These party organs are 
	accountable to the Chinese Communist Party and do not function in accordance 
	with concepts of autonomy. In Tibet the new Chinese authorities 
	insisted on taking all important decisions and interfered on an increasing 
	scale with the daily life of Tibetans. In response to the harshness of 
	Chinese rule, the Tibetans rose in revolt in 1958. The revolt was easily crushed by China, and in 1959 the Fourteenth Dalai Lama and 
	some 80,000 other Tibetans fled into exile in India.</li>
		<li>The severity of 
	Chinese repression in Tibet since that date is 
	well-documented<a id="_ftnref10" href="#_ftn10">[10]</a>. There is severe repression of Tibetan Buddhism, which in 1997 was labeled as a &quot;foreign culture&quot; Virtually all classes in secondary and higher 
	education in Tibet are taught in Chinese not Tibetan, resulting in a high 
	drop-out rate among Tibetans. Urban development has generally benefited 
	Chinese immigrants, large numbers of whom have moved to 
Tibet and who are now about 12% of 
	the population in the Tibet Administrative Region. Tibetans are routinely 
	detained for long periods without charge or sentenced to long prison 
	sentences for peacefully advocating independence or maintaining links with 
	the Dalai Lama. Torture and ill-treatment in detention is widespread. 
	Freedom of expression is severely restricted. Peaceful political 
	demonstrations are invariably broken up and their participants arrested. 
	Tibetan culture is treated as inferior to Chinese culture, and most key 
	posts in the government and the economy are held by Chinese. Those few 
	Tibetans who are able to enter Chinese government service do so at the cost 
	of alienation from their own people and culture. 
Tibet's environment and 
	natural resources are ruthlessly exploited in the interests of China. 
	Overall the situation bears marked similarities in all these respects to the 
	situation of Algeria 
	under the French or of &nbsp;Uzbekistan and Kirgizstan under Soviet Russian rule.</li>
	</ol>
	<h3>The case for self-determination</h3>
<ol start="33">
		<li>No-one disputes that the Tibetans are a distinct people 
	with their own language and culture, who form a large majority of the 
	population of Tibet. They do not control their own 
	destiny. Tibet is controlled by the Chinese 
	Government by means of military occupation for the benefit of the Chinese 
	state. 
Tibet is a country under foreign 
	military occupation, and its people are subject to alien subjugation, 
	domination and exploitation&quot; within the meaning of the UN Resolutions on 
	Colonial Peoples and on Friendly Relations.</li>
		<li>The severity of the repression the Tibetans have 
	undergone at China's hands, combined with the threadbare nature of China's 
	territorial claim to Tibet, mean that if the universal right of peoples to 
	self-determination has any meaning it must extend to Tibet.</li>
		<li>Tibet's 
	status has been given renewed topicality by the recent independence of 
	Kosovo. Kosovo was an autonomous region of Serbia dating from when Serbia 
	was a state within Federal Yugoslavia. About 90% of its population are ethnically Albanian, and so distinct 
	from the Serbs who form the remaining 10% and the large majority of the 
	population of 
Serbia as a whole. Kosovo had enjoyed 
	some real autonomy in Yugoslavia but in the 1990s this was 
	progressively reduced. In 1996 guerilla warfare broke out as Albanians rose 
	in revolt against Serbian rule. In 1999 as a result of a NATO air campaign 
	against 
Serbia, the Serbian Army withdrew 
	from Kosovo and a United Nations administration was set up. Following a recommendation from the United Nations Special 
	Representative, Martti Ahtisaari, a plan was devised for Kosovo's 
	independence, which was bitterly opposed by Serbia. 
	Kosovo nevertheless declared independence on
		17 February 2008. This has so far been recognized by 38 countries, including all of the 
	Group of Seven industrialized countries. It has not been recognized by 
	countries such as Russia, 
China and Spain which face their own separatist issues 
	(although it has been recognized by Turkey). </li>
		<li>The recognition 
	of Kosovo would seem to extend the right of self-determination beyond the 
	traditional colonial or foreign occupation situation. Kosovo was never a 
	colony, and the Serbian Army had withdrawn long before the independence 
	issue was determined. The only 
	coherent legal basis for recognizing the exercise of self-determination by 
	the Kosovo people in the form of an independent state is that, prior to that 
	independence, while under Serbian rule, the Kosovar Albanians were subject 
	to &quot;alien subjugation, domination and exploitation&quot;.
	</li>
		<li>The Kosovars 
	and the Serbs were historic enemies. Who was exploiting whom varied at 
	different times in history. However a convincing case can be made that in 
	the later years of Slobodan Milosovic's rule in Serbia, the Kosovars were 
	being persecuted by the Serbian authorities, and were indeed in that sense 
	subject to subjugation, domination and exploitation by people, who although long part of the same country, were culturally different and could in 
	that sense arguably be described as alien.</li>
		<li>If Kosovo has a right to self-determination, the right 
	of 
Tibet is infinitely stronger. The 
	catalogue of gross oppression, the second class citizen status of Tibetans 
	under Chinese rule, and the identity of Tibet as a country are all much 
	clearer than in Kosovo's case. </li>
</ol>
	<h3>Self-determination, autonomy and independence</h3>
<ol start="39">
	<li>Self-determination 
	need not mean independence. In many situations, autonomy within a larger 
	nation state offers the best of both worlds, combining the benefits of being 
	part of a large state in terms of defence, foreign relations and economic 
	opportunity, with preservation of local laws, customs and culture from 
	outside interference. 
Hong Kong is a good example. </li>
		<li>The Dalai Lama 
	has repeatedly said that he favours autonomy for Tibet within China, 
	provided that it is meaningful autonomy. Such is his authority with the 
	Tibetan people that they would probably support autonomy in any referendum 
	in which he expressed support for it.</li>
		<li>However unless there is a change in Chinese government 
	thinking, real autonomy does not appear to be on offer. This is shown by the 
	continuing aggressive denunciation and misrepresentation of the Dalai Lama 
	by Chinese official spokespersons.</li>
		<li>Unless real autonomy is offered, self-determination in 
Tibet is bound to mean independence. 
China may hold down the 
	Tibetans by force for a long time, but, as the example of Ukraine and Russia 
	shows, even hundreds of years of repression is unlikely to extinguish the 
	longing for self-determination among what are, incontrovertibly, a people.</li>
	</ol>
	<p id="Harris">
	<em>
	<a target="_blank" href="http://barlist.hkba.org/hkba/BarList/bar_list_alphabetical_h.htm">Paul Harris</a> is a </em>
	<a target="_blank" href="http://www.info.gov.hk/gia/general/200604/11/P200604110164.htm">
	<em>Senior Counsel</em></a><em> in Hong Kong known for his expertise in 
	constitutional and administrative law.</em></p>
	<hr>
	<div id="_ftn1">
		<p><a href="#_ftnref1">[1]</a> For a typical statement see 
		<a target="_blank" href="http://english.people.com.cn/200103/15/eng20010315_65044.html">Chinese 
		Government opposes the collusion of
		Taiwan and Tibet splittists</a>, People's Daily On-line,
		15 March 2001.</p>
	</div>
	<div id="_ftn2">
		<p style="TEXT-JUSTIFY: inter-ideograph;">
		<a href="#_ftnref2">[2]</a> Often attributed to the Dutch seventeenth 
		century writer 
		<a target="_blank" href="http://en.wikipedia.org/wiki/Hugo_Grotius">Hugo 
		Grotius</a>, although many international law concepts are 
		older.</p>
	</div>
	<div id="_ftn3">
		<p><a href="#_ftnref3">
		[3]</a> See e.g.
		Dibyesh Anand,
		Tibet,
		<a target="_blank" href="http://www.opendemocracy.net/article/china/globalisation/tibet_china_clash">China and the West, Empires of the 
		Mind</a>, Open Democracy,
		2 April 2008.</p>
	</div>
	<div id="_ftn4">
		<p><a href="#_ftnref4">
		[4]</a> The most recent ratification is Samoa (February, 2008).
		</p>
	</div>
	<div id="_ftn5">
		<p><a href="#_ftnref5">
		[5]</a> See e.g. Antonio Cassese,
		<a target="_blank" href="http://www.amazon.ca/Self-Determination-Peoples-Reappraisal-Antonio-Cassese/dp/052163752X/webbsitecom">Self-determination of Peoples</a>&quot;, p. 59</p>
	</div>
	<div id="_ftn6">
		<p><a href="#_ftnref6">
		[6]</a> See list in Cassese, op.cit, p. 94.
		</p>
	</div>
	<div id="_ftn7">
		<p><a href="#_ftnref7">
		[7]</a>There was a 
		further invasion shortly before the end of the Ching dynasty, in 1910, 
		by way of delayed reaction to the brief British invasion of
		
		Tibet in 1904. Unlike
		China's eighteenth 
		century invasions, where in each case a faction in
		
		Tibet had 
		encouraged Chinese intervention, the 1910 invasion was a full-frontal 
		assault against united Tibetan opposition. After the 1910 Chinese 
		occupation of
		Lhasa the Thirteenth Dalai Lama fled to 
		British India, and fighting continued until the 1911 Revolution in
		
		China. In 
		1912 Chinese forces in
		Tibet surrendered and were repatriated through
		
		India with British assistance, and 
		the Thirteenth Dalai Lama returned from exile.
		</p>
	</div>
	<div id="_ftn8">
		<p><a href="#_ftnref8">[8]</a> See the catalogue of obscurantism, rigid traditionalism and 
		wholesale rejection of modernity in Melvyn C. Goldstein
		<a target="_blank" href="http://www.amazon.com/gp/product/0520075900/webbsitecom">A modern 
		history of
		Tibet, 1913-1951</a>,University of California Press, 1989.</p>
	</div>
	<div id="_ftn9">
		<p><a href="#_ftnref9">[9]</a> For a very recent speech highlighting how
		China's rule has benefited Tibet's 
		development, see 
		<a target="_blank" href="http://news.xinhuanet.com/english/2008-04/09/content_7945866.htm">Qiangba Puncog, chairman, Tibet Autonomous Region 
		Council</a>, Xinhua,
		9 April 2008
		</p>
	</div>
	<div id="_ftn10">
		<p><a href="#_ftnref10">
		[10]</a> See e.g. the 1997 International Commission 
		of Jurists report
		<a target="_blank" href="http://www.icj.org/publi.php3?lang=en&amp;id_article=1577">
		Tibet: Human Rights and the Rule of Law</a></p>
	</div>

<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=34348">Harris, Paul (1952)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
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
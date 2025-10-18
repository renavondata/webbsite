
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

<script type="text/javascript">document.title="Justice is blind, except for haircuts";</script>

	<div class="summary">The Court of Appeal rules that a prison order requiring men to have short hair and allowing women to choose is not discriminatory, because of societal norms for haircuts. We find substantial flaws in this reasoning. We also find that the UK rule which HK inherited was amended by 1999 to remove the discrimination, something that Long Hair's lawyers appear to have overlooked.</div>

<h2 class="center">Justice is blind, except for haircuts<br>
<span class="headlinedate">1 May 2018</span></h2>

<p>Perhaps it should surprise you that three men who dress up in 
wigs and gowns (in their day jobs) believe in "conventional standards of 
appearance", but yesterday's
ruling from the Court of Appeal has to be seen to be believed in the 21st 
century. In <em>
<a href="http://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=114840" target="_blank">Leung Kwok 
Hung v Commissioner of Correctional Services</a></em>, the Court of Appeal has 
overturned the
<a href="http://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=107701" target="_blank">
judgment</a> of Justice <a href="../dbpub/positions.asp?p=40477">Thomas Au Hing Cheung</a> in the Court of First Instance 
(<strong>CFI</strong>), and ruled that former legislator "Long 
Hair" <a href="../dbpub/natarts.asp?p=25349">Leung Kwok Hung</a> did not face gender discrimination when, as a male 
convicted 
prisoner, his hair was cut short against his wishes, while female prisoners face 
no such requirement.</p>
<h3>The requirements in HK</h3>
<p>The HK requirements are set out in the "Standing Orders" issued by the 
Commissioner under
<a href="http://www.hklii.hk/eng/hk/legis/reg/234A/s77.html" target="_blank">
Rule 77(4)</a> of the Prison Rules. We have been unable to find the Standing 
Orders on the Commissioner's <a href="https://www.csd.gov.hk/" target="_blank">web site</a> or anywhere else 
online, so we can only tell you 
the order quoted in the judgment. Standing Order 41-05, titled "Hair of prisoner", states:</p>
<blockquote>
<ol>
	<li>
	<blockquote>The hair of all male convicted prisoners will be kept cut 
	sufficiently close, but not close clipped, for the purpose of health and 
	cleanliness unless the prisoner himself requests it.</blockquote>
	</li>
	<li>
	<blockquote>Upon request, female prisoners will have their hair cut 
	especially before discharge or production in court. Except as recommended by 
		[Medical Officer], a female prisoner’s hair shall not be cut shorter than the style on 
	admission without her consent.</blockquote>
	</li>
</ol>
</blockquote>
<p>These archaic rules have a clear ring of inconsistency about them. On the one 
hand, the "purpose" of the rule for men is said to be for "health and 
cleanliness", but on the other, no such need is identified for women. If there 
were such a need, then it would surely apply to both. Head lice have never 
expressed a preference for men.</p>
<p>We also note that the Order only applies to male "convicted" prisoners, not 
to prisoners who are remanded in custody pending or during trials. For those 
awaiting trial,
<a href="http://www.hklii.hk/eng/hk/legis/reg/234A/s199.html" target="_blank">
Section 199</a> of the Prison Rules states:</p>
<blockquote>"The hair of every prisoner awaiting trial may be cut but not in 
such a manner as may alter his appearance."</blockquote>
<p>For those who are actually <span class="auto-style1">in</span> trial (not 
awaiting it), the same rule presumably applies.</p>
<h3>The requirements in UK</h3>
<p>Given that HK prison rules undoubtedly descended from the UK, it is 
worth looking at the UK requirements and how they have changed. In the 
now-repealed
<a href="http://www.legislation.gov.uk/uksi/1964/388/pdfs/uksi_19640388_en.pdf" target="_blank">
Prison Rules 1964</a>, section 26 titled "Hygiene" included a weekly bathing 
requirement and stated:</p>
<blockquote>(2) Every prisoner shall be required ...in the case of a man not 
excused or excepted by the governor or medical officer, to shave or be shaved 
daily, and to have his hair cut as may be necessary for neatness: Provided that 
an unconvicted prisoner shall not be required to have his hair cut or any beard 
or moustache usually worn by him shaved off except where the medical officer 
directs this to be done for the sake of health or cleanliness.</blockquote>
<blockquote>(3) A woman prisoner's hair shall not be cut without her consent 
except where the medical officer certifies in writing that this is necessary for 
the sake of health or cleanliness."</blockquote>
<p>However, by 1999, the
<a href="http://www.legislation.gov.uk/uksi/1999/728/made" target="_blank">Prison Rules</a> had been 
amended to remove differences in the treatment of 
genders, giving men the same treatment as women. Section 28(3) of the
<a href="http://www.legislation.gov.uk/uksi/1999/728/made" target="_blank">
Prison Rules 1999</a> simply states:</p>
<blockquote>(3) A prisoner’s hair shall not be cut without his consent.
</blockquote>
<p>The reason for this reform is stated on page 66 of the Prison Reform 
Trust's
<a href="http://www.prisonreformtrust.org.uk/portals/0/documents/prisonrulesworkingguide.pdf" target="_blank">
Prison Rules: A Working Guide</a>, which quotes a "Circular Instruction", CI 56 
of 1989:</p>
<blockquote>"it is thought inappropriate to maintain the distinction between 
provisions for male and female prisoners"</blockquote>
<p>We could not find the original CI 56/1989 online, probably because it was 
issued 29 years ago, before the web existed, which is a reminder of how far behind HK is. Perhaps in 
the UK in 1989 it was "thought inappropriate" to have different rules for men 
and women because of the Sex Discrimination Act, passed in 1975 (20 years before 
HK passed the SDO). Unfortunately, 
Mr Leung's counsel do not appear to have raised the UK history of prison rules in their 
arguments.</p>
<p>Incidentally, the UK is far more transparent, with all the current
<a href="https://www.justice.gov.uk/offenders/psis" target="_blank">Prison 
Service Instructions</a> and
<a href="https://www.justice.gov.uk/offenders/psos" target="_blank">Prison 
Service Orders</a> online, despite HK's claims to be a
<a href="https://www.smartcity.gov.hk/" target="_blank">Smart City</a>.</p>
<h3>The Court of First Instance judgment</h3>
<p><a href="http://www.hklii.hk/eng/hk/legis/ord/480/s5.html" target="_blank">
Section 5</a> of the Sex Discrimination Ordinance (<strong>SDO</strong>) outlaws discrimination on the 
grounds of gender (it is worded for women, but applies equally to men 
due to
<a href="http://www.hklii.hk/eng/hk/legis/ord/480/s6.html" target="_blank">
Section 6</a>).&nbsp; A person suffers discrimination if he/she is treated "less 
favourably" (not just differently) on the ground of his/her gender. Mr Leung was 
clearly treated less favourably than a woman, by being denied the choice of 
whether to keep his hair long. Under this test of direct discrimination, there 
is no test of justification or purpose for the discrimination.</p>
<p>In the CFI, the Commissioner sought to revise the stated purpose of "health and 
cleanliness" of men (but not women) by claiming that the objective was "to 
provide a secure, safe, humane, decent and healthy environment for people in 
custody by maintaining prison security and custodial discipline". The perceived 
risks included vulnerability of long-haired prisoners in an 
attack, the risk of concealing prohibited items in their hair, the risk of 
violence associated with triad or gang affiliation and the risk of 
prisoners committing self-harm or suicide with their hair, all of which the 
Commissioner considered "partly backed by some statistics" to be more likely in men than women.</p>
<p>Justice Au was having none of this. 
<a href="http://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=107701" target="_blank">He wrote</a>: "The Commissioner's purported 
reasons are all based on stereotyped or generalised assumptions referable to the 
purported risks associated with male prisoners as a gender as a whole" and "as a 
matter of law, a purported ground based on stereotyped or generalised 
assumptions referable to a particular sex (even if supported by statistics) is 
similarly caught by section 5 of the SDO as a non-permissible ground of direct 
discrimination." That must be right, of course. If a football stadium could 
prohibit men but not women from bringing in knives, because men are 
statistically more likely to use them, that would be discrimination against men. 
If an army could exclude all women because the average woman is physically 
weaker than the average man, that would be discrimination against women.</p>
<p>Put simply, if the goal was to eliminate risks associated with long 
hair, then the rule should apply to women too, because even if women are at 
lower risk, they are not immune. Girls fight too.</p>
<p>On a separate ground of judicial review, Mr Leung claimed that the rule 
infringed the rights of male prisoners under
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html" target="_blank">
Article 25</a> of the Basic Law which provides that "All Hong Kong residents 
shall be equal before the law" - or in this case, all prisoners. A restriction or violation of a constitutional 
right must satisfy a 3-pronged "proportionality test", that is, it must have a 
legitimate aim, must be rationally connected to that aim, and be no more than is 
necessary to accomplish that aim. As Justice Au put it:</p>
<blockquote>"It is quite obvious that the Commissioner could also achieve the 
same purposes in a non-discriminatory way by applying the same hair cut 
requirement to both male and female prisoners."</blockquote>
<p>So although Mr Leung had succeeded on his first ground, Justice Au ruled that 
he would also have succeeded on this second ground.</p>
<p>You might think the outcome was so obvious that this was the end of it. 
The Government could have just thanked Mr Leung for drawing attention to an 
outdated and discriminatory rule that had long since been replaced in the UK to 
prevent discrimination. The Government could have said that the failure to amend 
the rule after the SDO was passed was an "administrative oversight" and copied the modernised UK prison rule 
allowing all prisoners to have long hair if they wish, or amended the rule to 
require women to cut their hair short too. But in HK, the Government 
will never admit discrimination until all legal avenues are exhausted. We can't 
help wondering whether the determination of the Government to uphold this 
obsolete rule is based partly on the identity of the claimant, who as a 
long-time political opponent must not be allowed to score a victory, even if it 
is for common sense.</p>
<h3>The Court of Appeal judgment</h3>
<p>In the unanimous 
<a href="http://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=114840" target="_blank">judgment</a> overturning the first instance judgment, there is 
almost no reference to the purported health and safety reasons advanced by the 
Commissioner in the CFI and rejected by Justice Au.&nbsp; Instead, there is a 
focus on a completely different line of reasoning involving discipline, 
conformity and societal norms. There are separate analyses by two of the three 
judges, Chief Judge <a href="../dbpub/positions.asp?p=29943">Andrew Cheung Kui 
Nung</a> and Vice President <a href="../dbpub/positions.asp?p=29942">Johnson Lam 
Man Hon</a>, but with a common theme. <a href="../dbpub/positions.asp?p=42691">
Justice Jeremy Poon Shiu Chor</a> simply concurs. Incidentally, subject to LegCo 
approval, Justice Cheung
<a href="http://www.info.gov.hk/gia/general/201803/21/P2018032000689.htm" target="_blank">
will rise</a> to the Court of Final Appeal in October.</p>
<p>In the judgment, Justice Cheung goes first. He states that according to the 
"unchallenged evidence" (none of which is referred to in the CFI judgment) the 
haircut requirements are:</p>
<blockquote>"based on and by reference to the conventional hairstyles of 
male and female persons in Hong Kong society. In other words, a full and 
complete description of the treatment that one is concerned with in the present 
case is that an inmate, whether male or female, is required to wear a hairstyle 
that conforms to the conventional hairstyle of people in Hong Kong of his or her 
own sex. As, according to the evidence, the conventional hairstyle of male 
persons in Hong Kong is a short hairstyle, male inmates are therefore required 
to wear a similar short hairstyle. On the other hand, as the conventional 
hairstyle of Hong Kong women is that it may either be long or short (putting the 
matter in a simplified way), female inmates are therefore allowed under the 
female haircut requirement to keep their own hairstyles. Female inmates are not 
required to have their hair cut short only because according to the conventional 
hairstyle for women in Hong Kong as it is, it may either be long or short as 
women hairstyles do vary and a predominant hairstyle with a particular hair 
length cannot be identified."</blockquote>
<p>By this tortuous reasoning, Justice Cheung says that Mr Leung is not 
discriminated against (treated less favourably), because societal norms for men 
and women are different. Most men have short hair, therefore Mr Leung must have 
short hair, whereas women have a range of hair length and therefore female prisoners are "required" to do what they like. 
This to us seems to be exactly the kind of "stereotyped or generalised 
assumption" that Justice Au said was not permitted as a justification for direct 
discrimination.</p>
<p>The statement also seeks to portray the free choice of female prisoners on 
their hair length as a "requirement" to conform to a "conventional hairstyle" that cannot 
be identified. It is rather like claiming that a conventional standard 
car colour in Hong Kong is "any colour you like". It strains credulity to define 
free choice as a "conventional standard". A requirement that confers a choice of 
all possible outcomes is no requirement at all. Imagine the futility of passing 
a law which says that "your car must be any colour(s) you like". The statement 
overlooks the fact that the norm in society (outside prisons) is "free choice" 
for hair length by both men and women, even if most men choose to keep their 
hair short (and to shave their face).</p>
<p>There is more of this nonsense in Justice Lam's section, but first, Justice 
Cheung seeks to redefine Mr Leung's complaint for him, stating that "when 
examined analytically" and "when translated into legal terms" his complaint is 
not of direct discrimination, but of <em>indirect </em>discrimination, for which a 
justification can be allowed. But Justice Cheung's reasoning depends on his 
rejection of the claim of "direct discrimination" due to his "conventional 
standard" reasoning. So if that was wrong, then Mr Leung was indeed claiming 
direct discrimination. The reasoning seems to be "because I say you were wrong, 
you must have been claiming something lesser".</p>
<p>However, in Justice Cheung's own words, indirect discrimination is the result 
of applying:</p>
<blockquote>"an apparently gender‑neutral criterion which, by nature or in 
practice, favours a man as compared to a woman (or vice versa)".</blockquote>
<p>This is covered by
<a href="http://www.hklii.hk/eng/hk/legis/ord/480/s5.html" target="_blank">
Section 5(1)(b)</a> of the SDO. To take Justice Cheung's example, a requirement 
that job applicants must be over 6 feet tall favours men over women because a 
greater percentage of men than women exceed that height, but it is allowable if 
it is necessary for that job. That's not the case with the Standing Order on 
haircuts. The criterion for whether a person has free choice over hair length is 
clearly based on gender, it is not "apparently gender-neutral" despite the 
court's strenuous efforts to redefine it as a requirement that the hairstyle 
"conforms to the conventional hairstyle of people in Hong Kong of his or her own 
sex" - because again, that interpretation refers to the gender of the prisoner 
with the words "his or her own sex".</p>
<p>Justice Lam then picks up the baton, and continues with a line of reasoning that the 
narrow issue of haircuts should be seen as part of a broader package of 
discipline:</p>
<blockquote>"For example, in respect of the restrictions on keeping (and using) 
make-ups, female inmates are allowed to keep (and use) specified lipsticks but 
not allowed to keep other forms of cosmetic makeup. Obviously there is a 
difference between male and female inmates in that regard. However, because of 
the conventional standard for appearance in our society, such difference cannot 
be regarded as less favourable treatment for male inmates. Further, given the 
prevalence of use of makeup for women as compared with men in our society, the 
restriction is more relevant for female inmates. However, taking other 
restrictions on appearance into account, on the whole it cannot be said that a 
more stringent set of restrictions are imposed on female inmates. This 
highlights the need to examine all the restrictions as a package overall."</blockquote>
<p>If anything, this rather points to further discrimination against men if they 
are not permitted "to keep (and use) specified lipsticks" as a few men like to 
do. Presumably all prisoners (not just women) are "not allowed to keep other 
forms of cosmetic makeup", so at least that part is fair. Justice Lam misses the 
point that women are not required to cut their hair but men are. There is no 
requirement on women prisoners to keep or use lipsticks - it is a right, not an 
obligation.</p>
<p>Justice Lam then returns to Justice Cheung's line of reasoning and argues:</p>
<blockquote>"As explained above, the policy of the Commissioner was set by 
	reference to the conventional standards of appearance for men and women in 
	our society...it is an objective fact that these conventional standards exist and 
they are observed by most people in our society"</blockquote>
<p>That is a circular argument. Something cannot be a "conventional standard" 
unless most people follow it. You couldn't have a standard if it was only 
followed by a minority. So in effect, he claims that most men are like most men 
in having short hair, and that most women are like most women in having either 
long or short hair or something in between. Definitely one of those. He continues:</p>
<blockquote>"Whilst it is right that we should not continue with past 
discriminatory practices, it remains a fact of life that men and women have 
different physical attributes which, together with traditions and customs, 
mandate different conventional standards of appearance for men and women in a 
society. Like rules as to manners, these conventional standards of appearance 
are adhered to in order to maintain proper and decent presentation of oneself in 
the interaction with others in society."</blockquote>
<p>The implication of this is that long-haired men are improper and indecent, 
but long-haired women are not. Remind us to cut our hair if we ever appear 
before these judges, because apparently, appearances speak louder than words. 
Whoever said that justice was blind? This statement rather begs the question of 
whether a fair and reasonable-minded person might think that the judges were 
biased against Long Hair because of his long hair when he appeared before them. 
How can they take him seriously when he does not maintain a "proper and decent 
presentation" of himself in his court appearances? Secondly, there is no 
"mandate" and no "mandatory" standard of appearance to which we must all adhere, 
other than the common law against 
<a href="http://www.clic.org.hk/en/topics/sexual_offences/III_Sexual_offences_to_protect_public_morality/B_Acts_Outraging_Public_Decency/" target="_blank">
acts outraging public decency</a>, which long hair does 
not breach.</p>
<p>Whether the judges have short hair themselves, we would not know, because 
apart from the Chief Justice, they all 
wear shoulder-length wigs. Apparently these were once
<a href="https://www.judiciary.gov.uk/about-the-judiciary/the-justice-system/history/" target="_blank">
"essential wear for polite society"</a> in the 1680s under Charles II.</p>
<img class="center" alt="Wigs" src="../images/wigs.JPG">
<h3>Footnote</h3>
<p>Incidentally, neither the CFI nor the Court of Appeal was asked the separate 
question of whether male prisoners should be entitled "upon request" to have 
their hair cut before "production in court", as women prisoners are in the 
Standing Order. Surely men are entitled to look smart (if not "proper and 
decent") when appearing in court too? This rule again reflects a biased view that a 
woman's appearance is more important than a man's.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2533659">HKSAR Correctional Services Department</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=40477">Au, Thomas Hing Cheung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=29943">Cheung, Andrew Kui Nung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=29942">Lam, Johnson Man Hon</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=25349">Leung, Kwok Hung (1956-03-27)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=42691">Poon, Jeremy Shiu Chor</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=152">Human rights</a></li>
				
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
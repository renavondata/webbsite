<%Sub topBar
	'generate the menu in the banner
	If Session("username")<>"" Then
		Dim con,rolePay,rolePeople,roleHKU,roleOrgs,roleStories,roleExec,blnAdmin
		Call openEnigma(con)
		blnAdmin=con.Execute("SELECT EXISTS(SELECT * FROM wsprivs WHERE uRank>=128 AND live AND userID="&Session("ID")&")").Fields(0)
		rolePay=hasRole(con,1)
		rolePeople=hasRole(con,2)
		roleHKU=hasRole(con,3) 'HKUteam
		roleOrgs=hasRole(con,4)
		roleStories=hasRole(con,5)
		roleExec=hasRole(con,6)%>
		<div id="menubar" style="background-color:blue;">
			<div class="hnav">
				<input type="checkbox" id="menuchk" style="display:none">
				<ul>
					<%If roleHKU Then%>
						<li><a href="/dbeditor/holding.asp">Holdings</a></li>
						<li><a href="/dbeditor/coms.asp">Committees</a></li>
						<li><a href="/dbeditor/snaplog.asp">Snapshot log</a></li>				
					<%End If%>
					<%If rolePay Then%>
						<li>Pay
							<ul>
								<li><a href="/dbeditor/pay.asp">Enter pay</a></li>
								<li><a href="/dbeditor/payreview.asp">Pending reports</a></li>
								<li><a href="/dbeditor/payleague.asp">Top volunteers</a></li>
							</ul>
						</li>
					<%End If%>
					<%If roleOrgs or rolePeople or roleExec Then%>
						<li>Entry
							<ul>
								<%If roleOrgs Then%>
									<li><a href="/dbeditor/issued.asp">Issued shares</a></li>
									<li><a href="/dbeditor/issue.asp">Issue</a></li>
									<li><a href="/dbeditor/org.asp">Organisation</a></li>
								<%End If%>
								<%If rolePeople Then%>
									<li><a href="/dbeditor/human.asp">Human</a></li>
									<li><a href="/dbeditor/alias.asp">Alias</a></li>
									<li><a href="/dbeditor/relatives.asp">Relatives</a></li>
								<%End If%>
								<%If roleExec Then%>
									<li><a href="/dbeditor/advisership.asp">Adviserships</a></li>
									<li><a href="/dbeditor/officer.asp">Directorships</a></li>
									<li><a href="/dbeditor/docmon.asp">Document monitor</a></li>
									<li><a href="/dbeditor/orgdata.asp">Org data</a></li>
								<%End If%>
							</ul>
						</li>
						<li>Search
							<ul>
								<li><a href="/dbeditor/searchorgs.asp">Organisations</a></li>
								<li><a href="/dbeditor/searchpeople.asp">People</a></li>
							</ul>
						</li>
					<%End If%>
					<%If roleHKU Then%>
						<li>Research admin
							<ul>
								<li><a href="/dbeditor/downloads.asp">Downloads</a></li>
								<li><a href="/dbeditor/admholdings.asp">Holdings</a></li>
								<li><a href="/dbeditor/admlogs.asp">Logs</a></li>
								<li><a href="/dbeditor/admprofiles.asp">Ownership</a></li>
								<li><a href="/dbeditor/admorgs.asp">Organisations</a></li>
								<li><a href="/dbeditor/admpeople.asp">People</a></li>
								<li><a href="/dbeditor/admrels.asp">Relatives</a></li>
							</ul>
						</li>
					<%End If%>
					<%If blnAdmin Or roleExec Then%>
						<li>DB admin
							<ul>
								<%If roleExec Then%>
									<li><a href="/dbeditor/shortnames.asp">Shortnames</a></li>
								<%End If%>
								<%If blnAdmin Then%>
									<li><a href="/dbeditor/useradmin.asp">User admin</a></li>
								<%End If%>
							</ul>
						</li>
					<%End If
					If roleStories Then%>
						<li><a href="/dbeditor/story.asp">Story</a></li>
					<%End If
					If Session("Master") Then%>
						<li>Master
							<ul>
								<li><a href="/dbeditor/stories.asp">Topics</a></li>
								<li><a href="/pollman/">Poll manager</a></li>
								<li><a href="/mailman/mailchange.asp">Change address</a></li>
								<li><a href="/mailman/domainchange.asp">Change domain</a></li>
								<li><a href="/mailman/searchusers.asp">Search users</a></li>
								<li><a href="/mailman/sendletter.asp">Send newsletter</a></li>
							</ul>
						</li>
					<%End If%>
				</ul>
			</div>
		</div>
		<%Call closeCon(con)
	End If
End Sub%>
<!--#include virtual="templates/cookiechk.asp"-->
<div id="banner" style="background-color:blue;min-height:80px">
	<div class="box1">
		<a href="../dbeditor/default.asp" class="nodec"><span style="font-size:1.6em;margin:0">
		Webb-site DB editor</span></a><br>
		<div style="float:left">
			<%If Session("editor") Then%>
				User: <%=Session("username")%><br>
				<a class="nodec" href="../dbeditor/default.asp?b=1">log out</a><br>
			<%End If%>
			<a class="nodec" href="https://webb-site.com">Back to Webb-site</a>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
	</div>
</div>
<%Call topBar%>
<div class="clear"></div>
<div class="mainbody">

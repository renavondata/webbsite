# Classic ASP Architecture

## Overview

The Webb-site web interface is built using **Classic ASP** (Active Server Pages) with VBScript, running on IIS (Internet Information Services) on Windows Server.

## Technology Stack

- **Server:** IIS (Internet Information Services)
- **Language:** VBScript (Classic ASP, not ASP.NET)
- **Database:** ADODB (ActiveX Data Objects) via DSN connections
- **Authentication:** Custom session-based with persistent login tokens
- **Frontend:** Server-rendered HTML with minimal JavaScript

## Directory Structure

```
Webb-site ASP files/
├── dbpub/              # Public database queries
│   ├── holders.asp         # Ownership trees
│   ├── events.asp          # Corporate events
│   ├── quotes.asp          # Price history
│   ├── directors.asp       # Director search
│   ├── functions1.asp      # Shared utilities
│   └── navbars.asp         # Navigation menus
├── ccass/              # CCASS-specific queries
│   ├── holdings.asp        # Holdings history
│   ├── bigchanges.asp      # Ownership changes
│   └── participant.asp     # Participant analysis
├── webbmail/           # User personalization
│   ├── mystocks.asp        # Watchlists
│   ├── mysdi.asp           # SDI alerts
│   ├── mybigchanges.asp    # Change alerts
│   ├── authentic.asp       # Authentication module
│   └── login.asp           # Login page
├── vote/               # Polling system
│   └── pollfunctions.asp   # Poll utilities
├── dbeditor/           # Database editing (authenticated)
│   ├── useradmin.asp       # User administration
│   ├── story.asp           # Content management
│   └── prepMaster.inc      # Connection helpers
├── templates/          # Shared components
│   ├── footerdb.asp        # Database page footer
│   ├── footerws.asp        # Webb-site footer
│   ├── topart.asp          # Article header
│   ├── tailart.asp         # Article footer
│   └── cookiechk.asp       # Login validation
├── contact/            # Contact forms
└── mailman/            # Mailing list management
```

## Core Patterns

### 1. Database Connection Pattern

**Using System DSNs (production slave server):**
```asp
<%
Dim conE, conC
Set conE = Server.CreateObject("ADODB.Connection")
Set conC = Server.CreateObject("ADODB.Connection")

conE.Open "enigmaMySQL"    ' System DSN → enigma schema
conC.Open "CCASSserver"    ' System DSN → ccass schema
%>
```

**Using Connection to Master (dbeditor):**
```asp
<!--#include file="prepMaster.inc"-->
<%
' prepMaster.inc provides connection helpers for wsroles system
Dim conRole, conRs, uRank
prepRole 1, conRole, conRs, userID, uRank  ' Role 1 with user validation
%>
```

### 2. Authentication Pattern

**Check if user is logged in (cookiechk.asp):**
```asp
<!--#include file="../templates/cookiechk.asp"-->
<%
' Sets: userID (integer), uEmail (string), uName (string)
' userID = 0 if not logged in
If userID > 0 Then
    Response.Write "Welcome, " & uName
End If
%>
```

**Require login:**
```asp
<%
If userID = 0 Then
    Response.Redirect "/webbmail/login.asp?return=" & Server.URLEncode(Request.ServerVariables("URL"))
    Response.End
End If
%>
```

### 3. Query and Display Pattern

**Basic query:**
```asp
<%
Dim rs
Set rs = conE.Execute("SELECT * FROM issue WHERE stockCode=" & Request("stockCode"))
If Not rs.EOF Then
    Response.Write "Stock: " & rs("stockName")
End If
rs.Close
Set rs = Nothing
%>
```

**Iteration:**
```asp
<%
Dim rs
Set rs = conE.Execute("SELECT * FROM persons ORDER BY name1, name2")
While Not rs.EOF
    Response.Write "<tr><td>" & rs("name1")
    If Not IsNull(rs("name2")) Then Response.Write ", " & rs("name2")
    Response.Write "</td></tr>" & vbCrLf
    rs.MoveNext
Wend
rs.Close
%>
```

### 4. CSV Export Pattern

Many pages offer CSV export:
```asp
<%
' pricesCSV.asp
Response.ContentType = "text/csv"
Response.AddHeader "Content-Disposition", "attachment; filename=prices.csv"

Dim rs
Set rs = conC.Execute("SELECT * FROM quotes WHERE issueID=" & issueID)
Response.Write "Date,Close,Volume" & vbCrLf
While Not rs.EOF
    Response.Write rs("atDate") & "," & rs("close") & "," & rs("volume") & vbCrLf
    rs.MoveNext
Wend
%>
```

## Key Modules

### functions1.asp

Central utility library included by most pages.

**Database Helpers:**
```asp
Function DBdate(d)
    ' Converts VBScript date to MySQL format
    DBdate = Year(d) & "-" & Right("0" & Month(d), 2) & "-" & Right("0" & Day(d), 2)
End Function

Function Apos(s)
    ' SQL string escaping (doubles apostrophes)
    Apos = Replace(s, "'", "''")
End Function
```

**Bot Protection:**
```asp
Function BotChk(conI, userIP)
    ' Checks visitors table in iplog schema
    ' Triggers Captcha if > 100 hits in a day
    ' Returns True if bot limit exceeded
End Function
```

**Formatting:**
```asp
Function FormatNumber2(n, decimals)
    ' Formats numbers with thousands separators
End Function

Function FormatPercent2(n, decimals)
    ' Formats percentages
End Function
```

**Date Functions:**
```asp
Function Today8()
    ' Returns today's date in yyyyMMdd format
End Function

Function AddBusinessDays(startDate, days)
    ' Adds business days (skips weekends)
End Function
```

### holders.asp

Generates recursive ownership trees.

**Key Subroutine:** `holdersGen()`
```asp
Sub holdersGen(issueID, level, visited, maxLevel)
    ' Recursively builds ownership tree
    ' visited - Array tracking visited nodes (prevents infinite loops)
    ' level - Current tree depth
    ' maxLevel - Maximum recursion depth

    ' 1. Query sholdings for this issueID
    Dim rs
    Set rs = conE.Execute("SELECT * FROM sholdings WHERE issueID=" & issueID)

    ' 2. For each shareholder
    While Not rs.EOF
        ' 3. Check if already visited (circular ownership)
        If InArray(rs("shareholderID"), visited) Then
            Response.Write "<tr><td style='padding-left:" & (level*20) & "px'>"
            Response.Write "[Circular: " & rs("shareholderName") & "]</td></tr>"
        Else
            ' 4. Display shareholder
            Response.Write "<tr><td style='padding-left:" & (level*20) & "px'>"
            Response.Write rs("shareholderName") & " (" & FormatPercent2(rs("percentage"), 2) & ")"
            Response.Write "</td></tr>"

            ' 5. Recurse if not at max depth
            If level < maxLevel Then
                ReDim Preserve visited(UBound(visited) + 1)
                visited(UBound(visited)) = rs("shareholderID")
                holdersGen rs("shareholderID"), level + 1, visited, maxLevel
            End If
        End If
        rs.MoveNext
    Wend
End Sub
```

**Handles:**
- Cross-holdings (A owns B, B owns A)
- Circular ownership chains
- Unlimited depth (with configurable max)

### authentic.asp

Shared authentication module for webbmail/ pages.

```asp
<!--#include file="authentic.asp"-->
<%
' Sets: userID, uEmail, uName, uRank
' Redirects to login if not authenticated
%>
```

**Implementation:**
```asp
<%
' Check for persistent login cookie
Dim token
token = Request.Cookies("keep")

If token <> "" Then
    ' Validate token against mailvote.persist table
    Dim rs
    Set rs = conM.Execute("SELECT p.userID, l.email, l.name FROM persist p " & _
        "INNER JOIN livelist l ON p.userID = l.userID " & _
        "WHERE SHA2('" & Apos(token) & "', 256) = p.tokenHash " & _
        "AND p.expires > NOW()")
    If Not rs.EOF Then
        userID = rs("userID")
        uEmail = rs("email")
        uName = rs("name")
    End If
Else
    ' Check session variable
    If Session("userID") <> "" Then
        userID = Session("userID")
        uEmail = Session("uEmail")
        uName = Session("uName")
    End If
End If

' Require login
If userID = 0 Then
    Response.Redirect "/webbmail/login.asp?return=" & Server.URLEncode(Request.ServerVariables("URL"))
    Response.End
End If
%>
```

### prepMaster.inc

Connection helpers for wsroles database editing system.

```asp
<%
Sub prepRole(roleID, conRole, conRs, userID, uRank)
    ' Establishes connection using wsrole credentials
    ' Validates user has access to role
    ' Returns connection and user ranking

    ' 1. Get encrypted MySQL credentials from wsroles table
    Dim rs
    Set rs = conE.Execute("SELECT AES_DECRYPT(muser, wskey) AS muser, " & _
        "AES_DECRYPT(mpass, wskey) AS mpass FROM wsroles r, private.keys k " & _
        "WHERE r.roleID=" & roleID)

    ' 2. Build connection string
    Dim connStr
    connStr = "DRIVER={MySQL ODBC 8.4 Unicode Driver};" & _
              "SERVER=localhost;" & _
              "DATABASE=enigma;" & _
              "UID=" & rs("muser") & ";" & _
              "PWD=" & rs("mpass")

    ' 3. Open connection
    Set conRole = Server.CreateObject("ADODB.Connection")
    conRole.Open connStr

    ' 4. Validate user has access to this role
    Set conRs = conRole.Execute("SELECT maxRankLive('tablename', " & userID & ") AS uRank")
    uRank = conRs("uRank")

    If uRank = 0 Then
        Response.Write "You do not have permission to edit this data."
        Response.End
    End If
End Sub

Function rankingRs(rs, uRank)
    ' Check if user can edit this record
    ' Returns True if user's rank >= record's userID rank
    If IsNull(rs("userID")) Then
        rankingRs = True  ' No userID = anyone can edit
    Else
        rankingRs = (uRank >= rs("ranking"))
    End If
End Function
%>
```

### navbars.asp

Navigation menu generation:
```asp
<%
Sub WriteNavBar(section)
    Response.Write "<ul class='nav'>" & vbCrLf
    Response.Write "<li><a href='/dbpub/'>Home</a></li>" & vbCrLf
    Response.Write "<li><a href='/dbpub/holders.asp'>Holders</a></li>" & vbCrLf
    Response.Write "<li><a href='/dbpub/quotes.asp'>Quotes</a></li>" & vbCrLf
    Response.Write "<li><a href='/ccass/'>CCASS</a></li>" & vbCrLf
    If userID > 0 Then
        Response.Write "<li><a href='/webbmail/'>My Webb-site</a></li>" & vbCrLf
    End If
    Response.Write "</ul>" & vbCrLf
End Sub
%>
```

## Advanced Patterns

### Recursive Queries (Ownership Trees)

Holdings can form complex structures:
- A owns 30% of B
- B owns 20% of C
- C owns 10% of A (circular)

**Solution:**
```asp
' Track visited nodes to prevent infinite loops
Dim visited()
ReDim visited(0)
visited(0) = issueID

' Call recursive subroutine
holdersGen issueID, 0, visited, 5  ' Max depth 5
```

### Handling NULL Values

```asp
<%
If IsNull(rs("name2")) Then
    name = rs("name1")
Else
    name = rs("name1") & ", " & rs("name2")
End If
%>
```

### Pagination

```asp
<%
Dim page, pageSize, offset
page = Request("page")
If page = "" Then page = 1
pageSize = 50
offset = (page - 1) * pageSize

' Query with LIMIT
Dim rs
Set rs = conE.Execute("SELECT * FROM persons LIMIT " & pageSize & " OFFSET " & offset)

' Display results...

' Pagination links
Response.Write "<a href='?page=" & (page - 1) & "'>Previous</a> | "
Response.Write "<a href='?page=" & (page + 1) & "'>Next</a>"
%>
```

### Form Handling

```asp
<%
If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
    ' Process form submission
    Dim name
    name = Request.Form("name")

    ' Validate
    If name = "" Then
        Response.Write "Name is required"
    Else
        ' Insert to database
        conE.Execute "INSERT INTO persons (name1) VALUES ('" & Apos(name) & "')"
        Response.Write "Record added successfully"
    End If
Else
    ' Display form
    %>
    <form method="post">
        Name: <input type="text" name="name">
        <input type="submit" value="Add">
    </form>
    <%
End If
%>
```

## IIS Configuration

**Required Settings:**

In IIS Manager → Application Settings:
- **Enable Parent Paths:** True (allows `../` includes)
- **Default Document:** default.asp, index.asp
- **Session Timeout:** 20 minutes

**Development Only:**
- **Send Errors to Browser:** True
- **Debug Mode:** True

**Production:**
- **Send Errors to Browser:** False (security)
- **Custom Error Pages:** Enabled

## DSN Configuration

**System DSNs (production slave server):**
- `enigmaMySQL` - Server: localhost, Database: enigma, User: Web
- `CCASSserver` - Server: localhost, Database: ccass, User: Web
- `conAuto` - Server: [master domain], Database: enigma, User: auto
- `mailvote` - Server: localhost, Database: mailvote, User: Web

**ODBC Driver:**
- MySQL ODBC 8.4.0 Unicode Driver

## Session Management

**Session Variables:**
```asp
Session("userID") = 123
Session("uEmail") = "user@example.com"
Session("uName") = "John Doe"
```

**Persistent Login (cookiechk.asp):**
```asp
' On login with "remember me" checked:
' 1. Generate 22-character token
Dim token
token = GenerateRandomToken(22)

' 2. Store SHA-256 hash in mailvote.persist table
conM.Execute "INSERT INTO persist (userID, tokenHash, expires) VALUES (" & _
    userID & ", SHA2('" & Apos(token) & "', 256), DATE_ADD(NOW(), INTERVAL 30 DAY))"

' 3. Set cookie (plain token)
Response.Cookies("keep") = token
Response.Cookies("keep").Expires = DateAdd("d", 30, Now)
```

## Security Practices

### 1. SQL Injection Prevention
```asp
' Bad (vulnerable)
sql = "SELECT * FROM persons WHERE name1='" & Request("name") & "'"

' Good (escaped)
sql = "SELECT * FROM persons WHERE name1='" & Apos(Request("name")) & "'"

' Better (parameterized - but not commonly used in Classic ASP)
```

### 2. XSS Prevention
```asp
' Always HTML-encode user input when displaying
Response.Write Server.HTMLEncode(Request("name"))
```

### 3. Authentication Checks
```asp
' Check on every protected page
If userID = 0 Then
    Response.Redirect "/webbmail/login.asp"
    Response.End
End If
```

### 4. Authorization Checks
```asp
' Use wsroles system for database editing
If uRank < 128 Then
    Response.Write "Insufficient privileges"
    Response.End
End If
```

## Performance Optimization

### 1. Connection Pooling
```asp
' ADODB automatically pools connections when using DSNs
' Close connections when done
conE.Close
Set conE = Nothing
```

### 2. Recordset Management
```asp
' Use forward-only, read-only cursors (default)
Dim rs
Set rs = conE.Execute(sql)  ' Fast, low memory

' Avoid server-side cursors unless needed
' Set rs = Server.CreateObject("ADODB.Recordset")
' rs.Open sql, conE, 3, 3  ' adOpenStatic, adLockOptimistic (slower)
```

### 3. Caching
```asp
' Application-level caching for reference data
If IsEmpty(Application("stockList")) Then
    Set rs = conE.Execute("SELECT * FROM issue")
    Application("stockList") = rs.GetRows()
End If
```

## Common Gotchas

1. **Default Properties** - VBScript auto-resolves `rs("field")` to `rs("field").Value`
2. **Variant Type** - All variables are Variant, check types with `IsNull()`, `IsNumeric()`, etc.
3. **Line Continuation** - Use `_` for line continuation (but not in strings)
4. **String Concatenation** - Use `&` not `+` (+ does numeric addition if both sides are numbers)
5. **Array Bounds** - VBScript arrays are 0-indexed by default
6. **Include Files** - Must be before `<html>` tag and use `<!--#include file="..."-->`

## Migration Considerations

When replacing with modern framework:

1. **Preserve Query Logic** - Especially recursive ownership trees in holders.asp
2. **Maintain URL Structure** - Existing links and bookmarks
3. **Keep Authentication** - wsroles system and persistent login
4. **CSV Exports** - Many users rely on these
5. **Bot Protection** - BotChk() pattern prevents abuse

## See Also

- [editing-system.md](editing-system.md) - wsroles security details
- [authentication.md](authentication.md) - Login system architecture
- [../database/setup.md](../database/setup.md) - DSN configuration
- [../architecture/overview.md](../architecture/overview.md) - System architecture

---

*Classic ASP may be legacy technology, but it has served this platform reliably for 20+ years. When modernizing, preserve the battle-tested patterns.*

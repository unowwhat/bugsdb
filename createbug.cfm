<cfset correctBugname=trim(#bugname#) />
<cfif len(correctBugname) is 0>
	<cflocation url="newbug.cfm">
</cfif>
<cfset correctDescription=#description# />
<cfset correctUrgency=#urgency# />
<cfset correctCriticality=#criticality# />
<cfset correctUser=#application.user#>
<cfset correctDate = dateFormat(now(),"YYYY-MM-DD") />
<cfset correctStatus = "Новая" />
<cfquery name="insertBug" datasource="bugsdb">
	INSERT INTO 
		bugs (name,description,urgency,criticality,user,inputDate,status)
	VALUES
		('#correctBugname#','#correctDescription#','#correctUrgency#','#correctCriticality#','#correctUser#','#correctDate#','#correctStatus#')
</cfquery>
<cfquery name="getid" datasource="bugsdb">
	SELECT
		id
	FROM
		bugs
	WHERE
		name="#correctBugname#"
</cfquery>
<cfset bugid = #getid.id# />
<cfquery name="insertHistory" datasource="bugsdb">
	INSERT INTO 
		history (id,editDate,action,comment,user)
	VALUES
		('#bugid#','#correctDate#','Ввод','#correctDescription#','#correctUser#')
</cfquery>
<cflocation url="list.cfm">

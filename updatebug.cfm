<cfset useid = #id# />
<cfset correctBugname=trim(#bugname#) />
<cfif len(correctBugname) is 0>
	<cflocation url="editbug.cfm?id=#useid#">
</cfif>
<cfset correctDescription=#description# />
<cfset correctUrgency=#urgency# />
<cfset correctCriticality=#criticality# />
<cfset correctStatus = #status# />
<cfset correctComment=#comment# />
<cfif compare(correctStatus,"Новая") is 0>
	<cfset action="Ввод" />
</cfif>	
<cfif compare(correctStatus,"Открытая") is 0>
	<cfset action="Открытие" />
</cfif>	
<cfif compare(correctStatus,"Решенная") is 0>
	<cfset action="Решение" />
</cfif>	
<cfif compare(correctStatus,"Закрытая") is 0>
	<cfset action="Закрытие" />
</cfif>
<cfset correctDate = dateFormat(now(),"YYYY-MM-DD") />
<cfquery name="updateBug" datasource="bugsdb">
	UPDATE 
		bugs 
	SET
		name='#correctBugname#',description='#correctDescription#',urgency='#correctUrgency#',criticality='#correctCriticality#',status='#correctStatus#'
	WHERE
		id = '#useid#'
</cfquery>
<cfquery name="updateHistory" datasource="bugsdb">
	INSERT INTO
		history (id,editDate,action,comment,user)
	VALUES
		('#useid#','#correctDate#','#action#','#correctComment#','#application.user#')
</cfquery>
<cflocation url="list.cfm">

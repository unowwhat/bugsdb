<cfset useid = #id# />
<cfquery name="deleteBug" datasource="bugsdb">
	DELETE FROM 
		bugs 
	WHERE
		id = '#useid#'
</cfquery>
<cfquery name="deleteHistory" datasource="bugsdb">
	DELETE FROM 
		history 
	WHERE
		id = '#useid#'
</cfquery>
<cflocation url="list.cfm">

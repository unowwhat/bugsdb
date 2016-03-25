<cfquery name="login_query" datasource="bugsdb">
	SELECT
		*
	FROM
		users
</cfquery>
<cfset correctLogin=login />
<cfset correctPassword=password />
<cfloop query="login_query">
	<cfif COMPARE(login_query.login,correctLogin) is 0 AND COMPARE(login_query.password,correctPassword) is 0>
		<cfoutput>Вы вошли как #login_query.firstname# #login_query.lastname#</cfoutput>
		<cfscript>
			application.permission = true;
			application.user = #login_query.login#;
		</cfscript>
		<cflocation url="newbug.cfm">
	</cfif>
</cfloop>
<cflocation url="index.cfm">

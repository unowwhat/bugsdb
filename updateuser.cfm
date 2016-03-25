<cfset correctLogin=trim(#login#) />
<cfset correctPassword=trim(#password#) />
<cfif len(correctLogin) is 0 OR len(correctPassword) is 0>
	<cflocation url="edituser.cfm">
</cfif>
<cfset correctFirstname=#firstname# />
<cfset correctLastname=#lastname# />
<cfquery name="updateUser" datasource="bugsdb">
	UPDATE 
		users 
	SET
		login='#correctLogin#',password='#correctPassword#',firstname='#correctFirstname#',lastname='#correctLastname#'
	WHERE
		login = "#application.user#"
</cfquery>
<cfscript>
application.user = correctLogin;
</cfscript>
<cflocation url="list.cfm">

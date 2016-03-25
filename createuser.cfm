<cfset correctLogin=trim(#login#) />
<cfset correctPassword=trim(#password#) />
<cfif len(correctLogin) is 0 OR len(correctPassword) is 0>
	<cflocation url="newuser.cfm">
</cfif>
<cfset correctFirstname=#firstname# />
<cfset correctLastname=#lastname# />
<cfquery name="insertUser" datasource="bugsdb">
	INSERT INTO 
		users (login,password,firstname,lastname)
	VALUES
		('#correctLogin#','#correctPassword#','#correctFirstname#','#correctLastname#')
</cfquery>
<cflocation url="index.cfm">
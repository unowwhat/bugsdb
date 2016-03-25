<cfset bugid=0 />
<cfscript>
	if (isDefined("URL.id")) bugid = URL.id;
</cfscript>
<cfquery name="bughistory" datasource="bugsdb">
	SELECT 
		*
	FROM
		history
	WHERE
		id = #bugid#
	ORDER BY
		editDate
	DESC
</cfquery>
<cfquery name="getbugname" datasource="bugsdb">
	SELECT
		name
	FROM
		bugs
	WHERE
		id=#bugid#
</cfquery>
<cfset bugname=#getbugname.name# />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="description" content="Clean Slide Responsive Vcard Template" />
	<meta name="keywords" content="jquery, Responsive Vcard, Template, Vcard, Clean Slide" />
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	<meta http-equiv="X-UA-Compatible" content="IE=7" />
	<title>Bugs DB</title>
	
	<!-- Loading Google Web fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=IM+Fell+DW+Pica' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
	
	<!-- CSS Files -->
	<link href="assets/css/reset.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/style.css" rel="stylesheet" type="text/css"  id="color" />
	<link href="assets/css/typography.css" rel="stylesheet" type="text/css"  id="customFont"/>
	<link href="assets/css/arial_content.css" rel="stylesheet" type="text/css"  id="contentfont"/>
	
	<!-- include jQuery library -->
	<script type="text/javascript" src="assets/js/jquery-1.7.min.js"></script>

	<script src="assets/js/raphael.js" type="text/javascript"></script>
	<script src="assets/js/init.js" type="text/javascript"></script>
</head>
	
<body>
	<cfinclude template="blocks/header.cfm">
	<table style="margin-top:150px" class="features-table">
		<tr>
			<td class="grey">Ошибка</td>
			<td class="grey">Дата</td>
			<td class="grey">Действие</td>
			<td class="grey" style="width:400px">Комментарий</td>
			<td class="grey">Пользователь</td>
		</tr>
		<cfoutput><cfloop query="bughistory">
			<tr>
				<td>#bugname#</td>
				<td>#bughistory.editDate#</td>
				<td>#bughistory.action#</td>
				<td>#bughistory.comment#</td>
				<td>#bughistory.user#</td>
			</tr>
		</cfloop></cfoutput>
	</table>	
</body>
</html>
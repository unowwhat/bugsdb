<cfset sortBy = "name" />
<cfscript>
	if (isDefined("URL.sort")) sortBy = URL.sort;

</cfscript>
<cfquery name="buglist" datasource="bugsdb">
	SELECT 
		*
	FROM
		bugs
	ORDER BY
		#sortBy#
	ASC
</cfquery>
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
			<td class="grey"><a href="list.cfm?sort=name"><cfoutput>Название</cfoutput></a></td>
			<td class="grey" style="width:500px"><a href="list.cfm?sort=description">Описание</a></td>
			<td class="grey"><a href="list.cfm?sort=inputDate">Дата создания</a></td>
			<td class="grey"><a href="list.cfm?sort=user">Пользователь</a></td>
			<td class="grey"><a href="list.cfm?sort=status">Статус</a></td>
			<td class="grey"><a href="list.cfm?sort=urgency">Срочность</a></td>
			<td class="grey"><a href="list.cfm?sort=criticality">Критичность</a></td>
			<td class="grey" style="width:10px"></td>
			<td class="grey" style="width:10px"></td>
			<td class="grey" style="width:10px"></td>
		</tr>
		<cfif compare(sortBy,"criticality") is 0>
			<cfoutput><cfloop query="buglist">
				<cfif compare(buglist.criticality, "Запрос на изменение")>
					<tr>
						<td>#buglist.name#</td>
						<td>#buglist.description#</td>
						<td>#buglist.inputDate#</td>
						<td>#buglist.user#</td>
						<td>#buglist.status#</td>
						<td>#buglist.urgency#</td>
						<td>#buglist.criticality#</td>
						<td style="width:30px"><a href="history.cfm?id=#buglist.id#"><img src="assets/images/history.png" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="editbug.cfm?id=#buglist.id#"><img src="assets/images/edit.jpg" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="deletebug.cfm?id=#buglist.id#"><img src="assets/images/delete.jpg" style="width:20px;height:20px"></a></td>
					</tr>
				</cfif>
			</cfloop></cfoutput>
			<cfoutput><cfloop query="buglist">
				<cfif compare(buglist.criticality, "Запрос на изменение") is 0>
					<tr>
						<td>#buglist.name#</td>
						<td>#buglist.description#</td>
						<td>#buglist.inputDate#</td>
						<td>#buglist.user#</td>
						<td>#buglist.status#</td>
						<td>#buglist.urgency#</td>
						<td>#buglist.criticality#</td>
						<td style="width:30px"><a href="history.cfm?id=#buglist.id#"><img src="assets/images/history.png" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="editbug.cfm?id=#buglist.id#"><img src="assets/images/edit.jpg" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="deletebug.cfm?id=#buglist.id#"><img src="assets/images/delete.jpg" style="width:20px;height:20px"></a></td>
					</tr>
				</cfif>
			</cfloop></cfoutput>
		<cfelseif compare(sortBy,"urgency") is 0>
			<cfoutput><cfloop query="buglist">
				<cfif compare(buglist.urgency, "Очень срочно!") is 0>
					<tr>
						<td>#buglist.name#</td>
						<td>#buglist.description#</td>
						<td>#buglist.inputDate#</td>
						<td>#buglist.user#</td>
						<td>#buglist.status#</td>
						<td>#buglist.urgency#</td>
						<td>#buglist.criticality#</td>
						<td style="width:30px"><a href="history.cfm?id=#buglist.id#"><img src="assets/images/history.png" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="editbug.cfm?id=#buglist.id#"><img src="assets/images/edit.jpg" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="deletebug.cfm?id=#buglist.id#"><img src="assets/images/delete.jpg" style="width:20px;height:20px"></a></td>
					</tr>
				</cfif>
			</cfloop></cfoutput>
			<cfoutput><cfloop query="buglist">
				<cfif compare(buglist.urgency, "Срочно") is 0>
					<tr>
						<td>#buglist.name#</td>
						<td>#buglist.description#</td>
						<td>#buglist.inputDate#</td>
						<td>#buglist.user#</td>
						<td>#buglist.status#</td>
						<td>#buglist.urgency#</td>
						<td>#buglist.criticality#</td>
						<td style="width:30px"><a href="history.cfm?id=#buglist.id#"><img src="assets/images/history.png" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="editbug.cfm?id=#buglist.id#"><img src="assets/images/edit.jpg" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="deletebug.cfm?id=#buglist.id#"><img src="assets/images/delete.jpg" style="width:20px;height:20px"></a></td>
					</tr>
				</cfif>
			</cfloop></cfoutput>
			<cfoutput><cfloop query="buglist">
				<cfif compare(buglist.urgency, "Несрочно")  is 0>
					<tr>
						<td>#buglist.name#</td>
						<td>#buglist.description#</td>
						<td>#buglist.inputDate#</td>
						<td>#buglist.user#</td>
						<td>#buglist.status#</td>
						<td>#buglist.urgency#</td>
						<td>#buglist.criticality#</td>
						<td style="width:30px"><a href="history.cfm?id=#buglist.id#"><img src="assets/images/history.png" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="editbug.cfm?id=#buglist.id#"><img src="assets/images/edit.jpg" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="deletebug.cfm?id=#buglist.id#"><img src="assets/images/delete.jpg" style="width:20px;height:20px"></a></td>
					</tr>
				</cfif>
			</cfloop></cfoutput>
			<cfoutput><cfloop query="buglist">
				<cfif compare(buglist.urgency, "Совсем несрочно") is 0>
					<tr>
						<td>#buglist.name#</td>
						<td>#buglist.description#</td>
						<td>#buglist.inputDate#</td>
						<td>#buglist.user#</td>
						<td>#buglist.status#</td>
						<td>#buglist.urgency#</td>
						<td>#buglist.criticality#</td>
						<td style="width:30px"><a href="history.cfm?id=#buglist.id#"><img src="assets/images/history.png" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="editbug.cfm?id=#buglist.id#"><img src="assets/images/edit.jpg" style="width:20px;height:20px"></a></td>
						<td style="width:30px"><a href="deletebug.cfm?id=#buglist.id#"><img src="assets/images/delete.jpg" style="width:20px;height:20px"></a></td>
					</tr>
				</cfif>
			</cfloop></cfoutput>
		<cfelse>
			<cfoutput><cfloop query="buglist">
				<tr>
					<td>#buglist.name#</td>
					<td>#buglist.description#</td>
					<td>#buglist.inputDate#</td>
					<td>#buglist.user#</td>
					<td>#buglist.status#</td>
					<td>#buglist.urgency#</td>
					<td>#buglist.criticality#</td>
					<td style="width:30px"><a href="history.cfm?id=#buglist.id#"><img src="assets/images/history.png" style="width:20px;height:20px"></a></td>
					<td style="width:30px"><a href="editbug.cfm?id=#buglist.id#"><img src="assets/images/edit.jpg" style="width:20px;height:20px"></a></td>
					<td style="width:30px"><a href="deletebug.cfm?id=#buglist.id#"><img src="assets/images/delete.jpg" style="width:20px;height:20px"></a></td>
				</tr>
			</cfloop></cfoutput>
		</cfif>
	</table>	
</body>
</html>
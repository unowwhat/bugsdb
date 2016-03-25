<cfset userid=#application.user# />
<cfquery name="getusers" datasource="bugsdb">
	SELECT
		*
	FROM
		users
	WHERE
		login = "#userid#"
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
	
		<div class="boxBody" style="margin-top:100px">			  
			<div class="desc">
					<form id="form" action="updateuser.cfm" method="post">
						<cfoutput query="getusers">
						<div>
							<label>Логин</label>
							<input name="login" type="text" class="required" value="#getusers.login#"/>
						</div>
						<div>
							<label>Пароль</label>
							<input name="password" type="password" class="required" value="#getusers.password#"/>
						</div>
						<div>
							<label>Имя</label>
							<input name="firstname" type="text" class="required" value="#getusers.firstname#"/>
						</div>
						<div>
							<label>Фамилия</label>
							<input name="lastname" type="text" class="required" value="#getusers.lastname#"/>
						</div>
						<div>
							<input id="submitBtn" value="Сохранить"  name="submit" type="submit" class="submitBtn" style="margin-right:5px;width:150px" />
						</div>
						<input type="hidden" name="userid" value="#application.user#" />
						</cfoutput>
					</form>
			</div>
	</div>
  	
</body>
</html>
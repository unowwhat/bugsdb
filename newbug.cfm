<cfparam name="form.submitted" default="0" />
<cfparam name="form.name" default="" />
<cfparam name="form.description" default="" />
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
		<!-- Content Start -->
  	<div id="content" style="margin-top:150px" >
		<h2>Введите данные об ошибке</h2>		
		<!-- Message Output -->
		<!--<cfif form.submitted>
			<cfset ok = true />
			<cfif NOT len(trim(form.contactname))>
				<cfset ok = false />
			</cfif>
			<cfif NOT len(trim(form.email))>
				<cfset ok = false />
			</cfif>
			<cfif NOT len(trim(form.Message))>
				<cfset ok = false />
			</cfif>
			<cfif !ok>
				<p>You did not provide all the required information!</p>
			<cfelse>
				<p>Form submitted successfully!</p>	
			</cfif>	
		</cfif>-->							
				
		<div class="boxBody">			  
			<div class="desc">
				<cfoutput>
					<form id="form" action="createbug.cfm" method="post">
						<div>
							<label>Ошибка</label>
							<input name="bugname" type="text" class="required" value="#form.name#" />
						</div>
						<div>
							<label>Описание</label>				
							<textarea name="description" type="text" style="height:100px" rows="6" cols="60"/></textarea>		
						</div>
						<div class="textarea">
							<label>Срочность</label>
							<select name="urgency" size="1" style="width:425px;margin-left:-10px;height:30px">
								<option selected value="Очень срочно!">Очень срочно!</option>
								<option value="Срочно">Срочно</option>
								<option value="Несрочно">Несрочно</option>
								<option value="Совсем несрочно">Совсем несрочно</option>
							</select>
						</div>
						<div class="textarea">
							<label>Критичность</label>
							<select name="criticality" size="1" style="width:425px;margin-left:-10px;height:30px">
								<option selected value="Авария">Авария</option>
								<option value="Критичная">Критичная</option>
								<option value="Некритичная">Некритичная</option>
								<option value="Запрос на изменение">Запрос на изменение</option>
							</select>
						</div>
						<div>
							<input id="submitBtn" value="Сохранить"  name="submit" type="submit" class="submitBtn" style="margin-right:5px;width:150px" />
						</div>
						<input type="hidden" name="submitted" value="1" />
					</form>
				</cfoutput>
			</div>
	</div>
</body>
</html>
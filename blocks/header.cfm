<cfif application.permission eq false>
	<cflocation url="index.cfm">
</cfif>
<div class="clr" id="top-head">&nbsp;</div>
	<div id="container">
		<!--header -->
		<div id="header" >
			<div class="logo-bg">
				<!--logo -->
				<div class="logo">
					<img src="assets/images/logo.jpg" alt="Logo" width="200" height="50" border="0"  id="logo" />
				</div>
				
				<!--head right -->
				<div class="right">
				
					<!--// Navigation //-->
					<div class="menu_nav">
						<div id="nav-wrap">
							<ul class="arrowunderline" id="nav">
								<li class="newbug"><cfoutput>#application.user#</cfoutput></li>
								<li class="newbug"><a href="newbug.cfm">Новая ошибка</a></li>
								<li class="list"><a href="list.cfm">Список ошибок</a></li>
								<li class="edituser"><a href="edituser.cfm">Учетная запись</a></li>
								<cfif application.permission>
									<li class="logout"><a href="logout.cfm">Выход</a></li>
								<cfelse>
									<li class="logout"><a href="logout.cfm">Вход</a></li>
								</cfif>
							</ul>
						</div>
					</div>
					<!--// Navigation End //-->
				</div>
				<!--// -head right end //-->
			</div>
			<!--// logo bg end //-->
		</div>
		<!--header end -->
	
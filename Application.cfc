/**
*
* @file  /C/ColdFusion2016/cfusion/wwwroot/learncfinaweek/www/Application.cfc
* @author  
* @description
*
*/

component {

	function  onApplicationStart() {
		application.permission = false;
		application.user = "";
		return true;
	}

	/*function onRequestStart(){
		if(structKeyExists(url,'reload')){
			onApplicationStart();
		}
	}*/
	
	
}
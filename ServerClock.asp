<%#@~^3AEAAA==@#@&djY,D/`/.P{P^x	HCr	R2Xnm!Y+vEj2d2;K~YrhWW0knY,s]6tPEdnMSGobU,uAIAPEk+Mmk9PxPr[Lik+D&9#@#@&d&o~1}K,DdjdnMR3rw~K_2H@#@&ddPrs+606dYxM/`/+MR6r+^Nd`rYrhW06d+DJ#@#@&72d?A@#@&d7Pb:nr6W/Y@#@&i219~&s@#@&ijY~M/`/+MP{~xKY4k	o@#@&i@#@&i\k	EYd~',IKEUNcPb:nr6W/Y~M,v!b@#@&@#@&d1;MDn	YDk:P{~xKhc#@#@&7^!DDUYDk:~xPGlD+)N[crxE~trx!YndBmE..xOYbh#@#@&d@#@&d6E	^YbWUPV+OjD\.Kb:+vb@#@&idkY~'~UKhc#@#@&di/O~{PfCOb[NvE	JStk	EY/BdY*@#@&diMnOU+D7nD:k:~xPkY@#@&7+U[,0;x1OkKx@#@&R4UAAA==^#~@%>


<Script language="JavaScript" type="text/javascript">
<!--
var LastServerTime = new Date('<%=#@~^CwAAAA==^!D.xDYks+sgQAAA==^#~@%>');
var LastLocalTime = new Date();


function StartClock() 
{
 if (!document.layers && !document.all) return;
 UpdateTimeClockDisplay();
 setTimeout("StartClock()", 1000);
}

function UpdateTimeClockDisplay()
{
  var Line1 = TimeLine();
	RefreshDisplay(Line1);

}

function RefreshDisplay(Value1)
{
 if (document.layers) 
 { 
 	document.layers.ClockLine.document.write(Value1);
 	document.layers.ClockLine.document.close();
 }
 else
 {
 	if (document.all)
 	{
 		ClockLine.innerHTML = Value1;
 	}
 }
}


function ButtonCLRClick()
{
  if (Field > "")
  {
  	Field = "";
  }
  else
  {
    Clear();
  }
  UpdateTimeClockDisplay();
}


function DateTime()
{
	var digital = new Date();
	
	digital.setTime(digital.getTime()+(LastServerTime.getTime()-LastLocalTime.getTime()));
	return digital;
}

function TimeLine() 
{
 var digital = DateTime(); 
 var hours1 = digital.getHours();
 var minutes1 = digital.getMinutes();
 var month1 = digital.getMonth()+1;
 var day1 = digital.getDate();
 var year1 = digital.getYear();
 var amOrPm = "AM";

 if (day1 < 10) day1 = "0" + day1;
 if (month1 < 10) month1 = "0" + month1; 
 if (hours1 > 11) amOrPm = "PM";
 if (hours1 > 12) hours1 = hours1 - 12;
 if (hours1 == 0) hours1 = 12;
 if (hours1 < 10) hours1 = "0" + hours1;
 if (minutes1 <= 9) minutes1 = "0" + minutes1;
 
return "&nbsp" + month1 + "\/" + day1 + "\/" + year1 + " " + hours1 + ":" + minutes1 + amOrPm;
}

//-->
</script>

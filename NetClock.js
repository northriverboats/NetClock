  var req;
	var errorCount = 0;
	var pageState = -1;
	var selectedColor = "#4681bd";
	var baseColor = "#d7e7f7";
	var baseTextColor = "#000000";
	var selectedTextColor = "#ffffff";
	var serverTime;
	var clientTime;
	var timeDiff;
	var showQty;
	var showJobTransfer;
	var showJob;
	var disabled = false;
	//==============================================================================================================================
	function CreateStatus() 
	{
		statusWindow = window.open ('', 'statusWindow', 'dependent=1, directories=0, height=20, hotkeys=0, location=0, menubar=0, resizable=0, scrollbars=0, status=0, titlebar=0, toolbar=0, width=250, left='+(screen.width/2-125)+', top='+(screen.height/2.5-125));
		statusWindow.document.write('<html><head><title>Processing... Please Wait...</title></head>\n');
		statusWindow.document.write('<body><center><table width="200"><tr><td align="center"><img src="../images/animated/Processing.gif"></td></tr>\n');
		statusWindow.document.write('</table></center></body></html>\n');
	}
	//==============================================================================================================================
	function CloseStatus() 
	{
		statusWindow.close();
	}
	//==============================================================================================================================
	function chkKey()
	{
	  if((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode >= 96 && event.keyCode <= 105) || (event.keyCode == 46) || (event.keyCode == 110) || (event.keyCode == 13) || (event.keyCode == 8))
	  {
	    switch(event.keyCode)
	    {
	      case 13:
	        keyPadClick('Enter');
	      break;
	      case 8:
	        keyPadClick('Clear');
	      break;
	      case 46:
	      case 110:
	        keyPadClick('.');
	      break;
	      case 48:
	      case 96:
	        keyPadClick('0');
	      break;
	      case 49:
	      case 97:
	        keyPadClick('1');
	      break;
	      case 50:
	      case 98:
	        keyPadClick('2');
	      break;
	      case 51:
	      case 99:
	        keyPadClick('3');
	      break;
	      case 52:
	      case 100:
	        keyPadClick('4');
	      break;
	      case 53:
	      case 101:
	        keyPadClick('5');
	      break;
	      case 54:
	      case 102:
	        keyPadClick('6');
	      break;
	      case 55:
	      case 103:
	        keyPadClick('7');
	      break;
	      case 56:
	      case 104:
	        keyPadClick('8');
	      break;
	      case 57:
	      case 105:
	        keyPadClick('9');
	      break;
	    }
	  }
	  return false;
	}
  //==============================================================================================================================
	function loadXMLDoc(url)
	{
    if (window.XMLHttpRequest) 
    {
      req = new XMLHttpRequest();
      req.onreadystatechange = processReqChange;
      req.open("GET", url, true);
      req.send(null);
    } 
    else if (window.ActiveXObject) 
    {
      req = new ActiveXObject("Microsoft.XMLHTTP");
      if (req) 
      {
        req.onreadystatechange = processReqChange;
        req.open("GET", url, true);
        req.send();
      }
    }
	}
	//============================================================================================================================
	function processReqChange() 
	{
		if (req.readyState == 4) 
		{
			if (req.status == 200)
			{
				response = req.responseXML.documentElement;
				method = response.getElementsByTagName('method')[0].firstChild.data;
				data = response.getElementsByTagName('data')[0].firstChild.data;
			  //build methoid
			  eval(method + '(\'1\', data)');
			} 
			else 
			{
				alert("Error:\n" + req.statusText);
			}
		}
	}
	//===============================================================================================================================
	function doTheClock()
	{
    window.setTimeout( "doTheClock()", 1000 );
    t = new Date();
    time = new Date(t.valueOf() + timeDiff);
    document.getElementById("spnDisplayTime").innerText = time.toLocaleTimeString();
    document.getElementById("spnDisplayDate").innerText = time.toDateString();
    document.getElementById("punchTime").value = time.getHours()+":"+time.getMinutes()+":"+time.getSeconds();
    document.getElementById("punchDate").value = time.getMonth()+"/"+time.getDay()+"/"+time.getFullYear();
  }
	//===============================================================================================================================
	function getEmployeeName(response,data)
	{
	  var cardNumber = new String();
	  var employeeData = new String();
	  var empArry;
	  var employeeName;
	  var empPhoto;
	  cardNumber = document.getElementById("spnCardNumber").innerText;
	  if(response == 0)
	  {
	    if(cardNumber.length > 0)
	    {
	      url = "ProcessMode.asp?Data="+cardNumber+"&Mode=1";
	      loadXMLDoc(url);
	    }
	  }
	  else
	  {
	    employeeData = data;
	    empArry = employeeData.split("|");
	    employeeName = empArry[0];
	    empPhoto = empArry[1];
	    document.getElementById("spnEmployeeName").innerText = employeeName;
	    if(empPhoto != "None") 
	    {
	      document.getElementById("imgEmployeeImage").src = empPhoto;
	    }
	    else
	    {
	      document.getElementById("imgEmployeeImage").src = "/qqest/images/spacer.gif";
	    }
	  }
	}
	//===============================================================================================================================
	function getJobName(response,jobName)
	{
	  var jobNumber = new String();
	  jobNumber = document.getElementById("spnJobNumber").innerText;
	  if(response == 0)
	  {
	    if(jobNumber.length > 0)
	    {
	      url = "ProcessMode.asp?Data="+jobNumber+"&Mode=2";
	      loadXMLDoc(url);
	    }
	  }
	  else
	  {
	    document.getElementById("spnJobName").innerText = jobName;
	  }
	}
	//===============================================================================================================================
	function getTaskName(response,taskName)
	{
	  var taskNumber = new String();
	  taskNumber = document.getElementById("spnTaskNumber").innerText;
	  if(response == 0)
	  {
	    if(taskNumber.length > 0)
	    {
	      url = "ProcessMode.asp?Data="+taskNumber+"&Mode=3";
	      loadXMLDoc(url);
	    }
	  }
	  else
	  {
	    document.getElementById("spnTaskName").innerText = taskName;
	  }
	}
	//===============================================================================================================================
	function getDepartmentName(response,departmentName)
	{
	  var departmentNumber = new String();
	  departmentNumber = document.getElementById("spnDepartmentNumber").innerText;
	  if(response == 0)
	  {
	    if(departmentNumber.length > 0)
	    {
	      url = "ProcessMode.asp?Data="+departmentNumber+"&Mode=4";
	      loadXMLDoc(url);
	    }
	  }
	  else
	  {
	    document.getElementById("spnDepartmentName").innerText = departmentName;
	  }
	}
	//===============================================================================================================================
	function submitPacket(response,data)
	{
	  var newPacket = new String();
	  var sponsData = new String();
	  var arrsponsData;
	  var employeePin = document.getElementById("employeePin").value;
	  if(response == 0)
	  {
	    disabled = true;
	    newPacket = data
	    if(newPacket.length > 0)
	    {
	      url = "ProcessMode.asp?Data="+newPacket+"&Mode=6&CardNumber="+document.getElementById("spnCardNumber").innerText+"&employeePin="+employeePin;
	      loadXMLDoc(url);
	    }
	  }
	  else
	  {
	    CloseStatus();
	    resetClock();
	    sponsData = data;
	    arrsponsData = sponsData.split("\\n");
	    for(i=0;i<=arrsponsData.length-1;i++)
	    {
	      if(i == 0)
	      {
	        data = arrsponsData[i] + "\n"
	      }
	      else
	      {
	        data = data + arrsponsData[i] + "\n"
	      }
	    }
	    alert(data);
	    disabled = false;
	  }
	}
	//===============================================================================================================================
	function resetClock()
	{
	  document.getElementById("spnCardNumber").innerText = "";
	  document.getElementById("spnEmployeePin").innerText = "";
	  document.getElementById("employeePin").value = "";
	  document.getElementById("spnEmployeeName").innerText = "";
	  document.getElementById("imgEmployeeImage").src = "/qqest/images/spacer.gif";
	  document.getElementById("spnTipAmount").innerText = "";
	  document.getElementById("spnJobNumber").innerText = "";
	  document.getElementById("spnJobName").innerText = "";
	  document.getElementById("chkJobTransfer").checked = false;
	  document.getElementById("trJobTransfer").style.display = "none";
	  document.getElementById("spnTaskNumber").innerText = "";
	  document.getElementById("spnTaskName").innerText = "";
	  document.getElementById("trTaskNumber").style.display = "none";
	  document.getElementById("spnQtyAmount").innerText = "";
	  document.getElementById("trQtyAmount").style.display = "none";
	  document.getElementById("spnDepartmentNumber").innerText = "";
	  document.getElementById("spnDepartmentName").innerText = "";
	  document.getElementById("chkDepartmentTransfer").checked = false;
	  document.getElementById("trDepartmentTransfer").style.display = "none";
	  document.getElementById("trDepartmentOverride").style.display = "none";
	  document.getElementById("trCardNumber").style.backgroundColor = baseColor;
	  document.getElementById("trCardNumber").style.color = baseTextColor;
	  document.getElementById("trEmployeePin").style.backgroundColor = baseColor;
	  document.getElementById("trEmployeePin").style.color = baseTextColor;
    document.getElementById("trTipAmount").style.backgroundColor = baseColor;
    document.getElementById("trJobNumber").style.backgroundColor = baseColor;
    document.getElementById("trJobTransfer").style.backgroundColor = baseColor;
    document.getElementById("trTaskNumber").style.backgroundColor = baseColor;
    document.getElementById("trQtyAmount").style.backgroundColor = baseColor;
    document.getElementById("trDepartmentNumber").style.backgroundColor = baseColor;
    document.getElementById("trDepartmentTransfer").style.backgroundColor = baseColor;
    document.getElementById("trDepartmentOverride").style.backgroundColor = baseColor;
    document.getElementById("trInOut").style.backgroundColor = baseColor;
    document.getElementById("trLunchBreak").style.backgroundColor = baseColor;
    document.getElementById("tblTip").style.display = "none";
	        document.getElementById("tblJob").style.display = "none";
	        document.getElementById("tblDepartment").style.display = "none";
	        document.getElementById("tdTipItem").background = "images/Tabs_Light_Blue_Tip.jpg";
	        document.getElementById("tdJobItem").background = "images/Tabs_Light_Blue_Job.jpg";
	        document.getElementById("tdDepartmentItem").background = "images/Tabs_Light_Blue_Dept.jpg";
    pageState = -1;
    
	}
	//===============================================================================================================================
	function chkUser(response,data)
	{
	  var returnData = new String();
	  var returnArray;
	  var isValid;
	  var newTime;
	  if(response == 0)
	  {
	    url = "ProcessMode.asp?Data=0&Mode=5";
	    loadXMLDoc(url);
	  }
	  else
	  {
	    returnData = data;
	    returnArray = returnData.split("|");
	    isValid = returnArray[0];
	    if(isValid == "False")
	    {
	      document.location.href="/qqest/login/login.asp?action=security";
	    }
	    else
	    {
	      showJob = returnArray[2];
	      if(showJob == "false")
	      {
	        document.getElementById("tdJobItem").style.display = "none";
	        document.getElementById("tdSpacer").style.display = "block";
	      }
	      else
	      {
	        document.getElementById("tdJobItem").style.display = "block";
	        document.getElementById("tdSpacer").style.display = "none";
	      }
	      showJobTransfer = returnArray[3];
	      showQty = returnArray[4];
	      serverTime = new Date(returnArray[1]);
	      clientTime = new Date();
	      timeDiff = (serverTime.valueOf() - clientTime.valueOf());
	      newTime = new Date(clientTime.valueOf() + timeDiff);
	      doTheClock();
	      //selectedColor = returnArray[1];
	      //selectedColor = "#aecbef";
	      //baseColor = returnArray[2];
	    }
	  }
	}
	//===============================================================================================================================
	function changePageState(stateID)
	{
	  document.getElementById("trCardNumber").style.color = selectedTextColor;
	  document.getElementById("trTipAmount").style.color = selectedTextColor;
    document.getElementById("trJobNumber").style.color = selectedTextColor;
    document.getElementById("trTaskNumber").style.color = selectedTextColor;
    document.getElementById("trQtyAmount").style.color = baseTextColor;
    document.getElementById("trDepartmentNumber").style.color = baseTextColor;
	  if(!disabled)
	  {
	    pageState = stateID;
	    switch(pageState)
	    {
	      case 0:
	        document.getElementById("trCardNumber").style.color = baseTextColor;
	        document.getElementById("trTipAmount").style.color = baseTextColor;
          document.getElementById("trJobNumber").style.color = baseTextColor;
          document.getElementById("trTaskNumber").style.color = baseTextColor;
          document.getElementById("trQtyAmount").style.color = baseTextColor;
          document.getElementById("trDepartmentNumber").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.color = selectedTextColor;
          document.getElementById("trEmployeePin").style.backgroundColor = selectedColor;
	        document.getElementById("trCardNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTipAmount").style.backgroundColor = baseColor;
	        document.getElementById("trJobNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTaskNumber").style.backgroundColor = baseColor;
	        document.getElementById("trQtyAmount").style.backgroundColor = baseColor;
	        document.getElementById("trDepartmentNumber").style.backgroundColor = baseColor;
	        document.getElementById("inOut1").disabled = false;
	        document.getElementById("inOut2").disabled = false;
	        document.getElementById("lunchBreak1").disabled = false;
	        document.getElementById("lunchBreak2").disabled = false;
	        document.getElementById("lunchBreak3").disabled = false;
	        break;
	      case 1:
	        document.getElementById("trCardNumber").style.color = selectedTextColor;
	        document.getElementById("trTipAmount").style.color = baseTextColor;
          document.getElementById("trJobNumber").style.color = baseTextColor;
          document.getElementById("trTaskNumber").style.color = baseTextColor;
          document.getElementById("trQtyAmount").style.color = baseTextColor;
          document.getElementById("trDepartmentNumber").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.backgroundColor = baseColor;
	        document.getElementById("trCardNumber").style.backgroundColor = selectedColor;
	        document.getElementById("trTipAmount").style.backgroundColor = baseColor;
	        document.getElementById("trJobNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTaskNumber").style.backgroundColor = baseColor;
	        document.getElementById("trQtyAmount").style.backgroundColor = baseColor;
	        document.getElementById("trDepartmentNumber").style.backgroundColor = baseColor;
	        document.getElementById("inOut1").disabled = false;
	        document.getElementById("inOut2").disabled = false;
	        document.getElementById("lunchBreak1").disabled = false;
	        document.getElementById("lunchBreak2").disabled = false;
	        document.getElementById("lunchBreak3").disabled = false;
	        break;
	      case 2:
	        document.getElementById("tdTipItem").background = "images/Tabs_Dark_Blue_Tip.jpg";
	        document.getElementById("tdJobItem").background = "images/Tabs_Light_Blue_Job.jpg";
	        document.getElementById("tdDepartmentItem").background = "images/Tabs_Light_Blue_Dept.jpg";
	        document.getElementById("trCardNumber").style.color = baseTextColor;
	        document.getElementById("trJobNumber").style.color = baseTextColor;
          document.getElementById("trTaskNumber").style.color = baseTextColor;
          document.getElementById("trQtyAmount").style.color = baseTextColor;
          document.getElementById("trDepartmentNumber").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.backgroundColor = baseColor;
	        document.getElementById("tblTip").style.display = "block";
	        document.getElementById("tblJob").style.display = "none";
	        document.getElementById("tblDepartment").style.display = "none";
	        document.getElementById("trTipAmount").style.backgroundColor = selectedColor;
	        document.getElementById("trCardNumber").style.backgroundColor = baseColor;
	        document.getElementById("trJobNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTaskNumber").style.backgroundColor = baseColor;
	        document.getElementById("trQtyAmount").style.backgroundColor = baseColor;
	        document.getElementById("trDepartmentNumber").style.backgroundColor = baseColor;
	        document.getElementById("inOut1").checked = false;
	        document.getElementById("inOut2").checked = false;
	        document.getElementById("inOut1").disabled = true;
	        document.getElementById("inOut2").disabled = true;
	        document.getElementById("lunchBreak1").checked = false;
	        document.getElementById("lunchBreak2").checked = false;
	        document.getElementById("lunchBreak3").checked = false;
	        document.getElementById("lunchBreak1").disabled = true;
	        document.getElementById("lunchBreak2").disabled = true;
	        document.getElementById("lunchBreak3").disabled = true;
	        break;
	      case 3:
	        document.getElementById("tdTipItem").background = "images/Tabs_Light_Blue_Tip.jpg";
	        document.getElementById("tdJobItem").background = "images/Tabs_Dark_Blue_Job.jpg";
	        document.getElementById("tdDepartmentItem").background = "images/Tabs_Light_Blue_Dept.jpg";
	        document.getElementById("trCardNumber").style.color = baseTextColor;
	        document.getElementById("trTipAmount").style.color = baseTextColor;
          document.getElementById("trJobNumber").style.color = selectedTextColor;
          document.getElementById("trTaskNumber").style.color = baseTextColor;
          document.getElementById("trQtyAmount").style.color = baseTextColor;
          document.getElementById("trDepartmentNumber").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.backgroundColor = baseColor;
	        document.getElementById("tblJob").style.display = "block";
	        document.getElementById("tblTip").style.display = "none";
	        document.getElementById("tblDepartment").style.display = "none";
	        if(showJobTransfer == "false")
	        {
	          document.getElementById("trJobTransfer").style.dispaly = "none";
	        }
	        else
	        {
	          document.getElementById("trJobTransfer").style.display = "block";
	        }
	        if(showQty == "false")
	        {
	          document.getElementById("trQtyAmount").style.display = "none";
	        }
	        else
	        { 
	          document.getElementById("trQtyAmount").style.display = "block";
	        }
	        document.getElementById("trJobNumber").style.backgroundColor = selectedColor;
	        document.getElementById("trCardNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTipAmount").style.backgroundColor = baseColor;
	        document.getElementById("trTaskNumber").style.backgroundColor = baseColor;
	        document.getElementById("trQtyAmount").style.backgroundColor = baseColor;
	        document.getElementById("trDepartmentNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTaskNumber").style.display = "block";
	        document.getElementById("inOut1").disabled = false;
	        document.getElementById("inOut2").disabled = false;
	        document.getElementById("lunchBreak1").checked = false;
	        document.getElementById("lunchBreak2").checked = false;
	        document.getElementById("lunchBreak3").checked = false;
	        document.getElementById("lunchBreak1").disabled = true;
	        document.getElementById("lunchBreak2").disabled = true;
	        document.getElementById("lunchBreak3").disabled = true;
	        break;
	      case 4:
	        document.getElementById("trCardNumber").style.color = baseTextColor;
	        document.getElementById("trTipAmount").style.color = baseTextColor;
          document.getElementById("trJobNumber").style.color = baseTextColor;
          document.getElementById("trTaskNumber").style.color = selectedTextColor;
          document.getElementById("trQtyAmount").style.color = baseTextColor;
          document.getElementById("trDepartmentNumber").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.backgroundColor = baseColor;
	        document.getElementById("trTaskNumber").style.backgroundColor = selectedColor;
	        document.getElementById("trCardNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTipAmount").style.backgroundColor = baseColor;
	        document.getElementById("trJobNumber").style.backgroundColor = baseColor;
	        document.getElementById("trQtyAmount").style.backgroundColor = baseColor;
	        document.getElementById("trDepartmentNumber").style.backgroundColor = baseColor;
	        document.getElementById("inOut1").disabled = false;
	        document.getElementById("inOut2").disabled = false;
	        document.getElementById("lunchBreak1").checked = false;
	        document.getElementById("lunchBreak2").checked = false;
	        document.getElementById("lunchBreak3").checked = false;
	        document.getElementById("lunchBreak1").disabled = true;
	        document.getElementById("lunchBreak2").disabled = true;
	        document.getElementById("lunchBreak3").disabled = true;
	        break;
	      case 5:
	        document.getElementById("trCardNumber").style.color = baseTextColor;
	        document.getElementById("trTipAmount").style.color = baseTextColor;
          document.getElementById("trJobNumber").style.color = baseTextColor;
          document.getElementById("trTaskNumber").style.color = baseTextColor;
          document.getElementById("trQtyAmount").style.color = selectedTextColor;
          document.getElementById("trDepartmentNumber").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.backgroundColor = baseColor;
	        document.getElementById("trQtyAmount").style.backgroundColor = selectedColor;
	        document.getElementById("trCardNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTipAmount").style.backgroundColor = baseColor;
	        document.getElementById("trJobNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTaskNumber").style.backgroundColor = baseColor;
	        document.getElementById("trDepartmentNumber").style.backgroundColor = baseColor;
	        document.getElementById("inOut1").disabled = false;
	        document.getElementById("inOut2").disabled = false;
	        document.getElementById("lunchBreak1").checked = false;
	        document.getElementById("lunchBreak2").checked = false;
	        document.getElementById("lunchBreak3").checked = false;
	        document.getElementById("lunchBreak1").disabled = true;
	        document.getElementById("lunchBreak2").disabled = true;
	        document.getElementById("lunchBreak3").disabled = true;
	        break;
	      case 6:
	        document.getElementById("tdTipItem").background = "images/Tabs_Light_Blue_Tip.jpg";
	        document.getElementById("tdJobItem").background = "images/Tabs_Light_Blue_Job.jpg";
	        document.getElementById("tdDepartmentItem").background = "images/Tabs_Dark_Blue_Dept.jpg";
	        document.getElementById("trCardNumber").style.color = baseTextColor;
	        document.getElementById("tdTipItem").style.color = baseTextColor;
	        document.getElementById("trTipAmount").style.color = baseTextColor;
	        document.getElementById("tdJobItem").style.color = baseTextColor;
          document.getElementById("trJobNumber").style.color = baseTextColor;
          document.getElementById("trTaskNumber").style.color = baseTextColor;
          document.getElementById("trQtyAmount").style.color = baseTextColor;
          document.getElementById("trDepartmentNumber").style.color = selectedTextColor;
          document.getElementById("trEmployeePin").style.color = baseTextColor;
          document.getElementById("trEmployeePin").style.backgroundColor = baseColor;
	        document.getElementById("tblJob").style.display = "none";
	        document.getElementById("tblTip").style.display = "none";
	        document.getElementById("tblDepartment").style.display = "block";
	        document.getElementById("trDepartmentNumber").style.backgroundColor = selectedColor;
	        document.getElementById("trCardNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTipAmount").style.backgroundColor = baseColor;
	        document.getElementById("trJobNumber").style.backgroundColor = baseColor;
	        document.getElementById("trTaskNumber").style.backgroundColor = baseColor;
	        document.getElementById("trQtyAmount").style.backgroundColor = baseColor;
	        document.getElementById("trDepartmentTransfer").style.display = "block";
	        document.getElementById("trDepartmentOverride").style.display = "block";
	        document.getElementById("inOut1").disabled = false;
	        document.getElementById("inOut2").disabled = false;
	        document.getElementById("lunchBreak1").disabled = false;
	        document.getElementById("lunchBreak2").disabled = false;
	        document.getElementById("lunchBreak3").disabled = false;
	        break;
	    }
	  }
	}
  //===============================================================================================================================
  function keyPadClick(value)
  {
    if(!disabled)
    {
      var objValue = new String();
      var textString = new String();
      //objValue = document.getElementById(object).innerText;
      objValue = value;
      objValue = objValue.replace(" ","");
      
      if(pageState == -1)
      {
        changePageState(1);
      }
      else if(pageState != 1)
      {
        textString = document.getElementById("spnCardNumber").innerText;
        if(textString.length == 0)
        {
          changePageState(1);
          document.getElementById("trCardNumber").style.backgroundColor = selectedColor;
          document.getElementById("trQtyAmount").style.backgroundColor = baseColor;
          document.getElementById("trTipAmount").style.backgroundColor = baseColor;
          document.getElementById("trJobNumber").style.backgroundColor = baseColor;
          document.getElementById("trTaskNumber").style.backgroundColor = baseColor;
          document.getElementById("trDepartmentNumber").style.backgroundColor = baseColor;
        }
        else
        {
          if(pageState == 4 || pageState == 5)
          {
            textString = document.getElementById("spnJobNumber").innerText;
            if(textString.length == 0)
            {
              changePageState(3);
              document.getElementById("trCardNumber").style.backgroundColor = baseColor;
              document.getElementById("trQtyAmount").style.backgroundColor = baseColor;
              document.getElementById("trTipAmount").style.backgroundColor = baseColor;
              document.getElementById("trJobNumber").style.backgroundColor = selectedColor;
              document.getElementById("trTaskNumber").style.backgroundColor = baseColor;
              document.getElementById("trDepartmentNumber").style.backgroundColor = baseColor;
            }
          }
        }
      }
      if(value != "Enter")
      {
        switch(pageState)
	      {
	        case 0:
	          textString = document.getElementById("spnEmployeePin").innerText;
	          textString1 = document.getElementById("employeePin").value;
	          textString = textString.replace(" ","");
	          textString1 = textString1.replace(" ","");
	          var addKey = true; 
	          if(objValue == 0 && textString.length == 0)
	          {
	            addKey = false;
	          }
	          if(addKey){
	            if(objValue == "Clear")
	            {
	              textString = textString.substring(0,textString.length-1);
	              textString1 = textString1.substring(0,textString1.length-1);
	              document.getElementById("spnEmployeePin").innerText = textString;
	              document.getElementById("spnEmployeePin").innerText = "";
	              document.getElementById("employeePin").value = textString1;
	              document.getElementById("employeePin").value = "";
	            }
	            else if(textString.length <= 9 && objValue != ".")
	            {
	              textString = textString + "*";
	              textString1 = textString1 + objValue;
	              document.getElementById("spnEmployeePin").innerText = textString;
	              document.getElementById("employeePin").value = textString1;
	            }
	          }
	          break;
	        case 1:
	          textString = document.getElementById("spnCardNumber").innerText;
	          textString = textString.replace(" ","");
	          var addKey = true; 
	          if(objValue == 0 && textString.length == 0)
	          {
	            addKey = false;
	          }
	          if(addKey){
	            if(objValue == "Clear")
	            {
	              textString = textString.substring(0,textString.length-1);
	              document.getElementById("spnCardNumber").innerText = textString;
	              if(textString.length != 0)
	              {
	                getEmployeeName(0,textString);
	              }
	              else
	              {
	                document.getElementById("spnEmployeeName").innerText = "";
	                document.getElementById("imgEmployeeImage").src = "/qqest/images/spacer.gif";
	              }
	            }
	            else if(textString.length <= 9 && objValue != ".")
	            {
	              textString = textString + objValue;
	              document.getElementById("spnCardNumber").innerText = textString;
	              getEmployeeName(0,textString);
	            }
	          }
	          break;
	        case 2:
	          textString = document.getElementById("spnTipAmount").innerText;
	          textString = textString.replace(" ","");
	          var addKey = true; 
	          if(objValue == 0 && textString.length == 0)
	          {
	            addKey = false;
	          }
	          if(addKey){
	            if(objValue == "Clear") //If the clear button is clicked.
	            {
	              textString = textString.substring(0,textString.length-1);
	              document.getElementById("spnTipAmount").innerText = textString;
	            }
	            else if(textString.length <= 9) //If the number is not grater then 10
	            {
	              textString = textString + objValue;
	              document.getElementById("spnTipAmount").innerText = textString;
	            }
	            document.getElementById("spnJobName").innerText = "";
	            document.getElementById("spnTaskName").innerText = "";
	            document.getElementById("spnJobNumber").innerText = "";
	            document.getElementById("spnTaskNumber").innerText = "";
	            document.getElementById("spnQtyAmount").innerText = "";
              document.getElementById("chkJobTransfer").checked = false;
              document.getElementById("trJobTransfer").style.display = "none";
              document.getElementById("trTaskNumber").style.display = "none";
	            document.getElementById("trQtyAmount").style.display = "none";
              document.getElementById("spnDepartmentNumber").innerText = "";
              document.getElementById("chkDepartmentTransfer").checked = false;
              document.getElementById("trDepartmentTransfer").style.display = "none";
              document.getElementById("trDepartmentOverride").style.display = "none";
            }
	          break;
	        case 3:
	          textString = document.getElementById("spnJobNumber").innerText;
	          textString = textString.replace(" ","");
	          var addKey = true; 
	          if(objValue == 0 && textString.length == 0)
	          {
	            addKey = false;
	          }
	          if(addKey){
              if(objValue == "Clear") //If the clear button is clicked
	            {
	              textString = textString.substring(0,textString.length-1);
	              document.getElementById("spnJobNumber").innerText = textString;
	              if(textString.length != 0)
	              {
	                getJobName(0,textString);
	              }
	              else
	              {
	                document.getElementById("spnJobName").innerText = "";
	              }
	            }
	            else if(textString.length <= 9 && objValue != ".") //If the number is not grater then 10 or not a .
              {
                textString = textString + objValue;
                document.getElementById("spnJobNumber").innerText = textString;
                getJobName(0,textString);
              }
              if(textString.length > 0)
              {
                document.getElementById("chkJobTransfer").disabled = false;
              }
              else
              {
                document.getElementById("chkJobTransfer").checked = false;
                document.getElementById("chkJobTransfer").disabled = true;
              }
              document.getElementById("spnTipAmount").innerText = "";
              document.getElementById("spnDepartmentNumber").innerText = "";
              document.getElementById("chkDepartmentTransfer").checked = false;
              document.getElementById("trDepartmentTransfer").style.display = "none";
              document.getElementById("trDepartmentOverride").style.display = "none";
              document.getElementById("spnDepartmentName").innerText = "";
            }
	          break;
	        case 4:
	          textString = document.getElementById("spnTaskNumber").innerText;
	          textString = textString.replace(" ","");
	          var addKey = true; 
	          if(objValue == 0 && textString.length == 0)
	          {
	            addKey = false;
	          }
	          if(addKey){
              if(objValue == "Clear")
	            {
	              textString = textString.substring(0,textString.length-1);
	              document.getElementById("spnTaskNumber").innerText = textString;
	              if(textString.length != 0)
	              {
	                getTaskName(0,textString);
	              }
	              else
	              {
	                document.getElementById("spnTaskName").innerText = "";
	              }
	            }
	            else if(textString.length <= 9 && objValue != ".")
              {
                textString = textString + objValue;
                document.getElementById("spnTaskNumber").innerText = textString;
                getTaskName(0,textString);
              }
            }
	          break;
	        case 5:
	          textString = document.getElementById("spnQtyAmount").innerText;
	          textString = textString.replace(" ","");
	          var addKey = true; 
	          if(objValue == 0 && textString.length == 0)
	          {
	            addKey = false;
	          }
	          if(addKey){
	            if(objValue == "Clear")
	            {
	              textString = textString.substring(0,textString.length-1);
	              document.getElementById("spnQtyAmount").innerText = textString;
	            }
	            else if(textString.length <= 9)
	            {
	              textString = textString + objValue;
	              document.getElementById("spnQtyAmount").innerText = textString;
	            }
	          }
	          break;
	        case 6:
	          textString = document.getElementById("spnDepartmentNumber").innerText;
	          textString = textString.replace(" ","");
	          var addKey = true; 
	          if(objValue == 0 && textString.length == 0)
	          {
	            addKey = false;
	          }
	          if(addKey){
              if(objValue == "Clear")
	            {
	              textString = textString.substring(0,textString.length-1);
	              document.getElementById("spnDepartmentNumber").innerText = textString;
	              if(textString.length != 0)
	              {
	                getDepartmentName(0,textString);
    			
	              }
	              else
	              {
	                document.getElementById("spnDepartmentName").innerText = "";
	                
	              }
	            }
	            else if(textString.length <= 9 && objValue != ".")
              {
                textString = textString + objValue;
                document.getElementById("spnDepartmentNumber").innerText = textString;
                getDepartmentName(0,textString);
              }
              if(textString.length > 0)
              {
                document.getElementById("chkDepartmentTransfer").disabled = false;
                document.getElementById("chkDepartmentOverride").checked = true;
              }
              else
              {
                document.getElementById("chkDepartmentTransfer").checked = false;
                document.getElementById("chkDepartmentTransfer").disabled = true;
                document.getElementById("chkDepartmentOverride").checked = false;
              }
              document.getElementById("spnTipAmount").innerText = "";
              document.getElementById("spnJobName").innerText = "";
	            document.getElementById("spnTaskName").innerText = "";
	            document.getElementById("spnJobNumber").innerText = "";
	            document.getElementById("spnTaskNumber").innerText = "";
	            document.getElementById("spnQtyAmount").innerText = "";
              document.getElementById("chkJobTransfer").checked = false;
              document.getElementById("trJobTransfer").style.display = "none";
              document.getElementById("trTaskNumber").style.display = "none";
	            document.getElementById("trQtyAmount").style.display = "none";
	          }
	          break;
	        default:
    	      
	          break;
	      }
	    }
	    else
	    {
	      CreateStatus();
	      var punchTime = document.getElementById("punchTime").value;
	      var punchDate = document.getElementById("punchDate").value;
	      var cardNumber = document.getElementById("spnCardNumber").innerText;
	      var tipAmount = document.getElementById("spnTipAmount").innerText;
	      var jobNumber = document.getElementById("spnJobNumber").innerText;
	      var jobTransfer = document.getElementById("chkJobTransfer").checked;
	      var taskNumber = document.getElementById("spnTaskNumber").innerText;
	      var qtyAmount = document.getElementById("spnQtyAmount").innerText;
	      var departmentNumber = document.getElementById("spnDepartmentNumber").innerText;
	      var departmentTransfer = document.getElementById("chkDepartmentTransfer").checked;
	      var inOut;
	      var lunchBreak;
	      var packet;
	      var clockID = 0;
	      var submitPunch = true;
	      if(cardNumber == "")
	      {
	        submitPunch = false;
	      }
	      if(document.getElementsByName("inOut")[0].checked)
	      {
	        inOut = "I";
	      }
	      else if(document.getElementsByName("inOut")[1].checked)
	      {
	        inOut = "O";
	      }
	      else
	      {
	        inOut = "?";
	      }
	      if(document.getElementsByName("lunchBreak")[0].checked)
	      {
	        lunchBreak = "L";
	      }
	      else if(document.getElementsByName("lunchBreak")[1].checked)
	      {
	        lunchBreak = "B";
	      }
	      else
	      {
	        lunchBreak = "?";
	      }
	      if(submitPunch)
	      {
	        if(jobNumber != "")
	        {
	          if(jobTransfer)
	          {
	            inOut = "I";
	          }
	          if(qtyAmount == "")
	          {
	            qtyAmount = 0;
	          }
	          if(taskNumber == "")
	          {
	            taskNumber = 0;
	          }
	          packet = "<!--Job="+clockID+","+cardNumber+","+punchDate+","+punchTime+","+jobNumber+","+qtyAmount+","+taskNumber+",0,"+inOut+"-->";
	        }
	        else if(tipAmount != "")
	        {
	          packet = "<!--Tips="+clockID+","+cardNumber+","+punchDate+","+punchTime+","+tipAmount+"-->";
	        }
	        else
	        {
	          if(departmentNumber != "")
	          {
	            if(departmentTransfer)
	            {
	              packet = "<!--Swipe="+clockID+","+cardNumber+","+punchDate+","+punchTime+","+inOut+","+lunchBreak+"-->"
	              packet = packet + "<!--DeptOverride="+clockID+","+cardNumber+","+punchDate+","+punchTime+","+departmentNumber+"-->"
	            }
	            else
	            {
	              packet = "<!--DeptTransfer="+clockID+","+cardNumber+","+punchDate+","+punchTime+","+departmentNumber+"-->"
	            }
	          }
	          else
	          {
	            packet = "<!--Swipe="+clockID+","+cardNumber+","+punchDate+","+punchTime+","+inOut+","+lunchBreak+"-->"
	          }
	        }
	        packet = "<!--0-->"+packet;
	        submitPacket(0,packet);
	      }
	      else
	      {
	        alert("You must enter a card number.");
	      }
	    }
	  }
  }
  //===============================================================================================================================
  function chkTransfer(chkObj)
  {
    if(chkObj.checked)
    {
      document.getElementById("inOut1").checked = false;
      document.getElementById("inOut2").checked = false;
      document.getElementById("inOut1").disabled = true;
      document.getElementById("inOut2").disabled = true;
      document.getElementById("lunchBreak1").checked = false;
      document.getElementById("lunchBreak2").checked = false;
      document.getElementById("lunchBreak3").checked = false;
      document.getElementById("lunchBreak1").disabled = true;
      document.getElementById("lunchBreak2").disabled = true;
      document.getElementById("lunchBreak3").disabled = true;
    }
    else
    {
      document.getElementById("inOut1").disabled = false;
      document.getElementById("inOut2").disabled = false;
      if(chkObj.id == "chkDepartmentTransfer")
      {
        document.getElementById("lunchBreak1").disabled = false;
        document.getElementById("lunchBreak2").disabled = false;
        document.getElementById("lunchBreak3").disabled = false;
      }
    }
  }
  //===============================================================================================================================
  function chkState(stateID){
    textString = document.getElementById("spnCardNumber").innerText;
        if(textString.length == 0)
        {
          changePageState(1);
          document.getElementById("trCardNumber").style.backgroundColor = selectedColor;
          document.getElementById("trQtyAmount").style.backgroundColor = baseColor;
          document.getElementById("trTipAmount").style.backgroundColor = baseColor;
          document.getElementById("trJobNumber").style.backgroundColor = baseColor;
          document.getElementById("trTaskNumber").style.backgroundColor = baseColor;
          document.getElementById("trDepartmentNumber").style.backgroundColor = baseColor;
        }else{
	    changePageState(stateID);
        }
  }
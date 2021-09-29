<%@ LANGUAGE = VBScript.Encode %>
<!-- #include Virtual="/qqest/include/settings.asp"-->
<!--#include virtual="/qqest/styles/nav/header.asp"-->
<!--#include virtual="/qqest/styles/nav/footer.asp"-->
<!-- #INCLUDE Virtual="qqest/Time/payperiod_inc.asp"-->
<!-- #INCLUDE Virtual="qqest/Time/processall_inc.asp"-->
<!-- #INCLUDE Virtual="qqest/NetClock/processNetClock_Inc.asp"-->


<script language=javascript>
	function ChangeEmployee(CardNumber){
		location.href='Timeclock_Executive.asp?SelectedEmp='+CardNumber;
	}
  function checkForm(){
    if (document.ExecutiveClient.Employee.value == 0){
        alert ("You must select an employee")
        return false;
    }
    
    return true;
  }
</script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Time Clock</TITLE>
<!-- #INCLUDE Virtual="qqest/NetClock/serverclock.asp"-->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></HEAD>
<%#@~^oQkAAA==@#@&@#@&&0,ojk+MPXa+(f,'~*,KtU@#@&d?bh2VCl[+.cr1nY,/VKmVE*@#@&7$KNz`*@#@&doKWD+D,FB~!,@#@&2^/n@#@&dIdwKx/ ]+9kM+^Y~crz5;dYJVGLbxzsGTkURmdagC1YbWx{/^EMkOXr#7@#@&2x9~q6@#@&@#@&oE	mDkGx~8KNz`*@#@&i?Ara+HndklL+{Er@#@&i?Skw'rE@#@&dnDMW.~{PJr@#@&i@#@&id/lMNgWxIn5!+dYcWWM:cEA:wsGH+nJ*@#@&dr6PkZlMNgG'rJ~Y4+U~kZlM[1K'JZE@#@&iZmD[1G~{PdZm.NgW@#@&i@#@&7r6P/lM[gW@!8PDt+	@#@&7dkZCD91Gx"+;!n/DRp!n.XUYMkUocEU+s+1O+92h2r#@#@&7ikWPk/mD[gW,'PrJ,Otx~/;l.[gW'rTJ@#@&di/CD91KPxPd/mD[1K@#@&i+U[,k0@#@&i@#@&dbW,ZCMNgWP@*PZ~Y4+U@#@&d77id?OPM/2s2sWH+PxP^U	HCk	 2X+^;D+`EjVnmD~:2^WH++|k9~sMWhP:2\mkx,	CAI2,^G:al	Xmk[~{PE[T/WswCUHqf'E,bHf,C1Yr7+|Xx{F,)1GP^lMNU;s4+MxJ,[P;C.NgW*@#@&d77idr0,HWDP.dA:wsGH+nRAG6PO4+	@#@&idi7di2hw&N~x,D/Ahw^WXn 0b+^Nd`EnswsWHn+|k[E*@#@&77id7+	[,kW@#@&iddidUnY,Dd2swsGH++,xPgWY4rUo@#@&i+UN~r6@#@&d@#@&dkfn2D1Wx];;+kOc0GM:vJfwm.Ys+UYr#@#@&ik0,dfwYgGxJrPDtnx~dG+2YgG'r!E@#@&dfn2D1G'1s	ockfwYgW*@#@&i@#@&dkfn2DKXan'"+;!ndYc0KDh`E9wCDDh+	YPza+Jb@#@&dr0,dG+2DKHw+{Jr~Y4+UPkfn2DKXan'r!J@#@&7fwDKzwnx1VUovdfwOPHw+b@#@&d@#@&ir6P];!+/DR6GDs`E?Sk2nr#'rKE	mt,(UJ,Y4+U@#@&7i?AkanP{P)OD+x[C	mnnm^0+Ok`8~ZmD9HWBfnwD1GSG+wDPXa+~r(E~rgr~PD;n*@#@&dijhbwn\//CLPxPrK!x^4+9Pq	J@#@&dx[Pb0@#@&ik0,]+$E+kO 0KDs`E?Ara+E#{En!x^4,rEOE,Y4+	@#@&d7Uhbw+,',)YD+UNmx^nhlm0nYk`FB/CD91K~9+2OgWSf2Y:X2nBJrESrgE~:.!+b@#@&id?SkanH/dlT+~x,Jn!Um4+N,6;Yr@#@&dnx[~b0@#@&ir0,In5!+/O 6W.:vEUhra+r#'r?DCDDP$DlVE,YtU@#@&ddUArwP{P)YOn	NCx1nnmmVnD/`qS;l.NgGBfnaYgW~G+aOKHwn~rrESrAJBPD!+#@#@&7dUhbwnHndklL+,xPrA.nm3PjOmDO+9E@#@&7x9Pk6@#@&7k6P]+$EndDR0K.:vJ?Sr2+r#{J3x[~~Dnl0EPDtnU@#@&d7jSk2+,x,bOD+	Nl	mKl13nYk`qS;lD9HWBf+aOHWBfwOKz2~EqrSJ~JSPME+b@#@&d7?Sra+\/kloP{~J~Dnl0P3U9+Nr@#@&i+x9~r0@#@&ikWP]n$En/D 0KDhcr?hr2Jb'rjDl.DPdEx1tr~Y4+U@#@&d7jSkw~',bYDnUNmx1+Kl^VYd`8SZmD[HK~fn2D1G~GnaYPHw~J}JBESr~PD!+b@#@&ddUAka+HddlT+,'~JJ;	m4PUOlMYn[r@#@&7n	N~k6@#@&dr6P"+;!+kOR6W.:vJjAbw+rb'r2x9~JE	m4J~Y4n	@#@&dijhbwn~{PbOOx[l	^nC13Y/vFB/lMNHWBfn2D1WB9+aYKH2n~rqr~ESES:D;+*@#@&idjAbw+\nk/Co~{PEdE	mt,2	[+9J@#@&i+U[,k0@#@&db0PUArw@!@*JEPO4x@#@&i7?Y~GhEx^4`wsWm[,'~U+M\+MR;.+mYnr(Ln^D`Jh;x1tjasGl9R;n;x^4`wsWm[J*@#@&~,PP^CMNnDMGMPx,WhEx1t`2VKl[Rg+O/^Wm03xDDXv/jYM`UhrwnbBPm@#@&7did77idd7~,P~ZdUT`L`/DqG#B~{@#@&7did77iddi~P,PZdUL`TZK:2lUz&fb~,m@#@&d77idd77id~P,~;SUT`Z#~,{@#@&did7did77iPP,~ZUYDvd/W	xmOkGUtlrx*b@#@&d7@#@&dP~./2W	dR	MkD+`r@!k^DbwOP^lUL!loxLm\lk^.kaY@*Jb@#@&7iDn/aGxk+ 	MkYncrls+MOvBELmmDNDMGDLJv#r#@#@&idDdwKx/ 	DbY`E@!&d1DrwD@*J*@#@&7xN~r6@#@&dbbQCAA==^#~@%>
<body bgcolor=dedede leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="StartClock()">
	<Center>
	<table border=0 cellpadding=0 cellspacing=0>
		<tr>
			<td>
				
<form name = ExecutiveClient method=post action="Timeclock_Executive.asp?SelectedEmp=<%=#@~^BgAAAA==/mD[gWNwIAAA==^#~@%>" onsubmit="return checkForm();">
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td background="/qqest/Images/t-force_netclock.jpg" width="647" height="40" align=right style="background-repeat:no-repeat"><a href="/qqest/Login/Logout.asp"><img src='/qqest/images/buttons/LogOut.gif' border=0></a>&nbsp;</td>
    </tr>
  </table>
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr> 
      <td width="54%"><table bgcolor=dedede border=0 cellpadding=1 cellspacing=0 width=420 ID="Table1">
          <tr> 
            <td align=left class=headerRow><font color=<%=#@~^EwAAAA==L:l8^+_+l9KaY;WsWMZQcAAA==^#~@%>><b> 
              Executive Client </b></font></td>
            <td align=right class=headerRow><font color=<%=#@~^EwAAAA==L:l8^+_+l9KaY;WsWMZQcAAA==^#~@%>><b> 
              <span id="ClockLine"></span> 
              <script language=javascript>
									UpdateTimeClockDisplay();
								</script>
              </b></font></td>
          </tr>
          <tr> 
            <td align=right height=30 colspan=2></td>
          </tr>
          <tr> 
            <td align=right class=tablehead> <%=#@~^FgAAAA==!YFXSWD9`TV2swsWH+nbaAgAAA==^#~@%>&nbsp; </td>
            <td align=left> <select name=Employee style="width=200"  onchange=ChangeEmployee(this.value)>
              <option value=0>-- Choose an <%=#@~^FgAAAA==!YFXSWD9`TV2swsWH+nbaAgAAA==^#~@%> --</option>
                <%#@~^igMAAA==@#@&d7ididdidij+DP./A:2sKX+~',mx	\Ck	RA6nm;O`E?s+1Y~nswVGz+mk9S1l.9x!:4DBslkYUls+SWbD/DUls+~sr[N^+	lh+~oMWhPhwtlrU,C3]AP^Ws2mxz|k9P',JLLZK:2l	X(9LJPzHf,lmDr-+|X	'qP)HGP^lM[x!:8nM@*!~6"f3I,$IPsm/Dxls+BWkM/Oxm:nSskN9s+	l:Eb@#@&did7d77id7fK~4ksn,1WO~M/3:asKXnRAW0@#@&i7did7did77b0P194^`Dk3hw^WH+nRorV[/vEmmD[U!:4n.r#bP{~1f8^`;lD91KbPDtnx@#@&77iddi7diddi.n/aW	/nRA.bYn`r@!WaYrG	P/nsmO+9~7ls!+,'Pr[Md2swsWH+n 6k+^[/vJmm.[x!:(+.Jb'r@*E[Md2swsGH++ Wb+sNkcrVCkY	l:J*'JBPE[M/3haVWHn+c0ks[/vJ6k./OUm:nJ*'J,J'.k2:2sKXn+cWb+s9/vJ:bN9s+	lh+r#'E@!zWaOkKx@*rb@#@&idid7d77id7+^d+@#@&77idd77id7di./2Kxk+RSDbO+vJ@!WaYrG	P\msEP',E'Dk2swsWznRWksNk`E^mDNU;s4nDrbLJ@*r[M/2sw^GX+ 0b+s[k`J^C/DxlsnE#LJBPE[.dA:2VKz+RWrVNdcr0rDkO	lhJ*[J,JL./A:2VKXnnc0ksNk`Jsr[N^+	lh+EbLJ@!zK2YbWU@*r#@#@&7id7di7id7i+	NPb0@#@&did7did77idDk3:aVWHnnRsW7+U+aO@#@&7di7did77iSWG2@#@&7di7id7idi?+DPMd2swsWH+n~{P1KOtbxo@#@&7didid7d774QUBAA==^#~@%>
              </select> <font color=<%=#@~^EwAAAA==L_kL4VbotDKaY;WsWMowcAAA==^#~@%>><b>*</b></font></td>
          </tr>
          <tr> 
            <td align="right" class=tablehead> <%=#@~^GAAAAA==!YFXSWD9`TVfwCDD:nUD#PAkAAA==^#~@%>&nbsp; </td>
            <td> <select name=Department style="width=200">
              <option value=0>-- Choose a <%=#@~^GAAAAA==!YFXSWD9`TVfwCDD:nUD#PAkAAA==^#~@%> --</option>
                <%#@~^FAMAAA==@#@&d7ididdidij+DP./G+2CMY:UY,'P1UUHmk	R36n^!Yn`rj+^+^O,N+2CMYh+	O	Eh(+M~Nwm.Ys+UY	lhn,sDKhPD4VGn2lMYs+UY~	_2]2,CmDk-n|Xx~x,F~bg9,Y8^fwlMYsnxDR^WswCUH{k9~',J[T/G:al	X(f'E,bHf,[+al.Os+xOU!:8+M@*ZP6"fAIP~5,[+al.Ys+UO	l:E#@#@&di77didid7fG~qtrV~1KY~.kf+2CMYh+	Oc2G6@#@&ddidi7did7db0~.kf+aCDD:+	O sb+^Nd`E[wCDDh+	YU;s4+.E*'9+aOgW~Dtx@#@&di7did7did77M+/aGxk+RS.rY`r@!GwOrKx~/s+1Yn[,\ls;PxPr'M/9wmDYs+	OR6knV9/cE9+wm.Ys+xDU;:(+MJb[E@*r[./GnwmDOhxY Wb+sNkcrNnalMY:xDUls+E#LJ@!&KwYbGx@*J#@#@&7didid7d77i+s/@#@&id77idd77id7DdaWUk+chDbYcJ@!W2YbWU~7lV!nP{PJL.dfwmDO:nUDRWksNk`E[wl.Os+UY	;s4nMJ*[J@*JL./G+2lMYhn	YR6r+^N/vE[+alMYh+UO	lh+rb[r@!&GaYkGU@*Jb@#@&7id7ididdidUN,kW@#@&d77iddi7didDk9nwmDD:nxO sW-+	n6D@#@&7idd77id7ddGKw@#@&diddidi7di?nY,Dd9wlMO:xY,x~1KY4kUo@#@&id7di7did7keMAAA==^#~@%>
              </select> <br> </td>
          </tr>
          <tr> 
            <td align="right" class=tablehead> Punch Type&nbsp; </td>
            <td> <select name=DepartmentType style="width=200" ID="Select3">
                <%#@~^EgAAAA==r6P9wDKXa+{TPDtnxWgYAAA==^#~@%>
                <Option value="0" selected>Normal</Option>
                <%#@~^BAAAAA==n^/nqQEAAA==^#~@%>
                <option value="0">Normal</option>
                <%#@~^BgAAAA==n	N~b0JgIAAA==^#~@%>
                <%#@~^EgAAAA==r6P9wDKXa+{qPDtnxWwYAAA==^#~@%>
                <Option value="1" selected><%=#@~^GAAAAA==!YFXSWD9`TVfwCDD:nUD#PAkAAA==^#~@%> Override</Option>
                <%#@~^BAAAAA==n^/nqQEAAA==^#~@%>
                <option value="1"><%=#@~^GAAAAA==!YFXSWD9`TVfwCDD:nUD#PAkAAA==^#~@%> Override</option>
                <%#@~^BgAAAA==n	N~b0JgIAAA==^#~@%>
                <%#@~^EgAAAA==r6P9wDKXa+{+PDtnxXAYAAA==^#~@%>
                <Option value="2" selected><%=#@~^GAAAAA==!YFXSWD9`TVfwCDD:nUD#PAkAAA==^#~@%> Transfer</Option>
                <%#@~^BAAAAA==n^/nqQEAAA==^#~@%>
                <option value="2"><%=#@~^GAAAAA==!YFXSWD9`TVfwCDD:nUD#PAkAAA==^#~@%> Transfer</option>
                <%#@~^BgAAAA==n	N~b0JgIAAA==^#~@%>
              </select> </td>
          </tr>
          <tr> 
            <td colspan="2"> <table border=0 cellpadding=5 cellspacing=1 width=100% ID="Table2">
                <tr> 
                  <td align=center> <b>Day</b> </td>
                  <td align=center> <b>Break</b> </td>
                  <td align=center> <b>Lunch</b> </td>
                </tr>
                <tr> 
                  <td align=center> <input type = submit name = "Swipe" value = "Punch In" class=submitsmallstyle> 
                    <br> <input type = submit name = "Swipe" value = "Punch Out" class=submitsmallstyle> 
                  </td>
                  <td align=center> <input type = submit name = "Swipe" value = "Start Break" class=submitsmallstyle ID="Submit2"> 
                    <br> <input type = submit name = "Swipe" value = "End Break" class=submitsmallstyle ID="Submit1"> 
                  </td>
                  <td align=center> <input type = submit name = "Swipe" value = "Start Lunch" class=submitsmallstyle ID="Submit4"> 
                    <br> <input type = submit name = "Swipe" value = "End Lunch" class=submitsmallstyle ID="Submit3"> 
                  </td>
                </tr>
                <%#@~^GAAAAA==r6PLxW(KDmm0rxTPxP8PO4xIQgAAA==^#~@%>
                <tr> 
                  <td colspan=3 align=center> <a href="Timeclock_ExecutiveJT.asp?SelectedEmp=<%=#@~^BgAAAA==/mD[gWNwIAAA==^#~@%>"> 
                    <%=#@~^GQAAAA==!YFXSWD9`TV9K4PDmmVr	o#dgkAAA==^#~@%> Entries </a> </td>
                </tr>
                <%#@~^BgAAAA==3	N~b0BgIAAA==^#~@%>
              </table></td>
          </tr>
          <tr> 
            <td bgcolor=white colspan=2 height=2> </td>
          </tr>
          <tr> 
            <td align=center colspan=2 class=headerRow><font color=<%=#@~^EwAAAA==L:l8^+_+l9KaY;WsWMZQcAAA==^#~@%>><b> 
              Today's Punches </b></font></td>
          </tr>
        </table>
        <table border = 0 cellpadding=0 cellspacing=0 height=100% width=421>
          <tr> 
            <td valign=top width=421> <table border = 0 cellpadding = 0 cellspacing = 1 width=420>
                <tr > 
                  <td valign = top > <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b>Punch</b></font> </td>
                  <td valign = top align = left  > <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b>In/Out</b></font> </td>
                  <td valign = top align = left  > <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b><%=#@~^GAAAAA==!YFXSWD9`TVfwCDD:nUD#PAkAAA==^#~@%></b></font> </td>
                </tr>
                <%#@~^sgQAAA==@#@&d7ididdidij+DP./hEU^4+/,xP1xxtCrxc2X+^EOnvJj+^nmDPAGM3kULaEUm4mD/SbxKEY	lsn~:2VKXnn|kNBOks+K.Vk	ohEUm4 mmOk7n{HxS[wl.Os+UY	Cs+SbxaEx1t|[Y,J'{,@#@&7iddi7diddro]rtPDkh+	GM3rxTKE	m4~r[{~@#@&d7di7id7idrq1g2"~9}qHPbN(U}EY,61,Yksn	WM3bxLn;U1t k	GED{r[{kN(U}EORbUKEO|k9PJL{,@#@&id7did77idJd3s:Pr`P3I,9}qHPO8^fnwm.Ys+UO,r1~Ob:nK.0kUTn!xm4R9nwmDO:xOmbN'D8VG+wm.O:xDR[+2CMYh+	O{bN~EL{P@#@&id7di7id7iJqC2"2,rxaEUm4{[O,'PEE[9lYcb[rB,bHf~nswsWHn+|k[~@!@*PT~z19PhaVGH+{k9P{~Br[n:ak['rBPr'{,@#@&i77didid7dE)gf~Ybh+qW.VbxoK;	m4Rm^Dk-{HxP{P8~bgf~wMW^nk/+9mX	P',q~r"fAI~Ae~Dkh+qGD0kULhEx^4cl^Yb-{z	PG2?;~SGD0kUoaEU^4{YkSYb:+SG.3bxTw;x^4ckUW!O{bN~9A?ZEb@#@&7di7id7idifr,_(SAPHr:P.dhEx14+kR2}o@#@&idid7d77id7IdwKxdnchDrO`E@!D.,4L1W^WD{N1[m9m@*J*@#@&7iddi7diddi]n/aW	/nRA.bYn`r@!Y9P^sm//xOm4s+1n^V~@*JLsWM:mOfmYnKb:ncM/n!Um4+/cWr+^Nk`EhG.0kUoa;x1tmOkJ#S**[E@!JO9@*E*@#@&ddidi7did7d"+d2Kx/ hMkYcE@!DN,msldd{YC4^nmVs~@*J[.dhEUm4nkRWb+^N/vJbUW!YUls+EbLJ@!JON@*J#@#@&7didid7d77iIn/aGxk+ AMkYncr@!ON,^^ldk'Dl4^+1nV^P@*JLDdK!xm4n/c0ks[/vJ9+2l.Os+UY	C:Jb'r@!zO[@*Jb@#@&7id7ididdid"n/aWU/RA.bY+vE@!JYD@*Eb@#@&did7d77id7dMdn!x^4/RhG7+U+XO@#@&7ididdidi7S}rK@#@&d77iddi7di?+D~./hE	m4+d~{PUWD4k	o@#@&idd77id7dil1QBAA==^#~@%>
              </table></td>
          </tr>
        </table>
        <%#@~^xgAAAA==@#@&d7Ek6P?SkanH/dlT+@!@*rJPD4+	@#@&i77BM+kwGxdnc.kDn`r@!d^MkwO~^lUo!CT+xNl7l/1Db2Y@*Jb@#@&d77ED+k2W	/+c	.kD+vJ7lsnMYcJrE[Uhr2H+ddmon[rEr#E*@#@&ddiBMn/aWU/R	.bY+vE@!J/mMr2Y@*J*@#@&d7vx[PbW@#@&dbTUAAA==^#~@%> </td>
      <td width="46%" valign="top"><table border=0 cellpadding=1 cellspacing=0 height=100%>
          <tr> 
            <td>&nbsp; </td>
            <td align=center width=218 colspan=2 class=headerRow><font color=<%=#@~^EwAAAA==L:l8^+_+l9KaY;WsWMZQcAAA==^#~@%>><b> 
              Who's In </b></font></td>
          </tr>
        </table>
        <table width="200" border=0 cellpadding=0 cellspacing=0>
          <tr > 
            <td valign=top> <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b>&nbsp;Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></font>
            </td>
            <td valign=top align=left> <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b>In/Out</b></font> </td>
          </tr>
          <tr> 
            <td colspan=2 class=tablecell> <iframe src="TimeClock_Exec_WhoIn.asp" width=240 height=380 marginheight=0 marginwidth=0 frameBorder=0></iframe> 
            </td>
          </tr>
        </table></td>
    </tr>
  </table>
  </form>
			</td>
			
<td>&nbsp; </td>				
		</tr>
</table> 
</body>
	</html>
	<%#@~^FAAAAA==@#@&2U9PwEx1YbGx@#@&qwQAAA==^#~@%>


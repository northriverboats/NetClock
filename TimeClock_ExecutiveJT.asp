<%@ LANGUAGE = VBScript.Encode %>
<!-- #include Virtual="/qqest/include/settings.asp"-->
<!--#include virtual="/qqest/styles/nav/header.asp"-->
<!--#include virtual="/qqest/styles/nav/footer.asp"-->
<!-- #INCLUDE Virtual="qqest/Time/payperiod_inc.asp"-->
<!-- #INCLUDE Virtual="qqest/Time/processall_inc.asp"-->
<!-- #INCLUDE Virtual="qqest/NetClock/processNetClock_Inc.asp"-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Time Clock</TITLE>
<!-- #INCLUDE Virtual="qqest/NetClock/serverclock.asp"-->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></HEAD>
<%#@~^3wkAAA==@#@&frsP,4b^VKA.b+A@#@&4)s^Whjr+SP',oCVk+@#@&(0~L`/nD:zwq9~{Pc~P4+U@#@&7(bs^WS.kh,xP:D;+@#@&3U9Pq6@#@&&0P()sVKhjknh~P4+U@#@&7?b:2sC+C[DcJgnDP/^W13J*@#@&7AKNz`*@#@&7wWWDnD,F~,T~@#@&2^/n@#@&7"+dwKU/R]n9kDn^DPcJJ5$+dDz^WobxJsWTkURm/2_mmYbGx{/+1;.kDXr#7@#@&3	N~q6@#@&@#@&o;	mYrG	P8W9zv#@#@&dUhka+tn/klL+{JE@#@&d?Srw'Jr@#@&dDMW.'EE@#@&7@#@&7/;l.[gW']n$En/D 6W.s`r2:aVKz+Jb@#@&drW,/Zm.NgW'rE~Y4+	PdZC.91G'rTJ@#@&7/mDNHG{msxTckZCMNgW#@#@&@#@&db0~ZmD[HK@!F,Otx@#@&77/;lMNHWx];;+kOR5En.H?Y.r	ocJUn^+^D+92:aJ*@#@&idr0,//CMN1KxJrPY4nUPkZmD[1Gxr!E@#@&7d;l.[gW'^s	oc/;CMNHK#@#@&dx9~k6@#@&@#@&drW,ZlM[1K@*!,O4+	@#@&d7?nO,Dd2s2VKXnn,'P^U	HCk	 A6n1ED+`r?s+1Y~+swsGH++|rN,sDKh~+swtlrx~	_2]2,^WswCUH{k[~{PE[T/K:2mxHqfLJ,)1GPCmDk-n|Xx{qPz1f,^CD9x!:8+.xrP'P;CD91Gb@#@&d7r6PHWD~M/3sw^WX+c3W6POtx@#@&iddAhw&NP{~./A:aVGXnnc0r+^[/vJnhaVWzn{rNrb@#@&7i+	NPb0@#@&di?nY,Dd3swVKz+P',HGY4k	o@#@&7n	N~k6@#@&i@#@&7k9W8HK']+$;/Oc0KD:vJxG4r#@#@&ikW~k9W(HW{JJ,O4+	Pk9G4HG{JTJ@#@&dxW8HK'msUT`d9K8gWb@#@&i@#@&ik6~9K4HW@!F~O4+x@#@&di/9K8HW{I;;+dOcp;+Mz?DDrUT`Jjn^+^Y[xW8r#@#@&dik6~/xW81K'EE,YtUPk9W(HG'r!r@#@&d7BK4HW{^V	ocdxW4HG*@#@&dU9Pr6@#@&@#@&i9K8qG'T@#@&drW,9W(HW@*!PD4nx@#@&idj+O~M/BW(~',mUUtlkU A6nm!O`EU+^+mDPNG4|k[PwDGh,9W(~_2IA~^Wswmxz{r[,'~JLLZK:2C	Xq9'rP)1G~NW8	Es4+M'r~[,9G4gWb@#@&ddbWPgWY,.d9K4c2G0~O4+U@#@&7di9G8&NPx~M/BW( 6kn^Nk`JNW(mk9Jb@#@&d7n	NPbW@#@&ddUnOPM/xW8Px~gWOtbUo@#@&7n	NPrW@#@&7@#@&7xW85YH'I;!n/DRWWM:cExW45OXr#@#@&7r0,9K4}YzxrJ~Y4nx,9G85YXxEZJ@#@&@#@&i/Pm/01W{I5E/OR6W.hvJKmd3r#@#@&7r0,/:ld3HG{JEPD4+	PdPm/3HG{JTJ@#@&iKCk3gW'1V	L`kKC/01Gb@#@&@#@&7Km/35Oz'"+$En/O 6W.:vEKm/V}DXJb@#@&dr0,Pm/V5YH'JrPD4+	PPlk3}OH'JZE@#@&d@#@&7r0,I;;+dOc0GDscJUhr2J#xEhEUm4~&xE,Y4+x@#@&i7?Sk2+,'~BK4KMCm0kxTKCm0+D/cFS/mD[1KS9K4HGB9W8}DXSKmd01GBKm/35YHSJ&JSKMEnb@#@&dijhbw+tnd/moPxPEK!x^t[P&xE@#@&d+U[,kW@#@&7b0~"+$E+kYcWWM:cJUhr2J#{En!xm4~6EDJ,Y4+U@#@&d7?SrwPx~xW4P.mmVk	Lhl^0+D/`8~;CD91G~xW8HK~9K8pDX~:Cd3gWBKC/V}DXSJyE~:D;n*@#@&77Uhrw\/dmoP',Jh;x1tnN,r;Or@#@&inx9Pk6@#@&d@#@&ikWPjAbwn@!@*EJ,Y4n	@#@&77U+OPKK!x^4jaVWmN,xPU+.\D /M+lDnr(L+1OcJhE	m4j2sKl[R;KE	m4iaVWC[r#@#@&,~,P^mD9+DMWM~',WKE	m4iaVWm[Rg+Y;sGm02	Y.Xc/UY.`UAka+bS,{@#@&7id7di7id7,P,PZdxTco`/nD&fbS,{@#@&7diddi77diP,P~ZJUT`LZKhwmxz(G#~~m@#@&7di7id7idiPP,P;JxT`T#BPm@#@&ddi7diddi7~P,P;?ODcd;WUx^YbWU\mkxbb@#@&7d@#@&iP~M+kwW	/ MkO+vJ@!d1DkaOP^lxT;Co'Nl-ld^Mk2Y@*E#@#@&77M+/2G	/nRq.bYnvJmV+MYvvJLmCD9+..KD[rv#r#@#@&77D/aWU/n qDrYcJ@!zd^MkwO@*r#@#@&i7M+daW	/+cMrY`EVKmCObWxc4D0'EPr:m^W^3m3X+^EDr\RCdag?nsmO+93swxrPLPZmD9HW,[~JEJb@#@&d+	[Pb0@#@&7@#@&5r4CAA==^#~@%>

	<script language=javascript>
		function ChangeEmployee(CardNumber){
			location.href='Timeclock_ExecutiveJT.asp?SelectedEmp='+CardNumber;
		}
		function ChangeJob(JobNumber){
			location.href='Timeclock_ExecutiveJT.asp?SelectedEmp=<%=#@~^BgAAAA==/mD[gWNwIAAA==^#~@%>&SelectedJob='+JobNumber;
		}
		function chkForm()
		{
			if(document.all.Employee.value == "0")
			{
				alert('You must select an employee.');
				document.all.Employee.focus();
				return false;
			}
			return true;
		}
	</script>
<body bgcolor=dedede leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="StartClock()">

	<Center>
	<table border=0 cellpadding=0 cellspacing=0>
		<tr>
			<td>
				
<form name = ExecutiveClient method=post action="Timeclock_ExecutiveJT.asp?SelectedEmp=<%=#@~^BgAAAA==/mD[gWNwIAAA==^#~@%>&SelectedJob=<%=#@~^BQAAAA==BK4HK2AEAAA==^#~@%>" onsubmit="return chkForm();">
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td background="/qqest/Images/t-force_netclock.jpg" width="647" height="40" align=right style="background-repeat:no-repeat"><a href="/qqest/Login/Logout.asp"><img src='/qqest/images/buttons/LogOut.gif' border=0></a>&nbsp;</td>
    </tr>
  </table>
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr> 
      <td width="42%"><table bgcolor=dedede border=0 cellpadding=1 cellspacing=0 width=420>
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
            <td align="right" class=tablehead> <%=#@~^FgAAAA==!YFXSWD9`TV2swsWH+nbaAgAAA==^#~@%>&nbsp; </td>
            <td align=left> <select name=Employee style="width=200" onchange=ChangeEmployee(this.value)>
                <%#@~^xQQAAA==@#@&d7ididdid9r:,0rDkY(Udk/D@#@&iddi77did6k./O(	Sr/D~',Y.;@#@&77id7di7i?nDPM/2sw^GX+~',mUUtlk	 2X+m!On`r?VnmO~:2VKz+{r[Bml.[	Eh4.BVCkY	l:~6rDkYUls+ShbNN^nxm:+,o.WsP:2HCr	P	CA]2,mGhalxzmbN~',ELo/K:alxHqG'J,bHf,l^Ob\+|zx{FPzH9P1lMNUEh8D@*!,6IG2]~~5PsCkYUlsnB0rM/Dxls+Bhk9Ns+	lhnr#@#@&7diddi77dM+kwGxdnch.kDn`r@!G2DkWU~7lsE~{!@*gW	+PU+^nmD+[@!JW2ObWx@*E#@#@&di77didid9W~	4ks+,HWDP.dA:wsGH+nRAG6@#@&ididdidi7db0~I;;nkYR$;+MX/D.rxT`r?nVn^D+[2s2J*Px~rJPCU9PWkMdDqUdkkYP{PD.EP~Y4+U@#@&ddi7diddi77+swbN~'~.k2hw^GX+ Wb+V[dvJn:asKXn{bNJ*@#@&7did7did77i0kMdY&xSbdOP{P6ls/n@#@&d7di7did77xN~r6@#@&di7id7ididk6P;94^`./A:2sKX+ sb+V9dcJ1lMNUEh8DE#*xZG4sckZl.[gWbPD4x@#@&diddidi7did.+kwGUk+RS.kD+`r@!GwDkKx~/nsmO+9~\mV;n,'PE'M/3:asKXnR6k+^NkcJ1l.N	Eh8DJ*'J@*J[Md3:aVKXn+ Wb+sNkcJ^ldO	l:nE*[E~,ELDdA:aVWH+ 0b+sNk`EWbD/DUls+J*'EPr[M/3:2sKXn+cWkV[dvJ:r[9VnxmhJbLJ@!zWaYbGx@*Jb@#@&d77iddi7di+Vkn@#@&idid7d77id7DdwKxdnchDrO`E@!K2DkG	P7lV!+,xPr[./A:2sKX+ 0b+V9dcJ1lMNUEh8DE#LE@*r[.dA:wsGH+nR6rV[k`rVlkY	C:Jb[r~~ELD/Ahw^WXn 0b+^Nd`EWbDdY	C:Jb'rPJ'.k2hw^GH+nc0b+V9/vE:bN[VxChJ#LE@!JWwDrGx@*J*@#@&d77id7di7dx[~b0@#@&7id7di7id7M/A:w^WHn+c:G\xnaD@#@&i7diddi77SKWa@#@&d77id7di7?Y~.k2:2sKXn+,x,1GDtbxo@#@&i7did7didj1kBAA==^#~@%>
              </select> </td>
          </tr>
          <tr> 
            <td align="right" class=tablehead> <%=#@~^EQAAAA==!YFXSWD9`TV9K4bQwYAAA==^#~@%>&nbsp;<br> </td>
            <td> <select name=Job style="width=200" onchange=ChangeJob(this.value)>
                <%#@~^kgQAAA==@#@&d7ididdidU}S,'~JU2J3;KPG(?:q1;P~LK4|k[~%G(xC:SLK4U;s4+.E,[~{@#@&id7ididdidr~s"r\PxW8E,[P|@#@&iddi77didiJ~u3"2~mKhwmxzmbNPx~rP'PT/K:2mxHqf,[,m@#@&d7did77iddr~bgfP1Ghw^+D+mXU~{PTJ,'P|@#@&7idd77id7dr~z19,`alDxDmk9P(?,16P,1jdJ#rP[,m@#@&idid7d77idEPzHf,bssA:wsGH+n/,x,FE,[,{@#@&di7did7didE~}IPNG4|kN,(HPvJ,[~{@#@&id7di7did7E,?2J3;K~9K8zVsKhmxm/c%W({rNrP'~|@#@&i7diddi77drPwI6H~BK4)V^Ghmx^nkPqHHAI~9}(gPBK4,r1,9K8b^VGhmx^nkRLK8{bNP{~BW(RNW8{r[rP'P|@#@&id77idd77iJ~_3"2~}4N+mDqG~',J~[,+h2bNPL~{@#@&di77didid7J~)gf~r(%+1YPza+q9~{PTPzHGPBK4cmWsw^nY{zx,'~T*JPL~{@#@&di77didid7J~6"f3I,$5,LG8	l:nE@#@&7di7id7idU+Y,DkBW(PxP1xU\mkxc36mEDnc?5S*@#@&d77id7di7fKP	4bV+~HKY~DkBK4 AW6@#@&idi7did7diqW~xW4gGP{P!,P4+	PxW81G~{P./xG4csrn^N/cENW8x!h(+.r#@#@&didi7did7d&0~.k9W( sb+V9dcJNW(x;:8nMJbP{~9K4HG,KtnU@#@&7di7id7ididD/aGxk+ hMkOnvJ@!K2YbWx,-CV!+,'~J'.k9G4cWkV[dvJLG8	Eh4.r#'rPk+VmDnN@*J'Dk9G8c0ksNk`JNG8xm:Jb[E@!JW2YbGx@*Jb@#@&dd77id7di7AVd@#@&ddidi7did7dM+d2Kx/ hMkYcE@!KwDkGx~-mV;+,xPr[.dxW4 Wb+sNkcrLG(x!:4Drb[r@*E[M/BG(R0bnV9/`r%G4	ls+E#'E@!zGwDrW	@*Eb@#@&d77id7di7i2U9P&0@#@&di7did7did.dxW4chW7+xaO@#@&did7d77idJWK2@#@&d77idd77i?nY,.k9G(P{P1KY4rxT@#@&did77iddiYBABAA==^#~@%>
              </select>
              <br> </td>
          </tr>
          <tr> 
            <td align="right" class=tablehead> <%=#@~^EgAAAA==!YFXSWD9`TVKm/V#uwYAAA==^#~@%>&nbsp;<br> 
              <!--Qty-->
            </td>
            <td> <select name=Task style="width=200" ID="Select1">
                <%#@~^LgAAAA==@#@&d7ididdid,~k6PPlk3HG{!PD4+	@#@&i77didid7P~ywYAAA==^#~@%>
                <option selected value="0">No <%=#@~^EgAAAA==!YFXSWD9`TVKm/V#uwYAAA==^#~@%> Selected</option>
                <%#@~^IgAAAA==@#@&d7ididdid,~+^/n@#@&d77iddi7d,P+QIAAA==^#~@%>
                <option value="0">No <%=#@~^EgAAAA==!YFXSWD9`TVKm/V#uwYAAA==^#~@%> Selected</option>
                <%#@~^9gQAAA==@#@&d7ididdid,~+	N~k6@#@&7iddi7didd@#@&7didid7d7~,?}S{Eq6PcjAS2/P,bsV:Ck3d,s"rH,9K8PqC3IAPBG(1Es8+MP',E~[,9K4HW~',J~bg9P1Wh2mxXmr9PxPr~LPL;Wswl	X&9PLPE#,'~qrP[,m@#@&ddi77dididEP$3VqHJ,'P|@#@&7idd77id7dr~U2JAZ:PYm/0Uls+SYm/VU!:4.~Dl/0mrN,s"r\PPCk3~_3IAP^GswlUz|k[P{~rP',o;W:al	zqGP'PrP)HGPYmd3	E:(n.P@*PZP6I93"P$5,Olk3UCs+J~',{@#@&i7id7ididdrPAHfrP'P|@#@&7iddi7diddr~3SU2rP'Pm@#@&d7di7did77rPA3!&1EPL~|@#@&ididdidi7drPj2d2/P,fqUPqgZK,OC/0xm:n~OCk3UEs8+M~OCk3{r[,s]rt~:ld0PqC2"2,^WswCxH{r[,'Pr~[,oZKh2l	X&f~[~E,bHf,Olk3U;s4+.~@*PTPzHGPOm/0{k9P&HPv?3SAZP~}4L^Y&fPw]6H,9K4)VsGSlUmdP&1H3"P96(gPBW(~}1~xW(bV^WSCx1+dRNW8mbNP{~9K4RNG8{bN,u2]3,9G4g;:(+.~{PJ~',9G4gG,[~rPz1f,r(%+1YPXa+(9,'P8bP}IfA]~AIPDld3UCs+EPL~{@#@&77idd77id7J,3gfE@#@&@#@&didi7did7@#@&d77iddi7dU+Y,.dKm/0PxP^U	HCk	 2X+^;D+`j}d#@#@&i7id7ididfKPq4k^+~1KY~.kKlkVRAW0@#@&7didid7d77b0~DkPlk3 ob+V[dvJOlkV	Eh(+MJ#{Ymd3gW~Y4+U@#@&ddi7diddi77D/aWU/n SDrYcJ@!W2ObWx~dVnmDn9P-mV!+P{Pr'DkKC/0RWrVNkcJDl/0U;:(+MJb[E@*r[./:C/0RWrVNdcrYC/0Um:nr#LJ@!JWaOkKx@*J*@#@&7iddi7diddsd+@#@&id7d77id7di.+kwGUk+RA.bYn`r@!KwObW	P\mV!nP{PE[M/PCk3R6r+^N/vEOlk3	Eh4n.r#'J@*E[M/PCk3RWrV[/vEDld0xm:+r#LE@!JW2YbWU@*r#@#@&7diddi77di+	N~kW@#@&d7di7did77M/KCd0RhW7n	+aD@#@&ddidi7didJWKw@#@&iddi7diddUnOPM/:ld3~x,1GY4rxT@#@&7idd77id7pDcBAA==^#~@%>
              </select>
              <br> 
              <!--input type=text name="TaskQty" ID="Text1" size="10"-->
            </td>
          </tr>
          <tr> 
            <td align="right" colspan=2 width = 223 class=tablehead> Qty&nbsp;&nbsp;	
              <input type=text name="JobQty" size=10> </td>
          </tr>
          <tr> 
            <td colspan="2"> <table border=0 cellpadding=4 cellspacing=1 width=100% ID="Table2">
                <tr> 
                  <td align=center class=tablehead> <%=#@~^EQAAAA==!YFXSWD9`TV9K4bQwYAAA==^#~@%>/<%=#@~^EgAAAA==!YFXSWD9`TVKm/V#uwYAAA==^#~@%> </td>
                </tr>
                <tr> 
                  <td align=center> <input type = submit name = "Swipe" value = "Punch In" class=submitsmallstyle>
                    <br> <input type = submit name = "Swipe" value = "Punch Out" class=submitsmallstyle> 
                  </td>
                </tr>
                <tr> 
                  <td align=center> <a href="Timeclock_Executive.asp?SelectedEmp=<%=#@~^BgAAAA==/mD[gWNwIAAA==^#~@%>"> 
                    Time & Attendance Entries </a> </td>
                </tr>
              </table></td>
          </tr>
          <tr> 
            <td> </td>
          </tr>
          <tr> 
            <td bgcolor=white colspan=2 height=2> </td>
          </tr>
          <tr> 
            <td align=center colspan=2 class=headerRow><font color=<%=#@~^EwAAAA==L:l8^+_+l9KaY;WsWMZQcAAA==^#~@%>><b> 
              Today's Punches </b></font></td>
          </tr>
        </table>
        <table border = 0 cellpadding=0 cellspacing=0 height=100%>
          <tr> 
            <td valign=top> <table border = 0 cellpadding = 0 cellspacing = 1 width=420>
                <tr > 
                  <td valign = top> <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b>Punch</b></font> </td>
                  <td valign = top align = left> <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b>In/Out</b></font> </td>
                  <td valign = top align = left> <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b><%=#@~^EQAAAA==!YFXSWD9`TV9K4bQwYAAA==^#~@%></b></font> </td>
                  <td valign = top align = left> <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b><%=#@~^EgAAAA==!YFXSWD9`TVKm/V#uwYAAA==^#~@%></b></font> </td>
                  <td valign = top align = left> <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b>Qty</b></font> </td>
                </tr>
                <%#@~^9QQAAA==@#@&@#@&ididdidi7?Y~Dkn;U1t+k~',mx	\Ck	RA6nm;O`E?s+1Y~AKD3rUTw;x14|YdBk	WEDxmh+B+hw^Wzn{k9Sl1Yk7nmX	~bx2EU^4{[YB%W(xCh~YCd0xC:S$EC	YbYX,s"6H,Yr:G.0kxTKE	mt,(H1AI,96qH~bN(x};Y,rH~Dk:n	KDVk	LhEU1tckxKEDmk9'rN&x6;DRk	GED{k9~J2wK,riK3],96qg~9K4~6gPYrhGD0r	oK!x1tRNW(mk9'BW(R%G({k9~SAsK,6iKAI,96qH~:ld3,61,YrhW.VbxLn!U1t Dlk3{bN{Plk3 Ym/VmbNPqu2"2PbU2E	m4{[Y~x,BE[9CY`b'rBP)HGPn:asKXn{bNP@!@*,TPz19P:2sKX+mk9P',vE[:ak[[Ev,bHf,CmDk-n|Xx~x,F~bg9,w.Km//N|zx,'~F,r]9AIP~ePmmYb-n{Hx,f3?/SSW.3bUoaEU^4{YdSDkh+SGM3r	oaEx1tcrxKEO{bN~9A?Zrb@#@&ddi77didif6P	u&S3Pg6K,DdK!xm4nkR3rw@#@&d7ididdidi]+kwGxk+ AMkYcJ@!YD,8LmKVKDxN^[1N^@*rb@#@&d77idd77id]+k2KxdRSDkD+vE@!DN~m^ldd{Yl(s+1+V^~@*JLsKDhlO9mYnKbh+vDdK!xm4nkRWks9/crhKD3bxT2E	m4{D/EbBc#LE@!JYN@*Eb@#@&did7d77id7IdwKxdnchDrO`E@!D[,msm/k'Ym4^nmVsP@*J'.knE	^t/R6rnV9/vJrxG;DxC:E#LJ@!&DN@*Eb@#@&7di7id7idiI+kwKU/RADbYncr@!Y9~m^l/kxOl(VmnVs~@*J'DkKE	m4nkR0rn^Nd`r%K4Um:J#LJ@!&Y9@*E#@#@&77iddi7didId2W	/RADrO`E@!D[P1VCdk'YC8^+^+^s,@*ELDknE	m4n/c0r+^NdcrYlkVxm:+rb'J@!zDN@*Jb@#@&d7di7did77"+/2G	/nRS.bYnvJ@!YN,m^C/k'Ol(Vn^VV,@*JLD/h;Um4+kRWkns9/cJ$;l	YrOHJ#'E@!zON@*E*@#@&ididdidi7d"+dwKxdnchDbO+vJ@!JO.@*r#@#@&7d77id7di7Dkn;U1t+d sW-+	nXY@#@&diddidi7ddr6n@#@&77iddi7di?+D~./hE	m4+d~{PUWD4k	o@#@&idd77id7dzXYBAA==^#~@%>
              </table></td>
          </tr>
        </table></td>
      <td width="58%" valign="top"><table border=0 cellpadding=1 cellspacing=0 height=100%>
          <tr> 
            <td>&nbsp; </td>
            <td align=center width=218 colspan=2 class=headerRow><font color=<%=#@~^EwAAAA==L:l8^+_+l9KaY;WsWMZQcAAA==^#~@%>><b> 
              Who's In </b></font></td>
          </tr>
        </table>
        <table border=0 cellpadding=0 cellspacing=0>
          <tr> 
            <td valign=top> <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b>&nbsp;Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></font>
            </td>
            <td valign=top align=left> <font color="<%=#@~^DwAAAA==L:l8^+_+l9ZKsWMwAUAAA==^#~@%>"><b>In/Out</b></font> </td>
          </tr>
          <tr> 
            <td colspan=2 class=tablecell> <iframe src="TimeClock_Exec_WhoIn.asp" width=240 height=380 marginheight=0 marginwidth=0 frameBorder=0></iframe> 
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  </form>
			</td>
			
<td>&nbsp; </td>			
		</tr>
</table> 
</body>
	</html>
	<%#@~^FAAAAA==@#@&2HGPwEx1YbGx@#@&awQAAA==^#~@%>


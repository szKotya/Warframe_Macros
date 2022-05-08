#NoEnv
#SingleInstance Force
IfExist, %a_temp%\configskip2.8.ini
{
Iniread, Sest,   %a_temp%\configskip2.8.ini, bind,     KnopkaPrisest,   
Iniread, Combo,  %a_temp%\configskip2.8.ini, Combo,     KnopkaCombo,    
Iniread, Combo1, %a_temp%\configskip2.8.ini, Combo,     KnopkaComboAuto,    
Iniread, Bli,    %a_temp%\configskip2.8.ini, bind,     KnopkaBlijki,    
Iniread, Vkl,    %a_temp%\configskip2.8.ini, bind,     KnopkaVkl/Vikl,  
Iniread, M1ods,  %a_temp%\configskip2.8.ini, settings, MetodRaboti,
Iniread, Chek,  %a_temp%\configskip2.8.ini, settings, Zvyk,
}
else
{
IniWrite, %Sest%,   %a_temp%\configskip2.8.ini, bind, KnopkaPrisest
IniWrite, %Combo%,  %a_temp%\configskip2.8.ini, Combo, KnopkaCombo
IniWrite, %Combo1%, %a_temp%\configskip2.8.ini, Combo, KnopkaComboAuto
IniWrite, %Bli%,    %a_temp%\configskip2.8.ini, bind, KnopkaBlijki
IniWrite, %Vkl%,    %a_temp%\configskip2.8.ini, bind, KnopkaVkl/Vikl
IniWrite, %M1ods%,  %a_temp%\configskip2.8.ini, settings, MetodRaboti
IniWrite, %Chek%,   %a_temp%\configskip2.8.ini, settings, Zvyk
}
goto, start
return

Start:
HotKey, %Sest%, Sest, On, UseErrorLevel
HotKey, %Combo%, Combo, On, UseErrorLevel
HotKey, %Combo1%, Combo1, On, UseErrorLevel
HotKey, %Bli%, Bli, On, UseErrorLevel
HotKey, %Vkl%, Vkl, On, UseErrorLevel

FileInstall, 4.wav, %a_temp%\4.wav
FileInstall, 3.wav, %a_temp%\3.wav
FileInstall, 11.jpg, %a_temp%\11.jpg
FileInstall, 1.wav, %a_temp%\1.wav

_aauto := true
_auto := 1
Gui, Font, S8 CBlack, FANTASY
Gui, Add, Picture, x-8 y-1 w410 h226 , %a_temp%\11.jpg
Gui, Add, Text, x102 y25 w80 h30 +BackgroundTrans, Присесть
Gui, Add, Text, x102 y70 w80 h30 +BackgroundTrans, Кнопка жопоката
Gui, Add, Text, x102 y125 w80 h30 +BackgroundTrans, Кнопка автострельбы
Gui, Add, Text, x302 y25 w80 h30 +BackgroundTrans, Ближка
Gui, Add, Text, x302 y70 w80 h30 +BackgroundTrans, Включить Выключить
Gui, Add, Text, x302 y134 w80 h30 +BackgroundTrans, Включить звук
Gui, Add, Text, x102 y183 w80 h30 +BackgroundTrans, Метод работы
Gui, Font, S8 CBlack, FANTASY
if M1ods=1
Gui, Add, ListBox, x12 y175 w80 h35 vM1ods +AltSubmit, Зажать||Нажать
else
Gui, Add, ListBox, x12 y175 w80 h35 vM1ods +AltSubmit, Зажать|Нажать||
Gui, Font, S8 CBlack, FANTASY
if Chek=1
Gui, Add, ListBox, x212 y124 w80 h35 vChek +AltSubmit, Со звуком||Без звука 
else
Gui, Add, ListBox, x212 y124 w80 h35 vChek +AltSubmit, Со звуком|Без звука|| 
Gui, Font, S8 CBlack, FANTASY
Gui, Add, Hotkey, x12 y19 w40 h30 vSest, %Sest%
Gui, Add, Button, x52 y19 w40 h30 gCtrl, CTRL

Gui, Add, Hotkey, x12 y69 w40 h30 vCombo, %Combo%
Gui, Add, Button, x52 y69 w40 h30 gbkmjopa, БКМ2
Gui, Add, Hotkey, x12 y124 w40 h30 vCombo1, %Combo1%
Gui, Add, Button, x52 y124 w40 h30 gbkmauto, БКМ1

Gui, Add, Hotkey, x212 y19 w80 h30 vBli, %Bli%
Gui, Add, Hotkey, x212 y69 w80 h30 vVkl, %Vkl%
Gui, Add, Button, x300 y175 w80 h35 gOk, Применить значения
Gui, Add, Button, x212 y175 w80 h35 gInfo, Файл настроек
Gui, Show, x676 y379 h225 w399, Жопокат 3000 2.8
Return

bkmjopa:
IniWrite, XButton1,   %a_temp%\configskip2.8.ini, combo, KnopkaCombo
Reload
return
bkmauto:
IniWrite, XButton2,   %a_temp%\configskip2.8.ini, combo, KnopkaComboAuto
Reload
return
ctrl:
IniWrite, CTRL,   %a_temp%\configskip2.8.ini, bind, KnopkaPrisest
Reload
return
Info:
Run, %a_temp%\configskip2.8.ini
return

GuiClose:
ExitApp
return
F11::Reload

OK:
Gui, Submit, NoHide,
HotKey, %Sest%, Sest, On, UseErrorLevel
HotKey, %Combo%, Combo, On, UseErrorLevel
HotKey, %Combo1%, Combo1, On, UseErrorLevel
HotKey, %Bli%, Bli, On, UseErrorLevel
HotKey, %Vkl%, Vkl, On, UseErrorLevel

IniWrite, %Sest%,   %a_temp%\configskip2.8.ini, bind, KnopkaPrisest
IniWrite, %Combo%,  %a_temp%\configskip2.8.ini, Combo, KnopkaCombo
IniWrite, %Combo1%, %a_temp%\configskip2.8.ini, Combo, KnopkaComboAuto
IniWrite, %Bli%,    %a_temp%\configskip2.8.ini, bind, KnopkaBlijki
IniWrite, %Vkl%,    %a_temp%\configskip2.8.ini, bind, KnopkaVkl/Vikl
IniWrite, %M1ods%,  %a_temp%\configskip2.8.ini, settings, MetodRaboti
IniWrite, %Chek%,  %a_temp%\configskip2.8.ini, settings, Zvyk
if Chek = 1
SoundPlay, %a_temp%\1.wav, wait
Return

Vkl:
Suspend
if A_IsSuspended
{
	if Chek = 1
SoundPlay, %a_temp%\3.wav,
}
else
{
	if Chek = 1
SoundPlay, %a_temp%\4.wav,	
}
If SendEactive
{
SetTimer SendE, Off
}

return

combo1:
IfWinActive, Warframe
{
if (_auto=1)
{
	Loop
	{
		if getkeystate(Combo1, "p")
	{
		SetTimer SendE, Off
		Click
	}
	else
		break
}
}
}
return
Combo:
IfWinActive, Warframe
{
if (M1ods = 1) and (_auto=1)
{
Loop
{
if GetKeyState(Combo, "P")
{
SendInput, {sc11 Down}
SendInput, {%Sest% down}
SendInput, {%Bli% down}
sleep, 50
SendInput, {%Bli% up}
SendInput, {%Sest% up}
sleep 350
}
else
{
SendInput, {sc11 up}
break
}
	}
}
else
{
SendEactive := !SendEactive
If SendEactive
{
SendInput, {sc11 Down}
	SetTimer SendE, 10 ;spams every 200ms
}
Else
{
SetTimer SendE, Off
SendInput, {sc11 up}
}
}
}
Return

SendE: ;spams key e
IfWinActive, Warframe
{
SendInput, {%Sest% down}
SendInput, {%Bli% down}
sleep, 50
SendInput, {%Bli% up}
SendInput, {%Sest% up}
sleep 350
}
Return

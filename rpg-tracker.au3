#include <GuiConstantsEx.au3>
#include<File.au3>


Global $krytyk[90]
Global $tak[126]
Global $krytyk1[90]
Global $tak1[126]

Global $dni1
Global $dni2

Global $bn[36]
Global $bn1[36]

Global $data1
Global $data[1]

Global $rund=1

Global $ok2[17]
Global $ok3[17]
Global $ok4[17]
Global $ok5[17]
Global $ok6[17]
Global $ok7[17]
Global $ok8[17]
Global $ok9[17]

GUICreate("",1000,500)
$r=GUICtrlCreateButton("Wyczysc kolumnę",750,100,200,30)
$ra=GUICtrlCreateButton("C",900,130,50,30)
$ri=GUICtrlCreateButton("I",220,300,30,30)
$r2=GUICtrlCreateButton("Wyczysc druzyny",750,180,200,60)
$r3=GUICtrlCreateButton("Zapisz wyniki",750,300,200,50)
$r4=GUICtrlCreateButton("Zapisz BN",750,130,130,30)
$l=GUICtrlCreateButton("Losuj opis BN",750,400,200,50)
$key10 = GUICtrlCreateButton("K10",5,400,80,40)
$key100 = GUICtrlCreateButton("K100",165,400,80,40)
$reset = GUICtrlCreateButton("Reset",85,400,80,40)
$wynik = GUICtrlCreateLabel("",120,385,40,12)
$wynik1=GUICtrlCreateLabel("",120,370,40,12)
$wynik2=GUICtrlCreateLabel("",120,355,40,12)
$dalej = GUICtrlCreateButton("Następna runda",300,400,100,40)
$zero = GUICtrlCreateButton("Od nowa",400,400,100,40)
$czas=GUICtrlCreateLabel("Runda "&$rund,380,382,50,18)
$naprzod=GUICtrlCreateButton("Dzień następny",530,400,100,40)
$tyl=GUICtrlCreateButton("Dzień poprzedni",630,400,100,40)
$miesiac=GUICtrlCreateLabel("Miesiąc",610,360,100,20)
$dzien=GUICtrlCreateLabel("Dzień",610,380,80,20)
$c =GUICtrlCreateListView("Wybierz przeciwnika z listy",10,10,200,80)
$c4=GUICtrlCreateListViewItem("Łatwy",$c)
$c5=GUICtrlCreateListViewItem("Średni",$c)
$c6=GUICtrlCreateListViewItem("Trudny",$c)
$c7=GUICtrlCreateListViewItem("Bardzo trudny",$c)
$b=GUICtrlCreateListView("BN                                ",250,10,200,70)
$b1=GUICtrlCreateListViewItem("Pierwszy",$b)
$b2=GUICtrlCreateListViewItem("Drugi",$b)
$k=GUICtrlCreateListView("Wybierz druzyne",750,10,200,70)
$k1=GUICtrlCreateListViewItem("Krytyk Na Leb",$k)
$k2=GUICtrlCreateListViewItem("Tak",$k)
GUICtrlCreateLabel("  I",225,100,30,15)
GUICtrlCreateLabel("WW",255,100,30,15)
GUICtrlCreateLabel("ZS",285,100,30,15)
GUICtrlCreateLabel("  K",315,100,30,15)
GUICtrlCreateLabel("Odp",345,100,30,15)
GUICtrlCreateLabel(" Zr",375,100,30,15)
GUICtrlCreateLabel("Int",405,100,30,15)
GUICtrlCreateLabel("SW",435,100,30,15)
GUICtrlCreateLabel("Ogd",465,100,30,15)
GUICtrlCreateLabel("  A",495,100,30,15)
GUICtrlCreateLabel("Zyw",525,100,30,15)
GUICtrlCreateLabel("S",560,100,30,15)
GUICtrlCreateLabel("Wt",585,100,30,15)
GUICtrlCreateLabel("Sz",615,100,30,15)
GUICtrlCreateLabel("Mag",640,100,30,15)
GUICtrlCreateLabel("PO",675,100,30,15)
GUICtrlCreateLabel("PP",705,100,30,15)
$p1=GUICtrlCreateInput("",10,120,200,15)       ;pierwsza kolumna
$p1a=GUICtrlCreateInput("",225,120,20,15)
$p1b=GUICtrlCreateInput("",255,120,20,15)
$p1c=GUICtrlCreateInput("",285,120,20,15)
$p1d=GUICtrlCreateInput("",315,120,20,15)
$p1e=GUICtrlCreateInput("",345,120,20,15)
$p1f=GUICtrlCreateInput("",375,120,20,15)
$p1g=GUICtrlCreateInput("",405,120,20,15)
$p1h=GUICtrlCreateInput("",435,120,20,15)
$p1i=GUICtrlCreateInput("",465,120,20,15)
$p1j=GUICtrlCreateInput("",495,120,20,15)
$p1k=GUICtrlCreateInput("",525,120,20,15)
$p1l=GUICtrlCreateInput("",555,120,20,15)
$p2=GUICtrlCreateInput("",10,140,200,15)         ;druga kolumna
$ok2[0]=GUICtrlCreateInput("",225,140,20,15)
$ok2[1]=GUICtrlCreateInput("",255,140,20,15)
$ok2[2]=GUICtrlCreateInput("",285,140,20,15)
$ok2[3]=GUICtrlCreateInput("",315,140,20,15)
$ok2[4]=GUICtrlCreateInput("",345,140,20,15)
$ok2[5]=GUICtrlCreateInput("",375,140,20,15)
$ok2[6]=GUICtrlCreateInput("",405,140,20,15)
$ok2[7]=GUICtrlCreateInput("",435,140,20,15)
$ok2[8]=GUICtrlCreateInput("",465,140,20,15)
$ok2[9]=GUICtrlCreateInput("",495,140,20,15)
$ok2[10]=GUICtrlCreateInput("",525,140,20,15)
$ok2[11]=GUICtrlCreateInput("",555,140,20,15)
$ok2[12]=GUICtrlCreateInput("",585,140,20,15)
$ok2[13]=GUICtrlCreateInput("",615,140,20,15)
$ok2[14]=GUICtrlCreateInput("",645,140,20,15)
$ok2[15]=GUICtrlCreateInput("",675,140,20,15)
$ok2[16]=GUICtrlCreateInput("",705,140,20,15)
$p3=GUICtrlCreateInput("",10,160,200,15)         ;trzecia kolumna
$ok3[0]=GUICtrlCreateInput("",225,160,20,15)
$ok3[1]=GUICtrlCreateInput("",255,160,20,15)
$ok3[2]=GUICtrlCreateInput("",285,160,20,15)
$ok3[3]=GUICtrlCreateInput("",315,160,20,15)
$ok3[4]=GUICtrlCreateInput("",345,160,20,15)
$ok3[5]=GUICtrlCreateInput("",375,160,20,15)
$ok3[6]=GUICtrlCreateInput("",405,160,20,15)
$ok3[7]=GUICtrlCreateInput("",435,160,20,15)
$ok3[8]=GUICtrlCreateInput("",465,160,20,15)
$ok3[9]=GUICtrlCreateInput("",495,160,20,15)
$ok3[10]=GUICtrlCreateInput("",525,160,20,15)
$ok3[11]=GUICtrlCreateInput("",555,160,20,15)
$ok3[12]=GUICtrlCreateInput("",585,160,20,15)
$ok3[13]=GUICtrlCreateInput("",615,160,20,15)
$ok3[14]=GUICtrlCreateInput("",645,160,20,15)
$ok3[15]=GUICtrlCreateInput("",675,160,20,15)
$ok3[16]=GUICtrlCreateInput("",705,160,20,15)
$p4=GUICtrlCreateInput("",10,180,200,15)         ;czwarta kolumna
$ok4[0]=GUICtrlCreateInput("",225,180,20,15)
$ok4[1]=GUICtrlCreateInput("",255,180,20,15)
$ok4[2]=GUICtrlCreateInput("",285,180,20,15)
$ok4[3]=GUICtrlCreateInput("",315,180,20,15)
$ok4[4]=GUICtrlCreateInput("",345,180,20,15)
$ok4[5]=GUICtrlCreateInput("",375,180,20,15)
$ok4[6]=GUICtrlCreateInput("",405,180,20,15)
$ok4[7]=GUICtrlCreateInput("",435,180,20,15)
$ok4[8]=GUICtrlCreateInput("",465,180,20,15)
$ok4[9]=GUICtrlCreateInput("",495,180,20,15)
$ok4[10]=GUICtrlCreateInput("",525,180,20,15)
$ok4[11]=GUICtrlCreateInput("",555,180,20,15)
$ok4[12]=GUICtrlCreateInput("",585,180,20,15)
$ok4[13]=GUICtrlCreateInput("",615,180,20,15)
$ok4[14]=GUICtrlCreateInput("",645,180,20,15)
$ok4[15]=GUICtrlCreateInput("",675,180,20,15)
$ok4[16]=GUICtrlCreateInput("",705,180,20,15)
$p5=GUICtrlCreateInput("",10,200,200,15)         ;pi�ta kolumna
$ok5[0]=GUICtrlCreateInput("",225,200,20,15)
$ok5[1]=GUICtrlCreateInput("",255,200,20,15)
$ok5[2]=GUICtrlCreateInput("",285,200,20,15)
$ok5[3]=GUICtrlCreateInput("",315,200,20,15)
$ok5[4]=GUICtrlCreateInput("",345,200,20,15)
$ok5[5]=GUICtrlCreateInput("",375,200,20,15)
$ok5[6]=GUICtrlCreateInput("",405,200,20,15)
$ok5[7]=GUICtrlCreateInput("",435,200,20,15)
$ok5[8]=GUICtrlCreateInput("",465,200,20,15)
$ok5[9]=GUICtrlCreateInput("",495,200,20,15)
$ok5[10]=GUICtrlCreateInput("",525,200,20,15)
$ok5[11]=GUICtrlCreateInput("",555,200,20,15)
$ok5[12]=GUICtrlCreateInput("",585,200,20,15)
$ok5[13]=GUICtrlCreateInput("",615,200,20,15)
$ok5[14]=GUICtrlCreateInput("",645,200,20,15)
$ok5[15]=GUICtrlCreateInput("",675,200,20,15)
$ok5[16]=GUICtrlCreateInput("",705,200,20,15)
$p6=GUICtrlCreateInput("",10,220,200,15)         ;sz�sta kolumna
$ok6[0]=GUICtrlCreateInput("",225,220,20,15)
$ok6[1]=GUICtrlCreateInput("",255,220,20,15)
$ok6[2]=GUICtrlCreateInput("",285,220,20,15)
$ok6[3]=GUICtrlCreateInput("",315,220,20,15)
$ok6[4]=GUICtrlCreateInput("",345,220,20,15)
$ok6[5]=GUICtrlCreateInput("",375,220,20,15)
$ok6[6]=GUICtrlCreateInput("",405,220,20,15)
$ok6[7]=GUICtrlCreateInput("",435,220,20,15)
$ok6[8]=GUICtrlCreateInput("",465,220,20,15)
$ok6[9]=GUICtrlCreateInput("",495,220,20,15)
$ok6[10]=GUICtrlCreateInput("",525,220,20,15)
$ok6[11]=GUICtrlCreateInput("",555,220,20,15)
$ok6[12]=GUICtrlCreateInput("",585,220,20,15)
$ok6[13]=GUICtrlCreateInput("",615,220,20,15)
$ok6[14]=GUICtrlCreateInput("",645,220,20,15)
$ok6[15]=GUICtrlCreateInput("",675,220,20,15)
$ok6[16]=GUICtrlCreateInput("",705,220,20,15)
$p7=GUICtrlCreateInput("",10,240,200,15)         ;si�dma kolumna
$ok7[0]=GUICtrlCreateInput("",225,240,20,15)
$ok7[1]=GUICtrlCreateInput("",255,240,20,15)
$ok7[2]=GUICtrlCreateInput("",285,240,20,15)
$ok7[3]=GUICtrlCreateInput("",315,240,20,15)
$ok7[4]=GUICtrlCreateInput("",345,240,20,15)
$ok7[5]=GUICtrlCreateInput("",375,240,20,15)
$ok7[6]=GUICtrlCreateInput("",405,240,20,15)
$ok7[7]=GUICtrlCreateInput("",435,240,20,15)
$ok7[8]=GUICtrlCreateInput("",465,240,20,15)
$ok7[9]=GUICtrlCreateInput("",495,240,20,15)
$ok7[10]=GUICtrlCreateInput("",525,240,20,15)
$ok7[11]=GUICtrlCreateInput("",555,240,20,15)
$ok7[12]=GUICtrlCreateInput("",585,240,20,15)
$ok7[13]=GUICtrlCreateInput("",615,240,20,15)
$ok7[14]=GUICtrlCreateInput("",645,240,20,15)
$ok7[15]=GUICtrlCreateInput("",675,240,20,15)
$ok7[16]=GUICtrlCreateInput("",705,240,20,15)
$p8=GUICtrlCreateInput("",10,260,200,15)         ;�sma kolumna
$ok8[0]=GUICtrlCreateInput("",225,260,20,15)
$ok8[1]=GUICtrlCreateInput("",255,260,20,15)
$ok8[2]=GUICtrlCreateInput("",285,260,20,15)
$ok8[3]=GUICtrlCreateInput("",315,260,20,15)
$ok8[4]=GUICtrlCreateInput("",345,260,20,15)
$ok8[5]=GUICtrlCreateInput("",375,260,20,15)
$ok8[6]=GUICtrlCreateInput("",405,260,20,15)
$ok8[7]=GUICtrlCreateInput("",435,260,20,15)
$ok8[8]=GUICtrlCreateInput("",465,260,20,15)
$ok8[9]=GUICtrlCreateInput("",495,260,20,15)
$ok8[10]=GUICtrlCreateInput("",525,260,20,15)
$ok8[11]=GUICtrlCreateInput("",555,260,20,15)
$ok8[12]=GUICtrlCreateInput("",585,260,20,15)
$ok8[13]=GUICtrlCreateInput("",615,260,20,15)
$ok8[14]=GUICtrlCreateInput("",645,260,20,15)
$ok8[15]=GUICtrlCreateInput("",675,260,20,15)
$ok8[16]=GUICtrlCreateInput("",705,260,20,15)
$p9=GUICtrlCreateInput("",10,280,200,15)         ;dziewi�ta kolumna
$ok9[0]=GUICtrlCreateInput("",225,280,20,15)
$ok9[1]=GUICtrlCreateInput("",255,280,20,15)
$ok9[2]=GUICtrlCreateInput("",285,280,20,15)
$ok9[3]=GUICtrlCreateInput("",315,280,20,15)
$ok9[4]=GUICtrlCreateInput("",345,280,20,15)
$ok9[5]=GUICtrlCreateInput("",375,280,20,15)
$ok9[6]=GUICtrlCreateInput("",405,280,20,15)
$ok9[7]=GUICtrlCreateInput("",435,280,20,15)
$ok9[8]=GUICtrlCreateInput("",465,280,20,15)
$ok9[9]=GUICtrlCreateInput("",495,280,20,15)
$ok9[10]=GUICtrlCreateInput("",525,280,20,15)
$ok9[11]=GUICtrlCreateInput("",555,280,20,15)
$ok9[12]=GUICtrlCreateInput("",585,280,20,15)
$ok9[13]=GUICtrlCreateInput("",615,280,20,15)
$ok9[14]=GUICtrlCreateInput("",645,280,20,15)
$ok9[15]=GUICtrlCreateInput("",675,280,20,15)
$ok9[16]=GUICtrlCreateInput("",705,280,20,15)
GUISetState(@SW_SHOW)

For $licz=1 To 90                                                                       ;statystyki
  $krytyk[$licz-1]=FileReadLine("krytyk.txt",$licz)
  $krytyk1[$licz-1]=FileReadLine("krytyk.txt",$licz)
Next

For $licz=1 To 126
   $tak[$licz-1]=FileReadLine("tak.txt",$licz)
   $tak1[$licz-1]=FileReadLine("tak.txt",$licz)
Next
$tak[16]=FileReadLine("tak.txt",17)

For $licz=1 To 36
   $bn[$licz-1]=FileReadLine("bn.txt",$licz)
   $bn1[$licz-1]=FileReadLine("bn.txt",$licz)
   Next
$msg = 0

$dni1=FileReadLine("kalendarz.txt",1)                                                 ;kalendarz
$dni2=FileReadLine("kalendarz.txt",2)


While $msg <> $GUI_EVENT_CLOSE                 ;start

   $zr=15 + Random(1,15,1)
$inicjatywa=$zr + Random(1,10,1)
$ww=15 + Random(1,15,1)
$us=15 + Random(1,15,1)
$krz=25 + Random(1,15,1)
$odp=25 + Random(1,15,1)
$int=15 + Random(1,15,1)
$sw=15 + Random(1,15,1)
$ogd=15+ Random(1,15,1)
$zyw=7+ Random(1,6,1)

   $msg = GUIGetMsg ()
   $zmienna100 = Random(1,100,1)
   $zmienna10 = Random(1,10,1)
   $oczy=Random(1,10,1)
   $wlosy=Random(1,10,1)
   $wiek=Random(20,70,1)
   $wzrost=Random(140,220,1)
   $twarz=Random(1,40,1)
   $sylwetka=Random(1,20,1)
   $znaki=Random(1,100,1)
   $oczyr=""
   $wlosyr=""
   $twarzr=""
   $sylwetkar=""
   $znakir=""
   Select                                        ;oczy
   Case $oczy=1
	  $oczyr="niebieskie oczy, "
   Case $oczy=2
	  $oczyr="brązowe oczy, "
   Case $oczy=3
	  $oczyr="czarne oczy, "
   Case $oczy=4
	  $oczyr="zielone oczy, "
   Case $oczy=5
	  $oczyr="piwne oczy, "
   Case $oczy=6
	  $oczyr="bladoniebieskie oczy, "
   Case $oczy=7
	  $oczyr="fioletowe oczy, "
   Case $oczy=8
	  $oczyr="orzechowe oczy, "
   EndSelect
   Select                                       ;w�osy
   Case $wlosy=1
	  $wlosyr="d�ugie czarne w�osy, "
   Case $wlosy=2
	  $wlosyr="kr�tkie czarne w�osy, "
   Case $wlosy=3
	  $wlosyr="d�ugie blond w�osy, "
   Case $wlosy=4
	  $wlosyr="kr�tkie blond w�osy, "
   Case $wlosy=5
	  $wlosyr="d�ugie br�zowe w�osy, "
   Case $wlosy=6
	  $wlosyr="kr�tkie br�zowe w�osy, "
   Case $wlosy=7
	  $wlosyr="d�ugie rude w�osy, "
   Case $wlosy=8
	  $wlosyr="kr�tkie rude w�osy, "
   Case $wlosy=9
	  $wlosyr="�ysy, "
   Case $wlosy=10
	  $wlosyr="zakryta g�owa, "
   EndSelect
   Select
   Case $twarz=1
	  $twarzr="szeroka szcz�ka, "
   Case $twarz=2
	  $twarzr="w�skie usta, "
   Case $twarz=3
	  $twarzr="zro�ni�te brwi, "
   Case $twarz=4
	  $twarzr="tr�jk�tny podbr�dek, "
   Case $twarz=5
	  $twarzr="brzydki, "
   Case $twarz=6
	  $twarzr="brak brwi, "
   Case $twarz=7
	  $twarzr="przystojny, "
   Case $twarz=8
	  $twarzr="g�adkie rysy twarzy, "
   Case $twarz=9
	  $twarzr="twarde rysy twarzy, "
   EndSelect
   Select
   Case $sylwetka=1
	  $sylwetkar="gruby, "
   Case $sylwetka=2
	  $sylwetkar="przera�liwie chudy, "
   Case $sylwetka=3
	  $sylwetkar="drogie szaty, "
   Case $sylwetka=4
	  $sylwetkar="�achmany, "
   Case $sylwetka=5
	  $sylwetkar="blady, "
   Case $sylwetka=6
	  $sylwetkar="opalony, "
   Case $sylwetka=7
	  $sylwetkar="umi�niony, "
   Case $sylwetka=8
	  $sylwetkar="gibki, "
   Case $sylwetka=9
	  $sylwetkar="utyka, "
   Case $sylwetka=10
	  $sylwetkar="szczup�y, "
	  EndSelect
	  Select
	  Case $znaki=1
		 $znakir="bielmo na oku"
	  Case $znaki=2
		 $znakir="blizna na oku"
	  Case $znaki=3
		 $znakir="blizna na policzku"
	  Case $znaki=4
		 $znakir="blizna na nosie"
	  Case $znaki=5
		 $znakir="brak palca"
	  Case $znaki=6
		 $znakir="brak z�ba"
	  Case $znaki=7
		 $znakir="brak r�ki"
	  Case $znaki=8
		 $znakir="brak nogi"
	  Case $znaki=9
		 $znakir="brak nosa"
	  Case $znaki=10
		 $znakir="brak oka"
	  Case $znaki=11
		 $znakir="brodawki"
	  Case $znaki=12
		 $znakir="kolczyk w nosie"
	  Case $znaki=13
		 $znakir="kolczyk w uchu"
	  Case $znaki=14
		 $znakir="piegi"
	  Case $znaki=15
		 $znakir="brak ucha"
	  Case $znaki=16
		 $znakir="poszarpane ucho"
	  Case $znaki=17
		 $znakir="�lady po ospie"
	  Case $znaki=18
		 $znakir="tatua�"
	  Case $znaki=19
		 $znakir="wytrzeszczone oczy"
	  Case $znaki=20
		 $znakir="z�amany nos"
		 EndSelect
Select

  Case $msg=$c4                                                   ;�atwy przeciwnik

	 GUICtrlSetData($p1,"Łatwy")
	 GUICtrlSetData($p1a,$inicjatywa)
	 GUICtrlSetData($p1b,$ww)
	 GUICtrlSetData($p1c,$us)
	 GUICtrlSetData($p1d,$krz)
	 GUICtrlSetData($p1e,$odp)
	 GUICtrlSetData($p1f,$zr)
	 GUICtrlSetData($p1g,$int)
	 GUICtrlSetData($p1h,$sw)
	 GUICtrlSetData($p1i,$ogd)
	 GUICtrlSetData($p1j,1)
	 GUICtrlSetData($p1k,$zyw)

Case $msg=$c5                                                       ;�redni przeciwnik
   GUICtrlSetData($p1,"Średni")
   GUICtrlSetData($p1a,$inicjatywa+15)
   GUICtrlSetData($p1b,$ww+15)
   GUICtrlSetData($p1c,$us+15)
   GUICtrlSetData($p1d,$krz+10)
   GUICtrlSetData($p1e,$odp+10)
   GUICtrlSetData($p1f,$zr+15)
   GUICtrlSetData($p1g,$int+15)
   GUICtrlSetData($p1h,$sw+15)
   GUICtrlSetData($p1i,$ogd+15)
   GUICtrlSetData($p1j,Random(1,2,1))
   GUICtrlSetData($p1k,$zyw+2)

  Case $msg=$c6                                                            ;trudny przeciwnik
	 GUICtrlSetData($p1,"Trudny")
   GUICtrlSetData($p1a,$inicjatywa+30)
   GUICtrlSetData($p1b,$ww+35)
   GUICtrlSetData($p1c,$us+30)
   GUICtrlSetData($p1d,$krz+20)
   GUICtrlSetData($p1e,$odp+20)
   GUICtrlSetData($p1f,$zr+30)
   GUICtrlSetData($p1g,$int+30)
   GUICtrlSetData($p1h,$sw+30)
   GUICtrlSetData($p1i,$ogd+30)
   GUICtrlSetData($p1j,Random(2,3,1))
   GUICtrlSetData($p1k,$zyw+5)

  Case $msg=$c7                                                             ;bardzo trudny przeciwnik
	 GUICtrlSetData($p1,"Bardzo trudny")
   GUICtrlSetData($p1a,$inicjatywa+50)
   GUICtrlSetData($p1b,$ww+55)
   GUICtrlSetData($p1c,$us+50)
   GUICtrlSetData($p1d,$krz+30)
   GUICtrlSetData($p1e,$odp+30)
   GUICtrlSetData($p1f,$zr+50)
   GUICtrlSetData($p1g,$int+50)
   GUICtrlSetData($p1h,$sw+50)
   GUICtrlSetData($p1i,$ogd+50)
   GUICtrlSetData($p1j,Random(2,4,1))
   GUICtrlSetData($p1k,$zyw+10)

  Case $msg=$l
los()

  Case $msg=$r                                ;pierwszy reset
	 GUICtrlSetData($p1,"")
  GUICtrlSetData($p1a,"")
  GUICtrlSetData($p1b,"")
  GUICtrlSetData($p1c,"")
  GUICtrlSetData($p1d,"")
  GUICtrlSetData($p1e,"")
  GUICtrlSetData($p1f,"")
  GUICtrlSetData($p1g,"")
  GUICtrlSetData($p1h,"")
  GUICtrlSetData($p1i,"")
  GUICtrlSetData($p1j,"")
  GUICtrlSetData($p1k,"")
  GUICtrlSetData($p1l,"")


  Case $msg=$r2                             ;drugi reset
	 czysc()

  Case $msg=$r3	                             ;zapis
	 zapisz()

  Case $msg=$k1                    ;Krytyk Na �eb
	 czysc()
	 $a=0
	 While $a<17
	 GUICtrlSetData($p4,$krytyk[17])
	 GUICtrlSetData($ok4[$a],$krytyk[$a])
	 GUICtrlSetData($p5,$krytyk[35])
	 GUICtrlSetData($ok5[$a],$krytyk[$a+18])
	 GUICtrlSetData($p6,$krytyk[53])
	 GUICtrlSetData($ok6[$a],$krytyk[$a+36])
	 GUICtrlSetData($p7,$krytyk[71])
	 GUICtrlSetData($ok7[$a],$krytyk[$a+54])
	 GUICtrlSetData($p8,$krytyk[89])
	 GUICtrlSetData($ok8[$a],$krytyk[$a+72])
	 $a+=1
	 $data[0]=1
	 kalendarz()
	 WEnd

  Case $msg=$k2                                    ;TAK
	 czysc()
	 $a=0
	 While $a<17
	 GUICtrlSetData($p3,$tak[17])
	 GUICtrlSetData($ok3[$a],$tak[$a])
	 GUICtrlSetData($p4,$tak[35])
	 GUICtrlSetData($ok4[$a],$tak[$a+18])
	 GUICtrlSetData($p5,$tak[53])
	 GUICtrlSetData($ok5[$a],$tak[$a+36])
	 GUICtrlSetData($p6,$tak[71])
	 GUICtrlSetData($ok6[$a],$tak[$a+54])
	 GUICtrlSetData($p7,$tak[89])
	 GUICtrlSetData($ok7[$a],$tak[$a+72])
	 GUICtrlSetData($p8,$tak[107])
    GUICtrlSetData($ok8[$a],$tak[$a+90])
	GUICtrlSetData($p9,$tak[125])
	GUICtrlSetData($ok9[$a],$tak[$a+108])
		$a+=1
		$data[0]=2
		kalendarz()
		WEnd

 Case $msg = $key10                                                    ;ko�ci
	$w2=GUICtrlRead($wynik1)
	GUICtrlSetData($wynik2,$w2)
	$w1=GUICtrlRead($wynik)
	GUICtrlSetData($wynik1,$w1)
	 GUICtrlSetData($wynik,$zmienna10)
  Case $msg = $key100
	 $w2=GUICtrlRead($wynik1)
	GUICtrlSetData($wynik2,$w2)
	 $w1=GUICtrlRead($wynik)
	GUICtrlSetData($wynik1,$w1)
	  GUICtrlSetData($wynik, $zmienna100)
Case $msg = $reset
	  GUICtrlSetData($wynik,"")
	  GUICtrlSetData($wynik1,"")
	  GUICtrlSetData($wynik2,"")

   Case $msg=$b1                                                           ;BN
	  $data1=1
	  GUICtrlSetData($p2,$bn[17])
	  For $a=1 To 17
		 GUICtrlSetData($ok2[$a-1],$bn[$a-1])
	  Next

   Case $msg=$b2
	  $data1=2
	  GUICtrlSetData($p2,$bn[35])
	  For $a=1 To 17
		 GUICtrlSetData($ok2[$a-1],$bn[$a+17])
		 Next


Case $msg=$r4
		 zapbn()

Case $msg=$ra
		 GUICtrlSetData($p2,"")
		 For $a=0 To 16
			GUICtrlSetData($ok2[$a],"")
		 Next

Case $msg=$ri
			inicjatywa()

Case $msg=$dalej
   $rund=1+$rund
   GUICtrlSetData($czas,"Runda "&$rund)

Case $msg=$zero
   $rund=1
   GUICtrlSetData($czas,"Runda "&$rund)

Case $msg=$naprzod
   Select
   Case $data[0]=1
	  $dni1+=1
   Case $data[0]=2
	  $dni2+=1
   EndSelect
   kalendarz()
Case $msg=$tyl
   Select
   Case $data[0]=1
	  $dni1-=1
   Case $data[0]=2
	  $dni2-=1
   EndSelect
   kalendarz()
   EndSelect
   WEnd







   Func czysc ()

	  $a=0
	 While $a<17
  GUICtrlSetData($p3,"")
  GUICtrlSetData($ok3[$a],"")
  GUICtrlSetData($p4,"")
  GUICtrlSetData($ok4[$a],"")
  GUICtrlSetData($p5,"")
  GUICtrlSetData($ok5[$a],"")
  GUICtrlSetData($p6,"")
  GUICtrlSetData($ok6[$a],"")
  GUICtrlSetData($p7,"")
  GUICtrlSetData($ok7[$a],"")
  GUICtrlSetData($p8,"")
  GUICtrlSetData($ok8[$a],"")
  GUICtrlSetData($p9,"")
  GUICtrlSetData($ok9[$a],"")
  $a+=1
  WEnd
  $data[0]=0
  GUICtrlSetData($miesiac,"Miesiąc")
  GUICtrlSetData($dzien,"Dzień")
  EndFunc

  Func zapisz()                                                                 ;zapisz
	 Select
	 Case $data[0]=1
		For $a=1 To 17
		$krytyk[$a-1]=GUICtrlRead($ok4[$a-1])
		$krytyk[$a+17]=GUICtrlRead($ok5[$a-1])
		$krytyk[$a+35]=GUICtrlRead($ok6[$a-1])
		$krytyk[$a+53]=GUICtrlRead($ok7[$a-1])
		$krytyk[$a+71]=GUICtrlRead($ok8[$a-1])
	    $krytyk[17]=GUICtrlRead($p4)                                          ;imiona
	    $krytyk[35]=GUICtrlRead($p5)
	    $krytyk[53]=GUICtrlRead($p6)
		$krytyk[71]=GUICtrlRead($p7)
		$krytyk[89]=GUICtrlRead($p8)

		Next
	For $a=1 To 90
		If $krytyk[$a-1]<>$krytyk1[$a-1] Then
	   _FileWriteToLine("krytyk.txt",$a,$krytyk[$a-1],1)
	   EndIf
	Next
	  _FileWriteToLine("krytyk.txt",18,$krytyk[17],1)
	  _FileWriteToLine("krytyk.txt",36,$krytyk[35],1)
	  _FileWriteToLine("krytyk.txt",54,$krytyk[53],1)
	  _FileWriteToLine("krytyk.txt",72,$krytyk[71],1)
	  _FileWriteToLine("krytyk.txt",90,$krytyk[89],1)
	_FileWriteToLine("kalendarz.txt",1,$dni1,1)


 Case $data[0]=2
	For $a=1 To 17
	   $tak[$a-1]=GUICtrlRead($ok3[$a-1])
	   $tak[$a+17]=GUICtrlRead($ok4[$a-1])
	   $tak[$a+35]=GUICtrlRead($ok5[$a-1])
	   $tak[$a+53]=GUICtrlRead($ok6[$a-1])
	   $tak[$a+71]=GUICtrlRead($ok7[$a-1])
	   $tak[$a+89]=GUICtrlRead($ok8[$a-1])
	   $tak[$a+107]=GUICtrlRead($ok9[$a-1])
	   $tak[17]=GUICtrlRead($p3)                                                           ;imiona
	   $tak[35]=GUICtrlRead($p4)
	   $tak[53]=GUICtrlRead($p5)
	   $tak[71]=GUICtrlRead($p6)
	   $tak[89]=GUICtrlRead($p7)
	   $tak[107]=GUICtrlRead($p8)
	   $tak[125]=GUICtrlRead($p9)
	Next
	For $a=1 To 126
		If $tak[$a-1]<>$tak1[$a-1] Then
	   _FileWriteToLine("tak.txt",$a,$tak[$a-1],1)
	EndIf
   Next
      _FileWriteToLine("tak.txt",18,$tak[17],1)
	  _FileWriteToLine("tak.txt",36,$tak[35],1)
	  _FileWriteToLine("tak.txt",54,$tak[53],1)
	  _FileWriteToLine("tak.txt",72,$tak[71],1)
	  _FileWriteToLine("tak.txt",90,$tak[89],1)
	  _FileWriteToLine("tak.txt",108,$tak[107],1)
	  _FileWriteToLine("tak.txt",126,$tak[125],1)
	_FileWriteToLine("kalendarz.txt",2,$dni2,1)
	EndSelect
	MsgBox(0,"","Dane zostały pomyślnie zapisane")
 EndFunc

 Func los()
	MsgBox(0,"",$oczyr&$wlosyr&$wzrost&" cm, "&$wiek&" lat, "&$twarzr&$sylwetkar&$znakir)
 EndFunc


 Func zapbn()
	Select
	   Case $data1=1
		 For $licz=1 To 17
   $bn[$licz-1]=GUICtrlRead($ok2[$licz-1])
   $bn[17]=GUICtrlRead($p2)
Next
      For $a=1 To 17
   If $bn[$a-1]<>$bn1[$a-1] Then
   _FileWriteToLine("bn.txt",$a,$bn[$a-1],1)
    EndIf
    _FileWriteToLine("bn.txt",18,$bn[17],1)
Next

Case $data1=2
   For $licz=1 To 17
	  $bn[$licz+17]=GUICtrlRead($ok2[$licz-1])
	  $bn[35]=GUICtrlRead($p2)
   Next
   For $a=1 To 17
	  If $bn[$a+17]<>$bn1[$a+17] Then
		 _FileWriteToLine("bn.txt",$a+18,$bn[$a+17],1)
	  EndIf
	  _FileWriteToLine("bn.txt",36,$bn[35],1)
   Next
   EndSelect
EndFunc

Func inicjatywa()
   $i0=GUICtrlRead($ok2[5])
   If $i0<>0 Then
	 $i0+=Random(1,10,1)
	 EndIf
   $i1=GUICtrlRead($ok3[5])
   If $i1<>0 Then
	  $i1+=Random(1,10,1)
	  EndIf
   $i2=GUICtrlRead($ok4[5])
   If $i2<>0 Then
	  $i2+=Random(1,10,1)
	  EndIf
   $i3=GUICtrlRead($ok5[5])
   If $i3<>0 Then
	  $i3+=Random(1,10,1)
	  EndIf
   $i4=GUICtrlRead($ok6[5])
   If $i4<>0 Then
	  $i4+=Random(1,10,1)
	  EndIf
   $i5=GUICtrlRead($ok7[5])
   If $i5<>0 Then
	  $i5+=Random(1,10,1)
	  EndIf
   $i6=GUICtrlRead($ok8[5])
   If $i6<>0 Then
	  $i6+=Random(1,10,1)
	  EndIf
   $i7=GUICtrlRead($ok9[5])
   If $i7<>0 Then
	  $i7+=Random(1,10,1)
	  EndIf
   GUICtrlSetData($ok2[0],$i0)
   GUICtrlSetData($ok3[0],$i1)
   GUICtrlSetData($ok4[0],$i2)
   GUICtrlSetData($ok5[0],$i3)
   GUICtrlSetData($ok6[0],$i4)
   GUICtrlSetData($ok7[0],$i5)
   GUICtrlSetData($ok8[0],$i6)
   GUICtrlSetData($ok9[0],$i7)
EndFunc


Func kalendarz()
   Select
	  Case $data[0]=1
   Select
   Case $dni1<34 And $dni1>0
	  GUICtrlSetData($miesiac,"Powiedźmie (1)")
	  GUICtrlSetData($dzien,"Dzień "& $dni1)
   Case $dni1<67 And $dni1>=34
	  GUICtrlSetData($miesiac,"Zmiana Roku (2)")
	  GUICtrlSetData($dzien,"Dzień "& $dni1-33)
   Case $dni1=67
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Rozkwitanie")
   Case $dni1<101 And $dni1>67
	  GUICtrlSetData($miesiac,"Czas Orki (3)")
	  GUICtrlSetData($dzien,"Dzień "& $dni1-67)
   Case $dni1<134 And $dni1>=101
	  GUICtrlSetData($miesiac,"Czas Sigmara (4)")
	  GUICtrlSetData($dzien,"Dzień "& $dni1-100)
   Case $dni1<167 And $dni1>=134
	  GUICtrlSetData($miesiac,"Czas Lata (5)")
	  GUICtrlSetData($dzien,"Dzień "& $dni1-133)
   Case $dni1=167
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Dzień Słońca")
   Case $dni1<201 And $dni1>167
	  GUICtrlSetData($miesiac,"Przed Tajemnicą (6)")
	  GUICtrlSetData($dzien,"Dzień "&$dni1-167)
   Case $dni1=201
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Noc Tajemnicy")
   Case $dni1<234 And $dni1>201                                        ;32 dni
	  GUICtrlSetData($miesiac,"Po Tajemnicy (7)")
	  GUICtrlSetData($dzien,"Dzień "&$dni1-201)
   Case $dni1<267 And $dni1>=234
	  GUICtrlSetData($miesiac,"Czas Zbiorów (8)")
	  GUICtrlSetData($dzien,"Dzień "&$dni1-233)
   Case $dni1=267
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Przekwitanie")
   Case $dni1<301 And $dni1>267
	  GUICtrlSetData($miesiac,"Czas Warzenia (9)")
	  GUICtrlSetData($dzien,"Dzień "&$dni1-267)
   Case $dni1<333 And $dni1>=301
	  GUICtrlSetData($miesiac,"Czas Mrozów (10)")                     ;32 dni
	  GUICtrlSetData($dzien,"Dzień "&$dni1-300)
   Case $dni1<366 And $dni1>=333
	  GUICtrlSetData($miesiac,"Czas Ulryka (11)")
	  GUICtrlSetData($dzien,"Dzień "&$dni1-332)
   Case $dni1=366
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Uśpienie")
   Case $dni1<400 And $dni1>366
	  GUICtrlSetData($miesiac,"Przedwiedźmie (12)")
	  GUICtrlSetData($dzien,"Dzień "&$dni1-366)
   Case $dni1=400
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Noc Wiedźm")
   Case $dni1>400
	  $dni1=1
	  kalendarz()
   Case $dni1<1
	  $dni1=400
	  kalendarz()
   EndSelect

Case $data[0]=2
   Select
   Case $dni2<34 And $dni2>0
	  GUICtrlSetData($miesiac,"Powiedźmie (1)")
	  GUICtrlSetData($dzien,"Dzień "& $dni2)
   Case $dni2<67 And $dni2>=34
	  GUICtrlSetData($miesiac,"Zmiana Roku (2)")
	  GUICtrlSetData($dzien,"Dzień "& $dni2-33)
   Case $dni2=67
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Rozkwitanie")
   Case $dni2<101 And $dni2>67
	  GUICtrlSetData($miesiac,"Czas Orki (3)")
	  GUICtrlSetData($dzien,"Dzień "& $dni2-67)
   Case $dni2<134 And $dni2>=101
	  GUICtrlSetData($miesiac,"Czas Sigmara (4)")
	  GUICtrlSetData($dzien,"Dzień "& $dni2-100)
   Case $dni2<167 And $dni2>=134
	  GUICtrlSetData($miesiac,"Czas Lata (5)")
	  GUICtrlSetData($dzien,"Dzień "& $dni2-133)
   Case $dni2=167
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Dzień Słońca")
   Case $dni2<201 And $dni2>167
	  GUICtrlSetData($miesiac,"Przed Tajemnicą (6)")
	  GUICtrlSetData($dzien,"Dzień "&$dni2-167)
   Case $dni2=201
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Noc Tajemnicy")
   Case $dni2<234 And $dni2>201                                        ;32 dni
	  GUICtrlSetData($miesiac,"Po Tajemnicy (7)")
	  GUICtrlSetData($dzien,"Dzień "&$dni2-201)
   Case $dni2<267 And $dni2>=234
	  GUICtrlSetData($miesiac,"Czas Zbiorów (8)")
	  GUICtrlSetData($dzien,"Dzień "&$dni2-233)
   Case $dni2=267
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Przekwitanie")
   Case $dni2<301 And $dni2>267
	  GUICtrlSetData($miesiac,"Czas Warzenia (9)")
	  GUICtrlSetData($dzien,"Dzień "&$dni2-267)
   Case $dni2<333 And $dni2>=301
	  GUICtrlSetData($miesiac,"Czas Mrozów (10)")                     ;32 dni
	  GUICtrlSetData($dzien,"Dzień "&$dni2-300)
   Case $dni2<366 And $dni2>=333
	  GUICtrlSetData($miesiac,"Czas Ulryka (11)")
	  GUICtrlSetData($dzien,"Dzień "&$dni2-332)
   Case $dni2=366
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Uśpienie")
   Case $dni2<400 And $dni2>366
	  GUICtrlSetData($miesiac,"Przedwiedźmie (12)")
	  GUICtrlSetData($dzien,"Dzień "&$dni2-366)
   Case $dni2=400
	  GUICtrlSetData($miesiac,"")
	  GUICtrlSetData($dzien,"Noc Wiedźm")
   Case $dni2>400
	  $dni2=1
	  kalendarz()
   Case $dni2<1
	  $dni2=400
	  kalendarz()
   EndSelect
   EndSelect
EndFunc

;wykonane przez
;Filip Hancke
global qxP
global qyP
global wxP
global wyP
global exP
global eyP
global rxP
global ryP
global txP
global tyP
global axP
global ayP
global sxP
global syP
global dxP
global dyP
global fxP
global fyP
global gxP
global gyP
global zxP
global zyP
global xxP
global xyP
global cxP
global cyP
global vxP
global vyP
global bxP
global byP

; ctrl + p to pause
^p::Pause,Toggle

tsleep() {
	Random, r, 650, 800
	Sleep, r
}

qq(){
	MouseGetPos, qxP, qyP
	return
}

ww() {
	MouseGetPos, wxP, wyP
	return
}
ee() {
	MouseGetPos, exP, eyP
	return
}
rr(){
	MouseGetPos, rxP, ryP
	return
}
tt(){
	MouseGetPos, txP, tyP
	return
}
aa(){
	MouseGetPos, axP, ayP
	return
}
ss(){
	MouseGetPos, sxP, syP
	return
}
ff(){
	MouseGetPos, fxP, fyP
	return
}
gg(){
	MouseGetPos, gxP, gyP
	return
}
zz(){
	MouseGetPos, zxP, zyP
	return
}
xx(){
	MouseGetPos, xxP, xyP
	return
}
cc(){
	MouseGetPos, cxP, cyP
	return
}
vv(){
	MouseGetPos, vxP, vyP
	return
}
bb(){
	MouseGetPos, bxP, byP
	return
}
dd(){
	MouseGetPos, dxP, dyP
	return
}

grabPot(){
	Click, %rxP%, %ryP% 	; r grab pot
	Random, r, 1800, 2400
	Sleep r
	Click, %txP%, %tyP%		; t starting tile
	Random, r, 1700, 2100
	Sleep r
}

makeMixologyPaste(){
	Loop{
		
		Click, %qxP%, %qyP%  	; ctrlq bank
		Random, r, 1200, 2000
		sleep r
		Click, %wxP%, %wyP%		; ctrlw herb/unf
		Random,r, 300, 550
		Sleep r
		Click, %exP%, %eyP% 	; ctrle grinder
		Random, r, 1200, 2150
		Sleep r
		loop, 28{
		Click, %exP%, %eyP% 	; ctrle grinder
		Random,r, 550, 750
		Sleep r
		}

	}
}

masterMixology(){
	;loop{
	
		loop, 3{
			Click, %qxP%, %qyP% 		; q mox
			tsleep()
			loop, 2{
				Click, %wxP%, %wyP% 	; w aga
				tsleep()
			}							
			grabPot()				;MAA
			loop, 2{
				Click, %qxP%, %qyP% 	; q mox
				tsleep()
			}
			Click, %exP%, %eyP% 		; e lye
			tsleep()
			grabPot()				;MML
			loop, 2{
				Click, %qxP%, %qyP% 	; q mox
				tsleep()
			}
			Click, %wxP%, %wyP%			; w aga
			tsleep()				
			grabPot()				;MMA
			loop, 3{
				Click, %exP%, %eyP%		;<<change the "e" in %exP% & %eyP% to q for mmm
				tsleep()				; or w for aaa potions
			}
			grabPot()				;LLL THIS POT INTERCHANGEABLE!!
			loop, 2{
				Click, %wxP%, %wyP%		; w aga
				tsleep()
			}
			Click, %exP%, %eyP% 		; e lye
			tsleep()
			grabPot()				;AAL
			Click, %wxP%, %wyP% 		; w aga
			tsleep()
			loop, 2{
				Click, %exP%, %eyP% 	; e lye
				tsleep()
			}
			grabPot()				;ALL
			loop, 2{
				Click, %exP%, %eyP% 	; e lye
				tsleep()
			}
			Click, %qxP%, %qyP% 		; q mox
			tsleep()
			grabPot()				;MLL
			Click, %qxP%, %qyP% 		; q mox
			tsleep()
			Click, %exP%, %eyP% 		; e lye
			tsleep()
			Click, %wxP%, %wyP% 		; w aga
			tsleep()
			grabPot()				;MAL
		}
	;}
}	
testStation(){	
		Click, %axP%, %ayP%		; move to Alembic
		Random, r, 10200, 10800
		Sleep r
		loop, 7{				; make 8 pots
			Click, %exP%, %eyP%
			Random, r, 2930, 2940	; CATCH 5T ~2950ms is early, 3050ms is late 43ping
			Sleep r					; seems to depend on what tick pot starts
			Click, %exP%, %eyp%
			Random, r, 3300, 3330
			Sleep r
		}
		Click, %sxP%, %syP% 	; move to Retort
		Random, r, 2000, 2400
		Sleep r
		loop, 52{				; spam retort each tick for 8 pots
			Click, %qxP%, %qyP%
			Random, r, 600, 700
			Sleep r
		}
		Random, r, 4000, 4500	; afk ensure pots finished
		Sleep r
		Click, %dxP%, %dyP%		; move to Agitator
		Random, r, 10200, 10800
		Sleep r
		loop, 7{				; make 7 pots
			Click, %fxP%, %fyP%
			Random, r, 9600, 10200
			Sleep r
		}
		Click, %dxP%, %dyP%		; move to conveyor
		Random, r, 3000,3300
		Sleep r
		loop, 20{				; turn in inv
			Click, %exP%, %eyP%
			Random, r, 600,750
			Sleep r
		}
		Click, %gxP%, %gyP%		; deposit paste hopper
		Random, r, 5600, 6200
		Sleep r
		Click, %rxP%, %ryP%		; return to start tile
		Random, r, 3600, 4200
		Sleep r
}


^q::qq()	;Mox / Retort make
^w::ww()	;Aga
^e::ee()	;Lye / Alembic make / Conveyor turn in
^r::rr()	;Mid Pot / Hopper -> Start
^t::tt()	;Starting tile
^a::aa()	;Alembic movement
^s::ss()	;Retort movement
^d::dd()	;Agitator movement / Conveyor movement
^f::ff()	;Agitator make
^g::gg()	;Conveyor -> Hopper
;^z::zz()	;unused
;^x::xx()	;unused
;^c::cc()	;unused
;^v::vv()	;unused
;^b::bb()	;unused

+1::makeMixologyPaste()
+2::masterMixology()
+3::testStation()

; SET UP - Change Line 158 potion to whatever points you need q=mox, w=aga, e=lye -
; Runelite plugin -> game size 1270x830
; Pitch camera all the way up (looking top down) + zoom to 400
; Right-click compass -> Look South
; Standing on tile between levers - ^q mox, ^w aga, ^e lye, ^r mixing vessel, ^t tile S of you
; ^a Alembic, ^s 2 tiles E of Retort counter's S tile, ^d tile NW of mix vessel
; ^f tile S of mix vessel, Stand tile E of Conveyor, ^g hopper
; -- https://imgur.com/Vk3rwJD --
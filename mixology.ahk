global wxP
global wyP
global exP
global eyP
global qxP
global qyP
global rxP
global ryP
global txP
global tyP
global yxP
global yyP
global uxP
global uyP
global ixP
global iyP
global oxP
global oyP
global gxP
global gyP
global hxP
global hyP
global jxP
global jyP
global kxP
global kyP
global lxP
global lyP
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
yy(){
	MouseGetPos, yxP, yyP
	return
}
uu(){
	MouseGetPos, uxP, uyP
	return
}
ii(){
	MouseGetPos, ixP, iyP
	return
}
oo(){
	MouseGetPos, oxP, oyP
	return
}
gg(){
	MouseGetPos, gxP, gyP
	return
}
hh(){
	MouseGetPos, hxP, hyP
	return
}
jj(){
	MouseGetPos, jxP, jyP
	return
}
kk(){
	MouseGetPos, kxP, kyP
	return
}
ll(){
	MouseGetPos, lxP, lyP
	return
}
bb(){
	MouseGetPos, bxP, byP
	return
}

grabPot(){
	Click, %rxP%, %ryP% 	; r grab pot
	Random, r, 1800, 2400
	Sleep r
	Click, %oxP%, %oyP%		; o starting tile
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
	loop{
	
		loop, 3{
			Click, %qxP%, %qyP% 	; q mox
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
			Click, %exP%, %eyP% 	; e lye
			tsleep()
			grabPot()				;MML
			loop, 2{
				Click, %qxP%, %qyP% 	; q mox
				tsleep()
			}
			Click, %wxP%, %wyP%		; w aga
			tsleep()				
			grabPot()				;MMA
			loop, 3{
				Click, %exP%, %eyP%		; e lye 3x
				tsleep()
			}
			grabPot()				;LLL THIS POT INTERCHANGEABLE!! 
			loop, 2{
				Click, %wxP%, %wyP%		; w aga
				tsleep()
			}
			Click, %exP%, %eyP% 	; e lye
			tsleep()
			grabPot()				;AAL
			Click, %wxP%, %wyP% 	; w aga
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
			Click, %qxP%, %qyP% 	; q mox
			tsleep()
			grabPot()				;MLL
			Click, %qxP%, %qyP% 	; q mox
			tsleep()
			Click, %exP%, %eyP% 	; e lye
			tsleep()
			Click, %wxP%, %wyP% 	; w aga
			tsleep()
			grabPot()				;MAL
		}
		
		Click, %hxP%, %hyP%		; move to Alembic
		Random, r, 10200, 10800
		Sleep r
		loop, 7{				; make 8 pots
			Click, %jxP%, %jyP%
			Random, r, 9600, 10200
			Sleep r
		}
		Click, %txP%, %tyP% 	; move to Retort
		Random, r, 2000, 2400
		Sleep r
		loop, 52{				; spam retort each tick for 8 pots
			Click, %yxP%, %yyP%
			Random, r, 600, 700
			Sleep r
		}
		Random, r, 4000, 4500	; afk ensure pots finished
		Sleep r
		Click, %uxP%, %uyP%		; move to Agitator
		Random, r, 10200, 10800
		Sleep r
		loop, 7{				; make 7 pots
			Click, %ixP%, %iyP%
			Random, r, 9600, 10200
			Sleep r
		}
		Click, %kxP%, %kyP%		; move to conveyor
		Random, r, 3000,3300
		Sleep r
		loop, 20{				; turn in inv
			Click, %lxP%, %lyP%
			Random, r, 600,750
			Sleep r
		}
		Click, %bxP%, %byP%		; deposit paste hopper
		Random, r, 5600, 6200
		Sleep r
		Click, %gxP%, %gyP%		; return to start tile
		Random, r, 3600, 4200
		Sleep r
	}
}


^q::qq()	;Mox
^w::ww()	;Aga
^e::ee()	;Lye
^r::rr()	;Mid Pot
^t::tt()	;Retort movement
^y::yy()	;Retort make
^u::uu()	;Agitator movement
^i::ii()	;Agitator make
^o::oo()	;Starting tile between levers
^g::gg()	;Starting tile from hopper
^h::hh()	;Alembic movement
^j::jj()	;Alembic make
^k::kk()	;Conveyor movement
^l::ll()	;Conveyor turn in
^b::bb()	;Hopper from conveyor

^d::makeMixologyPaste()
^m::masterMixology()

; SET UP - Change Line 164 potion to whatever points you need -
; Stand on starting tile between levers - ^q MOX, ^w AGA, ^e LYE, ^r Vessel, ^h Alembic
; Stand S tile of Vessel - ^o Starting tile between levers
; Stand tile next to Alembic pump - ^j Alembic, ^t Retort
; Stand tile next to Retort pot - ^y Retort, ^u Agitator
; Stand tile next to Agitator mixer - ^i Agitator, ^k conveyor
; Stand E tile of Conveyor - ^l conveyor, ^b hopper
; Stand S tile of hopper - ^g Starting tile between levers
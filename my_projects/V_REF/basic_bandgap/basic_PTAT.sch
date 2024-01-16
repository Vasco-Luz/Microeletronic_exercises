v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Basic votage reference} 370 -140 0 0 0.4 0.4 {}
N -120 200 -120 220 {
lab=GND}
N -120 100 -120 140 {
lab=VDD}
N 370 -40 370 0 {
lab=VDD}
N 370 0 370 30 {
lab=VDD}
N 370 60 370 110 {
lab=#net1}
N 410 30 520 30 {
lab=#net1}
N 560 -40 560 0 {
lab=VDD}
N 560 0 560 30 {
lab=VDD}
N 560 60 560 100 {
lab=#net2}
N 370 110 460 110 {
lab=#net1}
N 460 30 460 110 {
lab=#net1}
N 410 200 510 200 {
lab=#net2}
N 510 200 520 200 {
lab=#net2}
N 370 110 370 170 {
lab=#net1}
N 560 100 560 170 {
lab=#net2}
N 460 150 460 200 {
lab=#net2}
N 460 150 560 150 {
lab=#net2}
N 300 200 370 200 {
lab=GND}
N 560 200 630 200 {
lab=GND}
N 410 440 510 440 {
lab=#net3}
N 510 440 520 440 {
lab=#net3}
N 460 390 460 440 {
lab=#net3}
N 460 390 560 390 {
lab=#net3}
N 300 440 370 440 {
lab=GND}
N 560 440 630 440 {
lab=GND}
N 370 230 370 290 {
lab=#net4}
N 560 230 560 290 {
lab=V1}
N 370 470 370 490 {
lab=#net5}
N 370 550 370 570 {
lab=GND}
N 560 470 560 490 {
lab=GND}
N 370 380 370 410 {
lab=#net6}
N 370 290 370 320 {
lab=#net4}
N 560 350 560 410 {
lab=#net3}
N 560 390 760 390 {
lab=#net3}
N 760 450 800 450 {
lab=#net3}
N 760 390 760 450 {
lab=#net3}
N 840 450 910 450 {
lab=GND}
N 840 480 840 510 {
lab=GND}
N 840 340 840 420 {
lab=#net7}
N -30 200 -30 220 {
lab=GND}
N -30 100 -30 140 {
lab=Vx}
N 840 240 840 280 {
lab=Vx}
C {sky130_fd_pr/corner.sym} -240 -100 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -100 -100 0 0 {name=spice only_toplevel=false
format="tcleval( @value )"
value="	
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*LIBs*********************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
* chose the corners in the corner file
* tt_mm for mismatch
* ss ff sf fs standart corners
* ll hh lh hl capacitor and resistors corners
* mc for total process variation including corners
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
*Corners/montecarlo options***********************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.TEMP 125
**************************************************************
**************************************************************
**************************************************************
**************************************************************  
*SIMULATION and Plots*****************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.param Vx = 0
.control
save all
dc TEMP -40 125 1 
*dc simulation
plot (V(V1))
plot deriv(V(V1))
plot i(Vmeas) i(Vmeas1)
dc V2 0 5 0.001 
plot i(Vmeas2)
.endc
"}
C {devices/lab_pin.sym} -120 100 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -120 170 0 0 {name=V1 value=5}
C {devices/gnd.sym} -120 220 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 390 30 0 1 {name=P5
L=8
W=0.9
nf=1 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 370 -40 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 540 30 0 0 {name=P2
L=8
W=0.9
nf=1 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 560 -40 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 540 200 0 0 {name=M5
L=0.5
W=0.9
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 390 200 0 1 {name=M1
L=0.5
W=0.9
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 300 200 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 630 200 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 540 440 0 0 {name=M2
L=2
W=0.9
nf=1 mult=2
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 390 440 0 1 {name=M3
L=2
W=0.9
nf=1 mult=8
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 300 440 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 630 440 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/res_xhigh_po.sym} 370 520 0 0 {name=R9
W=1
L=12
model=res_xhigh_po
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 350 520 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 370 570 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 560 490 0 0 {name=l7 lab=GND}
C {devices/ammeter.sym} 370 350 0 0 {name=Vmeas}
C {devices/ammeter.sym} 560 320 0 0 {name=Vmeas1}
C {devices/lab_pin.sym} 560 250 0 0 {name=p7 sig_type=std_logic lab=V1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 820 450 0 0 {name=M4
L=4
W=0.9
nf=1 mult=16
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 910 450 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 840 510 0 0 {name=l9 lab=GND}
C {devices/ammeter.sym} 840 310 0 0 {name=Vmeas2}
C {devices/lab_pin.sym} -30 100 0 0 {name=p8 sig_type=std_logic lab=Vx}
C {devices/vsource.sym} -30 170 0 0 {name=V2 value="Vx"}
C {devices/gnd.sym} -30 220 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 840 240 0 0 {name=p9 sig_type=std_logic lab=Vx}

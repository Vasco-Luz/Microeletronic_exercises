v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {By adding a resistance , an overdrive is being added, but it is risky in other aspects
IREF*R should always be lower the for the lower possible vth of the primitive used} 70 -280 0 0 0.4 0.4 {}
N -120 200 -120 220 {
lab=GND}
N -120 100 -120 140 {
lab=VDD}
N -40 200 -40 220 {
lab=GND}
N -40 100 -40 140 {
lab=VIN}
N -40 220 -40 240 {
lab=GND}
N 490 130 490 200 {
lab=#net1}
N 490 20 490 70 {
lab=VIN}
N 490 200 490 220 {
lab=#net1}
N 340 250 450 250 {
lab=VT}
N 300 280 300 310 {
lab=GND}
N 300 250 300 280 {
lab=GND}
N 490 250 490 280 {
lab=GND}
N 490 280 490 310 {
lab=GND}
N 300 -140 300 -110 {
lab=VDD}
N 300 -50 300 50 {
lab=VT}
N 300 110 300 220 {
lab=#net2}
N 300 20 380 20 {
lab=VT}
N 380 20 380 240 {
lab=VT}
N 380 240 380 250 {
lab=VT}
N 490 680 490 750 {
lab=#net3}
N 490 570 490 620 {
lab=VIN}
N 490 750 490 770 {
lab=#net3}
N 340 800 450 800 {
lab=VT1}
N 300 830 300 860 {
lab=GND}
N 300 800 300 830 {
lab=GND}
N 490 800 490 830 {
lab=GND}
N 490 830 490 860 {
lab=GND}
N 300 410 300 440 {
lab=VDD}
N 300 500 300 600 {
lab=VT1}
N 300 660 300 770 {
lab=VT1}
N 300 570 380 570 {
lab=VT1}
N 380 570 380 790 {
lab=VT1}
N 380 790 380 800 {
lab=VT1}
N 300 600 300 660 {
lab=VT1}
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
.TEMP 27
**************************************************************
**************************************************************
**************************************************************
**************************************************************  
*SIMULATION and Plots*****************************************
**************************************************************
**************************************************************
**************************************************************
**************************************************************
.control
save all
dc V2 0 1.8 0.001 
*dc simulation
plot i(Vmeas) i(Vmeas1)
plot v(VT) v(VT1)
plot 1/deriv(i(Vmeas)) 1/deriv(i(Vmeas1))
.endc
"}
C {devices/lab_pin.sym} -120 110 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -120 170 0 0 {name=V1 value=1.8

}
C {devices/vsource.sym} -40 170 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} -120 220 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -40 240 0 0 {name=l5 lab=GND}
C {devices/ammeter.sym} 490 100 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 490 20 1 0 {name=p2 sig_type=std_logic lab=VIN
}
C {sky130_fd_pr/nfet_01v8.sym} 320 250 0 1 {name=M1
L=0.4
W=5
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 300 310 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 490 310 0 0 {name=l2 lab=GND}
C {devices/isource.sym} 300 -80 0 0 {name=I0 value=100u}
C {devices/lab_pin.sym} 300 -140 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/res.sym} 300 80 0 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 470 250 0 0 {name=M2
L=0.4
W=5
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -40 110 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 380 140 0 0 {name=p4 sig_type=std_logic lab=VT
}
C {devices/ammeter.sym} 490 650 0 0 {name=Vmeas1}
C {devices/lab_pin.sym} 490 570 1 0 {name=p5 sig_type=std_logic lab=VIN
}
C {sky130_fd_pr/nfet_01v8.sym} 320 800 0 1 {name=M3
L=0.4
W=5
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 300 860 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 490 860 0 0 {name=l6 lab=GND}
C {devices/isource.sym} 300 470 0 0 {name=I1 value=100u}
C {devices/lab_pin.sym} 300 410 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 470 800 0 0 {name=M4
L=0.4
W=5
nf=2 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 380 690 0 0 {name=p8 sig_type=std_logic lab=VT1
}

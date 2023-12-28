v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Basic PMOS current MIRROr with a bad current generator} 310 0 0 0 0.4 0.4 {}
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
N 800 360 800 430 {
lab=VIN}
N 800 250 800 300 {
lab=#net1}
N 500 580 500 610 {
lab=GND}
N 500 550 500 580 {
lab=GND}
N 500 160 500 190 {
lab=VDD}
N 500 500 500 520 {
lab=#net2}
N 500 400 500 440 {
lab=#net3}
N 540 510 540 550 {
lab=#net2}
N 500 510 540 510 {
lab=#net2}
N 500 190 500 220 {
lab=VDD}
N 500 250 500 330 {
lab=#net4}
N 500 330 500 340 {
lab=#net4}
N 540 220 540 260 {
lab=#net4}
N 500 260 540 260 {
lab=#net4}
N 800 160 800 190 {
lab=VDD}
N 800 190 800 220 {
lab=VDD}
N 540 220 770 220 {
lab=#net4}
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
plot 1/deriv(i(Vmeas)) 
.endc
"}
C {devices/lab_pin.sym} -120 110 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -120 170 0 0 {name=V1 value=1.8

}
C {devices/vsource.sym} -40 170 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} -120 220 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -40 240 0 0 {name=l5 lab=GND}
C {devices/ammeter.sym} 800 330 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 800 430 3 0 {name=p2 sig_type=std_logic lab=VIN
}
C {sky130_fd_pr/nfet_01v8.sym} 520 550 0 1 {name=M1
L=0.25
W=1
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 500 610 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 500 160 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/res.sym} 500 470 0 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -40 110 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {devices/ammeter.sym} 500 370 0 0 {name=Vmeas1}
C {sky130_fd_pr/pfet_01v8.sym} 520 220 0 1 {name=M11
L=0.25
W=2
nf=1 mult=6
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 780 220 0 0 {name=M2
L=0.25
W=2
nf=1 mult=60
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 800 160 0 0 {name=p4 sig_type=std_logic lab=VDD}

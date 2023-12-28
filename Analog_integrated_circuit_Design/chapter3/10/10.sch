v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Design steps:
1- define IREF, and calculate if the dissipated power is under of the specification
2- Design the PMOS so VEFF of the PMOS current mirror is lower then 250 mv (VT of that primitive is 0.55v)
Job done
3-size the input transistor so the peak gain is larguer then 5 V/v(increase the W)
} 700 80 0 0 0.4 0.4 {}
T {Exercise 3.10} 110 -110 0 0 0.4 0.4 {}
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
N 590 210 590 260 {
lab=VOUT}
N 290 120 290 150 {
lab=VDD}
N 290 150 290 180 {
lab=VDD}
N 290 210 290 290 {
lab=VT}
N 330 180 330 220 {
lab=VT}
N 290 220 330 220 {
lab=VT}
N 590 120 590 150 {
lab=VDD}
N 590 150 590 180 {
lab=VDD}
N 290 350 290 420 {
lab=GND}
N 330 180 550 180 {
lab=VT}
N 590 400 590 420 {
lab=GND}
N 590 370 590 400 {
lab=GND}
N 590 260 590 340 {
lab=VOUT}
N 490 370 550 370 {
lab=VIN}
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
plot deriv(V(Vout)) v(VOUT)
plot v(VT)
.endc
"}
C {devices/lab_pin.sym} -120 110 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -120 170 0 0 {name=V1 value=1.8

}
C {devices/vsource.sym} -40 170 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} -120 220 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -40 240 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 290 120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -40 110 0 0 {name=p3 sig_type=std_logic lab=VIN
}
C {sky130_fd_pr/pfet_01v8.sym} 310 180 0 1 {name=M11
L=0.25
W=2
nf=1 mult=5
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 590 120 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 290 320 0 0 {name=I0 value=50u}
C {devices/gnd.sym} 290 420 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 570 180 0 0 {name=M1
L=0.25
W=2
nf=1 mult=5
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 570 370 0 0 {name=M2
L=0.25
W=25
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 590 420 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 490 370 0 0 {name=p2 sig_type=std_logic lab=VIN
}
C {devices/lab_pin.sym} 590 270 0 0 {name=p5 sig_type=std_logic lab=VOUT
}
C {devices/lab_pin.sym} 430 180 1 0 {name=p7 sig_type=std_logic lab=VT
}

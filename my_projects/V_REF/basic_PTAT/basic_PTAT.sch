v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 200 -120 220 {
lab=GND}
N -120 100 -120 140 {
lab=VDD}
N 370 190 370 260 {
lab=V1}
N 370 -40 370 0 {
lab=VDD}
N 370 0 370 30 {
lab=VDD}
N 410 30 410 80 {
lab=#net1}
N 370 80 410 80 {
lab=#net1}
N 370 320 370 370 {
lab=GND}
N 410 290 460 290 {
lab=GND}
N 370 170 370 190 {
lab=V1}
N 370 60 370 110 {
lab=#net1}
N 410 30 520 30 {
lab=#net1}
N 560 -40 560 0 {
lab=VDD}
N 560 0 560 30 {
lab=VDD}
N 560 60 560 100 {
lab=V2}
N 460 290 520 290 {
lab=GND}
N 560 250 560 260 {
lab=#net2}
N 560 320 560 370 {
lab=GND}
N 560 160 560 170 {
lab=#net3}
N 560 230 560 250 {
lab=#net2}
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
dc TEMP -40 125 1 
*dc simulation
plot (V(V2)-V(V1))
plot deriv(V(V2)-V(V1))
plot i(Vmeas) i(Vmeas1)
.endc
"}
C {devices/lab_pin.sym} -120 100 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -120 170 0 0 {name=V1 value=5}
C {devices/gnd.sym} -120 220 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/pnp_05v5.sym} 390 290 0 1 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 390 30 0 1 {name=M9
L=8
W=0.9
nf=1 mult=6
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 370 370 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 370 -40 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 460 290 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 370 230 0 0 {name=p2 sig_type=std_logic lab=V1}
C {devices/ammeter.sym} 370 140 0 0 {name=Vmeas}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 540 30 0 0 {name=M1
L=8
W=0.9
nf=1 mult=6
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 560 -40 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pnp_05v5.sym} 540 290 0 0 {name=Q2
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {devices/gnd.sym} 560 370 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 560 70 0 0 {name=p4 sig_type=std_logic lab=V2}
C {devices/ammeter.sym} 560 200 0 0 {name=Vmeas1}
C {devices/lab_pin.sym} 540 130 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_high_po_0p35.sym} 560 130 0 0 {name=R6
L=14
model=res_high_po_0p35
spiceprefix=X
 mult=1}

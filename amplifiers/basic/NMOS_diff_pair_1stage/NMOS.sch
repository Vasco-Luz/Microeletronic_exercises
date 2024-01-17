v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {BAsic ac gain} 470 -60 0 0 0.4 0.4 {}
T {The phase margin is bad in ngspice } 620 360 0 0 0.4 0.4 {}
N -340 200 -340 220 {
lab=GND}
N -340 100 -340 140 {
lab=VDD}
N 420 260 420 330 {
lab=#net1}
N 420 330 420 350 {
lab=#net1}
N 50 380 160 380 {
lab=#net2}
N 10 300 10 350 {
lab=#net2}
N 90 330 90 380 {
lab=#net2}
N 10 410 10 440 {
lab=GND}
N 420 410 420 440 {
lab=GND}
N 10 200 10 300 {
lab=#net2}
N 10 110 10 140 {
lab=VDD}
N 10 380 10 410 {
lab=GND}
N 420 380 420 410 {
lab=GND}
N 10 330 90 330 {
lab=#net2}
N 340 250 500 250 {
lab=#net1}
N 420 250 420 260 {
lab=#net1}
N 340 220 420 220 {
lab=GND}
N 420 220 500 220 {
lab=GND}
N 160 380 380 380 {
lab=#net2}
N 340 120 340 190 {
lab=#net3}
N 380 90 460 90 {
lab=#net3}
N 500 120 500 190 {
lab=VOUT}
N 420 90 420 140 {
lab=#net3}
N 340 140 420 140 {
lab=#net3}
N 340 60 340 90 {
lab=VDD}
N 500 60 500 90 {
lab=VDD}
N 340 40 340 60 {
lab=VDD}
N 340 40 500 40 {
lab=VDD}
N 500 40 500 60 {
lab=VDD}
N 500 150 610 150 {
lab=VOUT}
N 680 210 680 240 {
lab=GND}
N 240 220 300 220 {
lab=VIN+}
N 540 220 600 220 {
lab=VIN-}
N 610 150 680 150 {
lab=VOUT}
N -280 600 -280 620 {
lab=GND}
N -280 500 -280 540 {
lab=#net4}
N -280 620 -280 640 {
lab=GND}
N -280 410 -280 440 {
lab=VIN+}
N -470 500 -280 500 {
lab=#net4}
N -470 410 -470 440 {
lab=VIN-}
C {sky130_fd_pr/corner.sym} -430 -140 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} -290 -140 0 0 {name=spice only_toplevel=false
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
ac dec 20 1 50G
plot db(v(VOUT))
plot ph(v(VOUT))
.endc
"}
C {devices/lab_pin.sym} -340 110 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -340 170 0 0 {name=V1 value=1.8

}
C {devices/gnd.sym} -340 220 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 10 440 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 420 440 0 0 {name=l2 lab=GND}
C {devices/isource.sym} 10 170 0 0 {name=I0 value=5u}
C {devices/lab_pin.sym} 10 110 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8_nf.sym} 400 380 0 0 {name=M2
L=6
W=0.9  
nf=2 mult=10
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 30 380 0 1 {name=M1
L=6
W=0.9  
nf=2 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_nf.sym} 520 220 0 1 {name=M3
L=1
W=10
nf=6 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 420 220 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/pfet_01v8_nf.sym} 360 90 0 1 {name=M6
L=1
W=5
nf=6 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 420 40 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 680 180 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 680 240 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 670 150 1 0 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 240 220 1 0 {name=p4 sig_type=std_logic lab=VIN+}
C {devices/lab_pin.sym} 600 220 1 0 {name=p5 sig_type=std_logic lab=VIN-}
C {sky130_fd_pr/nfet_01v8_nf.sym} 320 220 0 0 {name=M4
L=1
W=10
nf=6 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_nf.sym} 480 90 0 0 {name=M5
L=1
W=5
nf=6 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -280 570 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} -280 640 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -280 410 0 0 {name=p8 sig_type=std_logic lab=VIN+
}
C {devices/vsource.sym} -280 470 0 0 {name=V4 value="ac 0.5"}
C {devices/vsource.sym} -470 470 0 0 {name=V3 value="ac -0.5"}
C {devices/lab_pin.sym} -470 410 0 0 {name=p7 sig_type=std_logic lab=VIN-
}

v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -20 -80 50 {
lab=V1}
N -80 -250 -80 -210 {
lab=VDD}
N -80 -210 -80 -180 {
lab=VDD}
N -40 -180 -40 -130 {
lab=#net1}
N -80 -130 -40 -130 {
lab=#net1}
N -80 110 -80 160 {
lab=GND}
N -40 80 10 80 {
lab=GND}
N -80 -40 -80 -20 {
lab=V1}
N -80 -150 -80 -100 {
lab=#net1}
N -40 -180 70 -180 {
lab=#net1}
N 110 -250 110 -210 {
lab=VDD}
N 110 -210 110 -180 {
lab=VDD}
N 110 -150 110 -110 {
lab=V2}
N 10 80 70 80 {
lab=GND}
N 110 40 110 50 {
lab=#net2}
N 110 110 110 160 {
lab=GND}
N 110 -50 110 -40 {
lab=#net3}
N 110 20 110 40 {
lab=#net2}
C {sky130_fd_pr/pnp_05v5.sym} -60 80 0 1 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -60 -180 0 1 {name=M9
L=8
W=0.9
nf=1 mult=6
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} -80 160 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -80 -250 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 10 80 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -80 20 0 0 {name=p2 sig_type=std_logic lab=V1}
C {devices/ammeter.sym} -80 -70 0 0 {name=Vmeas}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 90 -180 0 0 {name=M1
L=8
W=0.9
nf=1 mult=6
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 110 -250 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pnp_05v5.sym} 90 80 0 0 {name=Q2
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {devices/gnd.sym} 110 160 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 110 -140 0 0 {name=p4 sig_type=std_logic lab=V2}
C {devices/ammeter.sym} 110 -10 0 0 {name=Vmeas1}
C {devices/lab_pin.sym} 90 -80 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_high_po_0p35.sym} 110 -80 0 0 {name=R6
L=14
model=res_high_po_0p35
spiceprefix=X
 mult=1}

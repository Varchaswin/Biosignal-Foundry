v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {GF180MCU 9-transistor PMOS-input transconductance blocknStandalone schematic and characterization testbench} -1160 160 0 0 0.42 0.42 {}
N -680 -640 -680 -530 {lab=VDD}
N -680 -640 300 -640 {lab=VDD}
N -570 -220 -570 60 {lab=0}
N -450 -230 -450 60 {lab=0}
N -680 60 560 60 {lab=0}
N 20 -640 20 -590 {lab=VDD}
N 20 -530 20 -460 {lab=#net1}
N -100 -460 100 -460 {lab=#net1}
N -100 -330 -100 -190 {lab=#net2}
N -160 -210 -100 -210 {lab=#net2}
N -160 -190 -160 -160 {lab=#net2}
N -100 -130 -100 60 {lab=0}
N 100 -330 100 -190 {lab=#net3}
N 140 -210 160 -210 {lab=#net3}
N 160 -190 160 -160 {lab=#net3}
N 100 -130 100 60 {lab=0}
N 140 -160 160 -160 {lab=#net3}
N 40 -640 40 -560 {lab=VDD}
N 100 -210 140 -210 {lab=#net3}
N -160 -160 -140 -160 {lab=#net2}
N -100 -160 100 -160 {lab=0}
N 0 -160 -0 60 {lab=0}
N -40 -560 -20 -560 {lab=VBIAS}
N -210 -160 -160 -160 {lab=#net2}
N 160 -160 230 -160 {lab=#net3}
N 270 -130 270 60 {lab=0}
N -250 -130 -250 60 {lab=0}
N -250 -320 -250 -190 {lab=#net4}
N -250 -580 -250 -320 {lab=#net4}
N -210 -610 -210 -530 {lab=#net4}
N -250 -530 -210 -530 {lab=#net4}
N -130 -560 -40 -560 {lab=VBIAS}
N -320 -610 -250 -610 {lab=VDD}
N -320 -640 -320 -610 {lab=VDD}
N 270 -580 270 -200 {lab=VOUT}
N 270 -200 270 -190 {lab=VOUT}
N -100 -460 -100 -390 {lab=#net1}
N 100 -460 100 -390 {lab=#net1}
N -130 -500 -130 -490 {lab=0}
N -210 -610 230 -610 {lab=#net4}
N -570 -360 -570 -280 {lab=VINP}
N -570 -360 -140 -360 {lab=VINP}
N -450 -310 -450 -280 {lab=VINN}
N -450 -310 190 -310 {lab=VINN}
N 190 -360 190 -310 {lab=VINN}
N 140 -360 190 -360 {lab=VINN}
N -680 -480 -680 60 {lab=0}
N 270 -610 300 -610 {lab=VDD}
N 300 -640 300 -610 {lab=VDD}
N 270 -440 480 -440 {lab=VOUT}
N 480 -440 560 -440 {lab=VOUT}
N -290 -160 -250 -160 {lab=0}
N -290 -160 -290 -100 {lab=0}
N -290 -100 -250 -100 {lab=0}
N 270 -160 320 -160 {lab=0}
N 320 -160 320 -110 {lab=0}
N 270 -110 320 -110 {lab=0}
N 20 -560 40 -560 {lab=VDD}
N -160 -210 -160 -190 {lab=#net2}
N 160 -210 160 -190 {lab=#net3}
N -100 -360 100 -360 {lab=VDD}
N 20 -430 20 -360 {lab=VDD}
N 20 -430 150 -430 {lab=VDD}
N 150 -640 150 -430 {lab=VDD}
N 550 -440 550 -260 {lab=VOUT}
N 550 -200 550 60 {lab=0}
C {title.sym} -450 820 0 0 {name=l1 author="Surya Varchasvi"}
C {devices/code_shown.sym} -920 280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.temp 27
.options savecurrents reltol=1e-5 abstol=1e-15 gmin=1e-15
"}
C {devices/code_shown.sym} 760 -820 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

op

ac dec 100 0.1 10Meg

let vid = v(vinp)-v(vinn)
let av = v(vout)/vid

let gain_db = db(av)
let phase_deg = 180/pi*cph(av)

plot gain_db xlog
plot phase_deg xlog

meas ac gain_1hz find gain_db at=1
meas ac gain_10hz find gain_db at=10
meas ac ugf when gain_db=0 fall=1

print gain_1hz
print gain_10hz
print ugf

.endc
"}
C {symbols/pfet_03v3.sym} -120 -360 0 0 {name=M1
L=3u W=0.4u nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 120 -360 0 1 {name=M2
L=3u W=0.4u nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 0 -560 0 0 {name=MB
L=6u W=0.9u nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} -120 -160 0 0 {name=M3
L=0.8u W=0.4u nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} 120 -160 0 1 {name=M4
L=0.8u W=0.4u nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} -230 -610 0 1 {name=M7
L=0.8u W=0.4u nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} -230 -160 0 1 {name=M5
L=0.8u W=0.4u nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {symbols/pfet_03v3.sym} 250 -610 0 0 {name=M8
L=0.8u W=0.4u nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=pfet_03v3 spiceprefix=X}
C {symbols/nfet_03v3.sym} 250 -160 0 0 {name=M6
L=0.8u W=0.4u nf=1 mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'" pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'" ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'" sa=0 sb=0 sd=0 model=nfet_03v3 spiceprefix=X}
C {vsource.sym} -680 -500 0 0 {name=VDD value=3.3 savecurrent=true}
C {vsource.sym} -130 -530 0 0 {name=VBIAS value=2.8 savecurrent=true}
C {vsource.sym} -570 -250 0 0 {name=VINP value="DC 2.3 AC 0.5 0" savecurrent=true}
C {vsource.sym} -450 -250 0 0 {name=VINN value="DC 2.3 AC 0.5 180" savecurrent=true}
C {gnd.sym} 0 60 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} -370 -360 0 0 {name=p1 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} -400 -310 0 1 {name=p2 sig_type=std_logic lab=VINN}
C {devices/lab_pin.sym} 300 -440 0 1 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} -50 -560 0 0 {name=p4 sig_type=std_logic lab=VBIAS}
C {devices/lab_pin.sym} -300 -640 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {gnd.sym} -130 -490 0 0 {name=l3 lab=0}
C {res.sym} 550 -230 0 0 {name=R1
value=1T
footprint=1206
device=resistor
m=1}

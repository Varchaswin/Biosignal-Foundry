v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -300 -20 -270 -20 {lab=INA_OUT}
N -270 -45 -270 -20 {lab=INA_OUT}
N -270 -45 -220 -45 {lab=INA_OUT}
N -300 20 -270 20 {lab=VTRIM}
N -270 20 -270 45 {lab=VTRIM}
N -270 45 -220 45 {lab=VTRIM}
N -135 440 175 440 {lab=INT}
N 20 -0 50 -0 {lab=SINGLE_OUT}
N 290 -0 320 -0 {lab=BPF}
C {CCIA_chopped.sym} -430 30 0 0 {name=x1}
C {gf180_ecg_bpf.sym} 80 -70 0 0 {name=XBPF1}
C {gf180_nonoverlap_clkgen.sym} -180 -310 0 0 {name=x2}
C {gf180_diff2se_gain.sym} -100 0 0 0 {name=x3 R1=1Meg R2=2Meg}
C {gf180_ecg_differentiator.sym} 350 -70 0 0 {name=XDIFF1}
C {gf180_ecg_squarer_transistor.sym} -385 350 0 0 {name=XSQT1}
C {gf180_ecg_integrator.sym} -65 410 3 0 {name=XINT1}
C {gf180_ecg_threshold.sym} 205 390 0 0 {name=XTH1}
C {gf180_banba_bgr.sym} 200 -400 0 0 {name=XBGR}
C {devices/iopin.sym} -500 -390 2 0 {name=p_vdd lab=VDD}
C {devices/iopin.sym} -500 -360 2 0 {name=p_vdd1 lab=VSS}
C {devices/iopin.sym} -500 -285 2 0 {name=p_vdd2 lab=electrode_p}
C {devices/iopin.sym} -500 -260 2 0 {name=p_vdd3 lab=electrode_n}
C {devices/iopin.sym} -500 -335 2 0 {name=p_vdd4 lab=CLK}
C {devices/iopin.sym} -500 -310 2 0 {name=p_vdd5 lab=START}
C {devices/iopin.sym} -500 -230 2 0 {name=p_vdd6 lab=VDET}
C {devices/lab_pin.sym} -560 -20 2 1 {name=pbd lab=electrode_p}
C {devices/lab_pin.sym} -560 20 2 1 {name=pbd1 lab=electrode_n}
C {devices/lab_pin.sym} -510 160 1 1 {name=pbd3 lab=VSS}
C {devices/lab_pin.sym} -90 110 1 1 {name=pbd4 lab=VSS}
C {devices/lab_pin.sym} 205 100 1 1 {name=pbd5 lab=VSS}
C {devices/lab_pin.sym} 475 100 1 1 {name=pbd6 lab=VSS}
C {devices/lab_pin.sym} -230 560 1 1 {name=pbd7 lab=VSS}
C {devices/lab_pin.sym} 350 570 1 1 {name=pbd8 lab=VSS}
C {devices/lab_pin.sym} 390 -190 0 1 {name=pbd9 lab=VSS}
C {devices/lab_pin.sym} -210 -210 0 1 {name=pbd10 lab=VSS}
C {devices/lab_pin.sym} 125 245 0 1 {name=pbd11 lab=VSS}
C {devices/lab_pin.sym} 125 355 0 1 {name=pbd12 lab=VDD}
C {devices/lab_pin.sym} 260 570 1 1 {name=pbd13 lab=VDD}
C {devices/lab_pin.sym} -330 560 1 1 {name=pbd14 lab=VDD}
C {devices/lab_pin.sym} 405 100 1 1 {name=pbd15 lab=VDD}
C {devices/lab_pin.sym} 135 100 1 1 {name=pbd16 lab=VDD}
C {devices/lab_pin.sym} -90 -110 3 1 {name=pbd17 lab=VDD}
C {devices/lab_pin.sym} -510 -100 3 1 {name=pbd18 lab=VDD}
C {devices/lab_pin.sym} -210 -410 0 1 {name=pbd19 lab=VDD}
C {devices/lab_pin.sym} 275 -430 0 1 {name=pbd20 lab=VDD}
C {devices/lab_pin.sym} -300 -310 2 1 {name=pbd21 lab=CLK}
C {devices/lab_pin.sym} -60 -355 0 1 {name=pbd22 lab=Phi1}
C {devices/lab_pin.sym} -60 -325 0 1 {name=pbd23 lab=Phi1b}
C {devices/lab_pin.sym} -60 -295 0 1 {name=pbd24 lab=Phi2}
C {devices/lab_pin.sym} -60 -265 0 1 {name=pbd25 lab=Phi2b}
C {devices/lab_pin.sym} -460 -100 3 1 {name=pbd26 lab=Phi1}
C {devices/lab_pin.sym} -430 -100 3 1 {name=pbd27 lab=Phi1b}
C {devices/lab_pin.sym} -400 -100 3 1 {name=pbd28 lab=Phi2}
C {devices/lab_pin.sym} -370 -100 3 1 {name=pbd29 lab=Phi2b}
C {devices/lab_pin.sym} 170 -310 2 1 {name=pbd30 lab=START}
C {devices/lab_pin.sym} 435 465 0 1 {name=pbd31 lab=VDET}
C {devices/lab_pin.sym} 40 0 3 1 {name=pbd32 lab=SINGLE_OUT}
C {devices/lab_pin.sym} 310 0 3 1 {name=pbd33 lab=BPF}
C {devices/lab_pin.sym} -260 -45 3 1 {name=pbd34 lab=INA_OUT}
C {devices/lab_pin.sym} -260 45 1 1 {name=pbd35 lab=VTRIM}
C {devices/lab_pin.sym} 560 0 0 1 {name=pbd36 lab=DIFF}
C {devices/lab_pin.sym} 0 440 1 1 {name=pbd37 lab=INT}
C {devices/lab_pin.sym} -415 400 2 1 {name=pbd39 lab=DIFF}
C {devices/lab_pin.sym} -415 480 2 1 {name=pbd40 lab=DIFF}
C {devices/iopin.sym} -400 -355 2 0 {name=p_vdd7 lab=VREF}
C {devices/iopin.sym} -400 -320 2 0 {name=p_vdd8 lab=VBIAS}
C {devices/iopin.sym} -400 -295 2 0 {name=p_vdd9 lab=VTRIM}
C {devices/iopin.sym} -400 -275 2 0 {name=p_vdd10 lab=INA_OUT}
C {devices/lab_pin.sym} -450 160 1 1 {name=pbd41 lab=VBIAS}
C {devices/lab_pin.sym} -390 160 1 1 {name=pbd42 lab=VBIAS}
C {devices/lab_pin.sym} -95 315 2 1 {name=pbd43 lab=VBIAS}
C {devices/lab_pin.sym} -95 255 2 1 {name=pbd44 lab=VBIAS}
C {devices/lab_pin.sym} -95 365 2 1 {name=pbd45 lab=VREF}
C {devices/lab_pin.sym} -330 320 3 1 {name=pbd46 lab=VREF}
C {devices/lab_pin.sym} -230 320 3 1 {name=pbd47 lab=VREF}
C {devices/lab_pin.sym} 135 -100 3 1 {name=pbd48 lab=VREF}
C {devices/lab_pin.sym} 170 -100 3 1 {name=pbd49 lab=VBIAS}
C {devices/lab_pin.sym} 205 -100 3 1 {name=pbd50 lab=VBIAS}
C {devices/lab_pin.sym} -130 -110 3 1 {name=pbd51 lab=VBIAS}
C {devices/lab_pin.sym} 175 495 2 1 {name=pbd52 lab=REF}
C {devices/lab_pin.sym} 490 -310 0 1 {name=pbd53 lab=REF}
C {devices/lab_pin.sym} 450 -100 3 1 {name=pbd54 lab=VBIAS}
C {devices/lab_pin.sym} 405 -100 3 1 {name=pbd55 lab=VREF}
C {devices/lab_pin.sym} 270 360 3 1 {name=pbd56 lab=VBIAS}
C {devices/lab_pin.sym} -560 80 2 1 {name=pbd57 lab=REF}
C {devices/lab_pin.sym} -220 0 2 1 {name=pbd2 lab=VREF}

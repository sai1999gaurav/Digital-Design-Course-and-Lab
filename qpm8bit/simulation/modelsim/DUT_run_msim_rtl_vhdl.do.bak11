transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/quartmult.vhd}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/MUX4.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/MUX2.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/MUX3.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/MUX.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/left_shift.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/booth2bit_v1.vhd}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/fa5bit.vhd}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/fa1bit.vhd}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/DUT.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/fa16bit.vhd}
vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/fa8bit.vhd}

vcom -93 -work work {/home/gaurav/Desktop/Sem4/EE224/ee224_sample_vhdl_codes/qpm8bit/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all

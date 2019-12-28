transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/gaurav/Desktop/170070008/midsem/Gates.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/lab6/all/terror.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/lab6/all/knife.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/lab6/all/gun.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/lab6/all/DUT.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/lab6/all/bomb.vhdl}
vcom -93 -work work {/home/gaurav/Desktop/lab6/all/all1.vhdl}

vcom -93 -work work {/home/gaurav/Desktop/lab6/all/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all

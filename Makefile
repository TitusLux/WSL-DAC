TOP=tb_dac4
SRC=$(TOP).v dac4.v
OUT=sim
WAVE=waves.vcd

all: run

build:
	iverilog -g2012 -o $(OUT) $(SRC)

run: build
	vvp $(OUT)

waves: run
	gtkwave $(WAVE)

clean:
	rm -f $(OUT) $(WAVE)

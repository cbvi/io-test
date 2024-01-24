.OBJDIR: ./

all:
	gprbuild -P default.gpr

MEM=localhost:11211
GPFLAGS=--memcached-server=$(MEM) --counterexamples=on


proof:
	gnatprove -P default.gpr --level=2 $(GPFLAGS)

maxproof:
	gnatprove -P default.gpr --level=4 $(GPFLAGS)

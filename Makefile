.PHONY: all compare clean

.SUFFIXES:
.SUFFIXES: .asm .o .gbc .png .2bpp .1bpp .pal
.SECONDEXPANSION:

OBJS = src/main.o
EXTRAS = extras/pokemontools

$(foreach obj, $(OBJS), \
	$(eval $(obj:.o=)_dep = $(shell python $(EXTRAS)/scan_includes.py $(obj:.o=.asm))) \
)

all: pokepuzzle.gbc compare

compare: baserom.gbc pokepuzzle.gbc
	cmp $^

$(OBJS): $$*.asm $$($$*_dep)
	@python $(EXTRAS)/gfx.py 2bpp $(2bppq)
	@python $(EXTRAS)/gfx.py 1bpp $(1bppq)
	rgbasm -E -L -i src/ -o $@ $<

pokepuzzle.gbc: $(OBJS)
	rgblink -p 0xff -n $*.sym -m $*.map -O baserom.gbc -o $@ $^
	rgbfix -Cjv -k 01 -l 0x33 -m 0x1b -n 00 -p 0xff -r 03 -t POKEMONPC -i BPNE $@

clean:
	rm -f pokepuzzle.gbc $(OBJS) *.sym *.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +

%.2bpp: %.png
	$(eval 2bppq += $<)
	@rm -f $@

%.1bpp: %.png
	$(eval 1bppq += $<)
	@rm -f $@

rom := pokepuzzle.gbc

rom_obj := \
	src/home.o \
	src/main.o \
	src/ram.o

### Build tools

ifeq (,$(shell which sha1sum))
SHA1 := shasum
else
SHA1 := sha1sum
endif

RGBDS ?=
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink

RGBASMFLAGS  ?= -Weverything -Wtruncation=1
RGBLINKFLAGS ?= -Weverything -Wtruncation=1
RGBFIXFLAGS  ?= -Weverything
RGBGFXFLAGS  ?= -Weverything


### Build targets

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: all puzzle clean tidy compare tools

all: $(rom) compare
puzzle: $(rom) compare

clean: tidy
	find src/gfx \
	     \( -iname '*.1bpp' \
	        -o -iname '*.2bpp' \
	        -o -iname '*.pal' \) \
	     -delete

tidy:
	$(RM) $(rom) \
	      $(rom:.gbc=.sym) \
	      $(rom:.gbc=.map) \
	      $(rom_obj) \
	      src/rgbdscheck.o
	$(MAKE) clean -C tools/

compare: $(rom)
	@$(SHA1) -c rom.sha1

tools:
	$(MAKE) -C tools/


RGBASMFLAGS += -I src/ -P src/includes.asm
# Create a sym/map for debug purposes if `make` run with `DEBUG=1`
ifeq ($(DEBUG),1)
RGBASMFLAGS += -E
endif

src/rgbdscheck.o: src/rgbdscheck.asm
	$(RGBASM) -o $@ $<

# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tidy tools,$(MAKECMDGOALS)))

$(info $(shell $(MAKE) -C tools))

# The dep rules have to be explicit or else missing files won't be reported.
# As a side effect, they're evaluated immediately instead of when the rule is invoked.
# It doesn't look like $(shell) can be deferred so there might not be a better way.
define DEP
$1: $2 $$(shell tools/scan_includes -s -I src/ $2) | src/rgbdscheck.o
	$$(RGBASM) $$(RGBASMFLAGS) -o $$@ $$<
endef

# Dependencies for objects
$(foreach obj, $(rom_obj), $(eval $(call DEP,$(obj),$(obj:.o=.asm))))

endif


%.asm: ;


RGBFIXFLAGS += -Cjv -k 01 -l 0x33 -m MBC5+RAM+BATTERY -p 0xff -r 03 -t POKEMONPC -i BPNE

$(rom): $(rom_obj) src/layout.link
	$(RGBLINK) $(RGBLINKFLAGS) -p 0xff -m $(rom:.gbc=.map) -n $(rom:.gbc=.sym) -l src/layout.link -O baserom.gbc -o $@ $(filter %.o,$^)
	$(RGBFIX) $(RGBFIXFLAGS) $@


### Misc file-specific graphics rules


### Catch-all graphics rules

%.png: ;

%.pal: ;

%.2bpp: %.png
	$(RGBGFX) --colors dmg $(RGBGFXFLAGS) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)

%.1bpp: %.png
	$(RGBGFX) --colors dmg $(RGBGFXFLAGS) --depth 1 -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -d1 -o $@ $@)

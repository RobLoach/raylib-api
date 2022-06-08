RAYLIB_VERSION?=4.0.0
PARSER_ROOT?=vendor/raylib-parser
PARSER?=$(PARSER_ROOT)/parser/raylib_parser
RAYLIB?=vendor/raylib
EXTENSION?=txt
FORMAT?=DEFAULT

all:
	FORMAT=DEFAULT EXTENSION=txt $(MAKE) parse
	FORMAT=JSON EXTENSION=json $(MAKE) parse
	FORMAT=XML EXTENSION=xml $(MAKE) parse
	FORMAT=LUA EXTENSION=lua $(MAKE) parse

$(PARSER_ROOT):
	git clone https://github.com/raysan5/raylib.git --depth 2 $(PARSER_ROOT)

$(RAYLIB):
	git clone https://github.com/raysan5/raylib.git --depth 1 --branch $(RAYLIB_VERSION) $(RAYLIB)

$(PARSER): $(PARSER_ROOT)
	$(MAKE) -C $(PARSER_ROOT)/parser

parse: $(PARSER)
	$(PARSER) -i $(RAYLIB)/src/raylib.h -o raylib_api.$(EXTENSION) -f $(FORMAT) -d RLAPI
	$(PARSER) -i $(RAYLIB)/src/raymath.h -o raymath_api.$(EXTENSION) -f $(FORMAT) -d RMAPI
	$(PARSER) -i $(RAYLIB)/src/extras/easings.h -o easings_api.$(EXTENSION) -f $(FORMAT) -d EASEDEF
	$(PARSER) -i $(RAYLIB)/src/extras/physac.h -o physac_api.$(EXTENSION) -f $(FORMAT) -d PHYSACDEF -t "PHYSAC IMPLEMENTATION"
	$(PARSER) -i $(RAYLIB)/src/extras/raygui.h -o raygui_api.$(EXTENSION) -f $(FORMAT) -d RAYGUIAPI -t "RAYGUI IMPLEMENTATION"
	$(PARSER) -i $(RAYLIB)/src/extras/rmem.h -o rmem_api.$(EXTENSION) -f $(FORMAT) -d RMEMAPI -t "RMEM IMPLEMENTATION"
	$(PARSER) -i $(RAYLIB)/src/rlgl.h -o rlgl_api.$(EXTENSION) -f $(FORMAT) -d RLAPI -t "RLGL IMPLEMENTATION"

clean:
	rm -rf $(PARSER_ROOT) $(RAYLIB) *.json *.txt *.xml *.lua

OBJECTS =			\
	obj/jmlc.o		\
	obj/lexer.o		\
	obj/node.o		\
	obj/parser.o		\
	obj/xmlvisitor.o	\
	obj/yylex.o		\
	obj/yyparse.o

BUILT_SOURCES =			\
	src/yylex.cc		\
	src/yyparse.cc

all: $(BUILT_SOURCES)
	$(MAKE) jmlc

jmlc: $(OBJECTS)
	$(LINK.cc) $^ -o $@

clean:
	$(RM) $(OBJECTS) $(BUILT_SOURCES) jmlc

%.cc: %.ll
	flex -o$@ $<

%.cc: %.yy
	bison -d -o$@ $<

obj/%.o: src/%.cc
	$(COMPILE.cc) $< -o $@

#pragma once

#include <cstddef>
#include <string>

struct parser;

#include "yyparse.h"
#ifndef FLEX_SCANNER
#include "yylex.h"
#endif

void yyerror (YYLTYPE const *llocp, parser *parse, char const *msg);

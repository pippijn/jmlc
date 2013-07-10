#pragma once

#include <cstddef>
#include <string>

struct parser;

#include "yyparse.hpp"
#ifndef FLEX_SCANNER
#include "yylex.hpp"
#endif

void yyerror (YYLTYPE const *llocp, parser *parse, char const *msg);

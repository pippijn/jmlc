install Program ".DEFAULT" [
  (* Target *)
  Name		"jmlc";

  Sources [
    "lexer.cpp";
    "main.cpp";
    "node.cpp";
    "parser.cpp";
    "xmlvisitor.cpp";
    "yylex.lpp";
    "yyparse.ypp";
  ];

  Headers [
    "lexer.h";
    "node.h";
    "parser.h";
    "visitor.h";
    "xmlvisitor.h";
    "ylcode.h";
    "yyparse.hpp";
    "yylex.hpp";
  ];

  Var ("OM_YFLAGS", "-d");
]

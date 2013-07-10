#include <clocale>
#include <cstdlib>

#include "lexer.h"
#include "parser.h"
#include "xmlvisitor.h"

int
main (int argc, char *argv[])
{
  if (argc < 2)
    return EXIT_FAILURE;

  if (!strcmp (argv[1], "--version"))
    {
      puts ("jmlc v0.1");
      return EXIT_SUCCESS;
    }

  if (!strcmp (argv[1], "--help"))
    {
      puts ("usage: jmlc <jmlfile>");
      return EXIT_SUCCESS;
    }

  setlocale (LC_ALL, "");

  lexer lex (argv[1]);
  parser parse (lex);

  if (node *doc = parse ())
    {
      xmlvisitor xml;
      doc->accept (&xml);
    }
  else
    {
      return EXIT_FAILURE;
    }

  return EXIT_SUCCESS;
}

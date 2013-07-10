(* +=====~~~-------------------------------------------------------~~~=====+ *)
(* |                          Test suite description                       | *)
(* +=====~~~-------------------------------------------------------~~~=====+ *)

TestFramework.(run "testsuite" [
  {
    tool = "jmlc";
    suffixes = [".jml"];
    options = None;
    dirs = [
      "jml";
    ];
  };
])

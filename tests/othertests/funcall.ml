open Stdlib

exception Break

let main () =
  let rec _fa _a _b =
    let rec _a_a _c _d =
      _print _d;
      _fb _c
    in
    if _a < 5 then _a_a (_a + 1) _b
  and _fb _d = _fa _d " str2 " in
  _fa 4 " str1 ";
  _fb 1;
  _print "\n"

let _ = main ()

let main = function
  | () ->
      let s1_0 = "hello, " in
      let s2_1 = "world!" in
      TigerLib.printi (TigerLib.size (TigerLib.concat s1_0 s2_1));
      TigerLib.print "\n"

let _ = TigerLib.run main

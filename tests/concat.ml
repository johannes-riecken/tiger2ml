let main = function
  | () ->
      let s1_0 = "Hello, " in
      let s2_1 = "World!" in
      TigerLib.print (TigerLib.concat s1_0 s2_1);
      TigerLib.print "\n"

let _ = TigerLib.run main

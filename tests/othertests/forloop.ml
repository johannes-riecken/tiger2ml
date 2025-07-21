let main = function
  | () ->
      let a_0 = ref 0 in
      for i_1 = 0 to 25 do
        a_0 := !a_0 + 1;
        TigerLib.print (TigerLib.chr (!a_0 + 64))
      done;
      TigerLib.print "\n"

let _ = TigerLib.run main

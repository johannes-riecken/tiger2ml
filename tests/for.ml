let main = function
  | () ->
      for i_0 = 1 to 10 do
        TigerLib.printi i_0;
        TigerLib.print "\n"
      done

let _ = TigerLib.run main

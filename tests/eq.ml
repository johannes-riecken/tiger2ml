let main = function
  | () ->
      let x_0 = Array.make 10 0 in
      let y_1 = Array.make 10 0 in
      TigerLib.printi (if x_0 == y_1 then 1 else 0);
      TigerLib.print "\n";
      TigerLib.printi (if x_0 == x_0 then 1 else 0);
      TigerLib.print "\n"

let _ = TigerLib.run main

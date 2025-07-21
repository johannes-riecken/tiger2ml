let main = function
  | () ->
      let rec fact_0 = function
        | n_1 -> if n_1 = 0 then 1 else n_1 * fact_0 (n_1 - 1)
      in
      TigerLib.printi (fact_0 10);
      TigerLib.print "\n"

let _ = TigerLib.run main

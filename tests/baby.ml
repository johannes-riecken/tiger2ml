let main = function
  | () ->
      let N_0 = 8 in
      let rec fact_1 = function
        | n_2 -> if n_2 = 0 then 1 else n_2 * fact_1 (n_2 - 1)
      in
      fact_1 N_0

let _ = TigerLib.run main

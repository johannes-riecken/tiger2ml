let main = function
  | () ->
      let rec nfib_0 = function
        | n_1 ->
            if n_1 = 0 then 1
            else if n_1 = 1 then 1
            else nfib_0 (n_1 - 1) + nfib_0 (n_1 - 2) + 1
      in
      nfib_0 15

let _ = TigerLib.run main

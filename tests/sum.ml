let main = function
  | () ->
      let rec sum_0 = function
        | n_1 ->
            let s_2 = ref 0 in
            let i_3 = ref 0 in
            (try
               while 1 <> 0 do
                 if !i_3 >= n_1 then raise TigerLib.Break
                 else (
                   s_2 := !s_2 + !i_3;
                   i_3 := !i_3 + 1)
               done
             with TigerLib.Break -> ());
            !s_2
      in
      TigerLib.printi (sum_0 100);
      TigerLib.print "\n"

let _ = TigerLib.run main

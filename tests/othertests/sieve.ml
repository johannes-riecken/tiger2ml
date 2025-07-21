let main = function
  | () ->
      let size_0 = 1000 in
      let sieved_1 = Array.make size_0 0 in
      let rec mod_2 = function
        | n_6 -> ( function m_7 -> n_6 - (m_7 * (n_6 / m_7)))
      and mark_multiples_3 = function
        | n_8 ->
            let i_9 = ref n_8 in
            while !i_9 < size_0 do
              if TigerLib.not (mod_2 !i_9 n_8 <> 0) then
                TigerLib.set sieved_1 !i_9 1 0;
              i_9 := !i_9 + n_8
            done
      and step_4 = function
        | n_10 ->
            if TigerLib.not (TigerLib.get sieved_1 n_10 0 <> 0) then (
              TigerLib.printi n_10;
              TigerLib.print "\n";
              mark_multiples_3 n_10)
      in
      for i_5 = 2 to size_0 - 1 do
        step_4 i_5
      done

let _ = TigerLib.run main

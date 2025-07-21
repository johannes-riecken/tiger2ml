let main = function
  | () ->
      let a_0 = ref 0 in
      for i_1 = 0 to 100 do
        a_0 := !a_0 + 1;
        ()
      done

let _ = TigerLib.run main

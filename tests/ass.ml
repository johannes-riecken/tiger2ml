let main = function
  | () ->
      let a_0 = ref 1 in
      a_0 := 2 + 3

let _ = TigerLib.run main

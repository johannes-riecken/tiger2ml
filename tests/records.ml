type a = { mutable field1 : int; mutable field2 : int }

let main = function
  | () ->
      let x_0 = ref None in
      x_0 := Some { field1 = 1; field2 = 3 };
      TigerLib.printi
        (match !x_0 with None -> raise (TigerLib.Nil 0) | Some x -> x.field1);
      TigerLib.print "\n"

let _ = TigerLib.run main

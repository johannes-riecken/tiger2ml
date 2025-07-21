let main = function
  | () -> TigerLib.printi (if TigerLib.not (0 <> 0) then 1 else 0)

let _ = TigerLib.run main

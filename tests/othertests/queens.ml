let main = function
  | () ->
      let N_0 = 8 in
      let row_1 = Array.make N_0 0 in
      let col_2 = Array.make N_0 0 in
      let diag1_3 = Array.make (N_0 + N_0 - 1) 0 in
      let diag2_4 = Array.make (N_0 + N_0 - 1) 0 in
      let rec printboard_5 = function
        | () ->
            for i_7 = 0 to N_0 - 1 do
              for j_8 = 0 to N_0 - 1 do
                TigerLib.print
                  (if TigerLib.get col_2 i_7 0 = j_8 then " O" else " .")
              done;
              TigerLib.print "\n"
            done;
            TigerLib.print "\n"
      and tryy_6 = function
        | c_9 ->
            if c_9 = N_0 then printboard_5 ()
            else
              for r_10 = 0 to N_0 - 1 do
                if
                  (TigerLib.get row_1 r_10 0 = 0
                  && TigerLib.get diag1_3 (r_10 + c_9) 0 = 0)
                  && TigerLib.get diag2_4 (r_10 + 7 - c_9) 0 = 0
                then (
                  TigerLib.set row_1 r_10 1 0;
                  TigerLib.set diag1_3 (r_10 + c_9) 1 0;
                  TigerLib.set diag2_4 (r_10 + 7 - c_9) 1 0;
                  TigerLib.set col_2 c_9 r_10 0;
                  tryy_6 (c_9 + 1);
                  TigerLib.set row_1 r_10 0 0;
                  TigerLib.set diag1_3 (r_10 + c_9) 0 0;
                  TigerLib.set diag2_4 (r_10 + 7 - c_9) 0 0)
              done
      in
      tryy_6 0

let _ = TigerLib.run main

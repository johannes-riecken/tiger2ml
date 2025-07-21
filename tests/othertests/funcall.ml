let main = function
  | () ->
      let rec fa_0 = function
        | a_2 -> (
            function
            | b_3 ->
                let rec a_a_4 = function
                  | c_5 -> (
                      function
                      | d_6 ->
                          TigerLib.print d_6;
                          fb_1 c_5)
                in
                if a_2 < 5 then a_a_4 (a_2 + 1) b_3)
      and fb_1 = function d_7 -> fa_0 d_7 " str2 " in
      fa_0 4 " str1 ";
      fb_1 1;
      TigerLib.print "\n"

let _ = TigerLib.run main

let main = function
  | () ->
      let asize_0 = ref 0 in
      let row_1 = ref 0 in
      let column_2 = ref 0 in
      let rows_3 = ref 0 in
      let columns_4 = ref 0 in
      let slop_5 = ref 0 in
      let rec mod_6 = function
        | n_27 -> ( function m_28 -> n_27 - (m_28 * (n_27 / m_28)))
      and cmfirst_7 = function
        | sz_29 -> (
            function
            | cls_30 ->
                asize_0 := sz_29;
                columns_4 := cls_30;
                rows_3 := !asize_0 / !columns_4;
                slop_5 := mod_6 !asize_0 !columns_4;
                row_1 := 0;
                column_2 := 0;
                0)
      and cmnext_8 = function
        | () ->
            column_2 := !column_2 + 1;
            if !column_2 >= !columns_4 then (
              column_2 := 0;
              row_1 := !row_1 + 1);
            let i_31 =
              !row_1 + (!column_2 * !rows_3)
              + if !column_2 > !slop_5 then !slop_5 else !column_2
            in
            if !row_1 >= !rows_3 && !column_2 >= !slop_5 then -1 else i_31
      in
      let MAX_9 = 1024 in
      let lines_10 = Array.make MAX_9 "" in
      let nextline_11 = ref 0 in
      let rec getline_12 = function
        | () ->
            let c_25 = ref (TigerLib.getchar ()) in
            let s_26 = ref "" in
            while !c_25 <> "" && !c_25 <> "\n" do
              s_26 := TigerLib.concat !s_26 !c_25;
              c_25 := TigerLib.getchar ()
            done;
            !s_26
      in
      let linesize_13 = 80 in
      let p_14 = ref "" in
      let max_15 = ref 0 in
      let rec print_width_16 = function
        | n_22 -> (
            function
            | s_23 ->
                TigerLib.print s_23;
                for i_24 = TigerLib.size s_23 to n_22 do
                  TigerLib.print " "
                done)
      in
      p_14 := getline_12 ();
      while TigerLib.size !p_14 > 0 do
        let n_17 = TigerLib.size !p_14 in
        if !max_15 < n_17 then max_15 := n_17;
        if !nextline_11 >= MAX_9 then (
          TigerLib.print "too many items\n";
          TigerLib.exit 1);
        TigerLib.set lines_10 !nextline_11 !p_14 0;
        nextline_11 := !nextline_11 + 1;
        p_14 := getline_12 ()
      done;
      let count_18 = ref (linesize_13 / (!max_15 + 2)) in
      let cols_19 = !count_18 in
      let width_20 = !max_15 + 2 in
      let n_21 = ref (cmfirst_7 !nextline_11 cols_19) in
      while !n_21 >= 0 do
        print_width_16 width_20 (TigerLib.get lines_10 !n_21 0);
        count_18 := !count_18 - 1;
        if !count_18 = 0 then (
          TigerLib.print "\n";
          count_18 := cols_19);
        n_21 := cmnext_8 ()
      done;
      if !count_18 <> cols_19 then TigerLib.print "\n"

let _ = TigerLib.run main

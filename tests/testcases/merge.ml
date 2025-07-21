type any = { mutable any : int }
type list = { mutable first : int; mutable rest : list option }

let main = function
  | () ->
      let buffer_0 = ref (TigerLib.getchar ()) in
      let rec readint_1 = function
        | any_16 ->
            let i_17 = ref 0 in
            let rec isdigit_18 = function
              | s_20 ->
                  if
                    TigerLib.ord !buffer_0 >= TigerLib.ord "0"
                    && TigerLib.ord !buffer_0 <= TigerLib.ord "9"
                  then 1
                  else 0
            and skipto_19 = function
              | () ->
                  while !buffer_0 = " " || !buffer_0 = "\n" do
                    buffer_0 := TigerLib.getchar ()
                  done
            in
            skipto_19 ();
            (match any_16 with
            | None -> raise (TigerLib.Nil 0)
            | Some x -> x.any <- isdigit_18 !buffer_0);
            while isdigit_18 !buffer_0 <> 0 do
              i_17 := (!i_17 * 10) + TigerLib.ord !buffer_0 - TigerLib.ord "0";
              buffer_0 := TigerLib.getchar ()
            done;
            !i_17
      in
      let rec readlist_2 = function
        | () ->
            let any_8 = Some { any = 0 } in
            let i_9 = readint_1 any_8 in
            if
              (match any_8 with
              | None -> raise (TigerLib.Nil 0)
              | Some x -> x.any)
              <> 0
            then Some { first = i_9; rest = readlist_2 () }
            else None
      and merge_3 = function
        | a_10 -> (
            function
            | b_11 ->
                if a_10 == None then b_11
                else if b_11 == None then a_10
                else if
                  (match a_10 with
                  | None -> raise (TigerLib.Nil 0)
                  | Some x -> x.first)
                  <
                  match b_11 with
                  | None -> raise (TigerLib.Nil 0)
                  | Some x -> x.first
                then
                  Some
                    {
                      first =
                        (match a_10 with
                        | None -> raise (TigerLib.Nil 0)
                        | Some x -> x.first);
                      rest =
                        merge_3
                          (match a_10 with
                          | None -> raise (TigerLib.Nil 0)
                          | Some x -> x.rest)
                          b_11;
                    }
                else
                  Some
                    {
                      first =
                        (match b_11 with
                        | None -> raise (TigerLib.Nil 0)
                        | Some x -> x.first);
                      rest =
                        merge_3 a_10
                          (match b_11 with
                          | None -> raise (TigerLib.Nil 0)
                          | Some x -> x.rest);
                    })
      and printint_4 = function
        | i_12 ->
            let rec f_13 = function
              | i_14 ->
                  if i_14 > 0 then (
                    f_13 (i_14 / 10);
                    TigerLib.print
                      (TigerLib.chr
                         (i_14 - (i_14 / 10 * 10) + TigerLib.ord "0")))
            in
            if i_12 < 0 then (
              TigerLib.print "-";
              f_13 (-i_12))
            else if i_12 > 0 then f_13 i_12
            else TigerLib.print "0"
      and printlist_5 = function
        | l_15 ->
            if l_15 == None then TigerLib.print "\n"
            else (
              printint_4
                (match l_15 with
                | None -> raise (TigerLib.Nil 0)
                | Some x -> x.first);
              TigerLib.print " ";
              printlist_5
                (match l_15 with
                | None -> raise (TigerLib.Nil 0)
                | Some x -> x.rest))
      in
      let list1_6 = readlist_2 () in
      let list2_7 =
        buffer_0 := TigerLib.getchar ();
        readlist_2 ()
      in
      printlist_5 (merge_3 list1_6 list2_7)

let _ = TigerLib.run main

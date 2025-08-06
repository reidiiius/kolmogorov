(* ministry.ml *)

let utensils () =
  ["all"; "alloys"; "find"; "help"; "keys"; "mars"];;

let toolbars () =
  print_newline ();
  print_string (Char.chr 32 |> String.make 8);
  let funky = (fun cord ->
    Printf.printf "    :%s" cord) in
  let tools = utensils () in
  List.iter funky tools;
  print_newline ();;

let sentinel front words =
  List.find_opt (String.starts_with ~prefix:front) words;;

let switches front words =
  List.filter (String.starts_with ~prefix:front) words;;

let governor width argos =
  let lingos = Array.to_list argos in
  let tester = fun item -> String.length item <= width in
  let claves = List.filter tester lingos in
  if List.length claves = 0 then
    "Excessive" :: claves
  else
    claves;;

let tutorial () =
  let hows = "dune exec stoa" in
  let tips = Printf.sprintf {etx|
	%s :help

	%s :keys

	%s :mars

	%s n0 j3

	%s n0 j3 :cgdae

	%s n0 j3 :beadgcf

	%s :alloys

	%s :find FeNp FePu

	%s :all | sensible-pager
  |etx} hows hows hows hows hows hows hows hows hows
  in print_endline tips;;

let keystone () =
  toolbars ();
  Jacquard.pegboxes ();
  Geoffroy.foxhounds ();;

let solarium () =
  toolbars ();
  Jacquard.pegboxes ();
  Geoffroy.marshaled ();;

let preamble () =
  toolbars ();
  Jacquard.pegboxes ();
  Geoffroy.selections ();;



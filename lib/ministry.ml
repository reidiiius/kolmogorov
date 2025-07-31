(* ministry.ml *)

let sentinel face words =
  List.find_opt (String.starts_with ~prefix:face) words;;

let governor width argos =
  let lingos = Array.to_list argos in
  let tester = fun item -> String.length item <= width in
  let claves = List.filter tester lingos in
  if List.length claves = 0 then
    "Excessive" :: claves
  else
    claves;;

let tutorial () =
  Jacquard.pegboxes ();
  let hows = "dune exec stoa" in
  let tips = Printf.sprintf {etx|
	%s :help

	%s :keys

	%s :mars

	%s n0 j3

	%s n0 j3 :cgdae

	%s n0 j3 :beadgcf

	%s :all | sensible-pager
  |etx} hows hows hows hows hows hows hows
  in print_endline tips;;

let keystone () =
  Jacquard.pegboxes ();
  Geoffroy.foxhounds ();;

let solarium () =
  Jacquard.pegboxes ();
  Geoffroy.marshaled ();;



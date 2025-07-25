(* ministry.ml *)

let layout tuned sign =
  print_newline ();
  if Geoffroy.membership sign then
    match tuned with
    | "beadgcf" -> Jacquard.beadgcf sign
    | "bfbfb" -> Jacquard.bfbfb sign
    | "cgdae" -> Jacquard.cgdae sign
    | "eadgbe" -> Jacquard.eadgbe sign
    | "fkbjdn" -> Jacquard.fkbjdn sign
    | "piano" -> Jacquard.piano sign
    | _ -> Jacquard.piano "i0"
  else
    Printf.printf "\t%s ?\n" sign;;

let cornucopia tuned =
  let clefs = Geoffroy.keynotes () in
    List.iter (layout tuned) clefs;
    print_newline ();;

let governor width argos =
  let lingos = Array.to_list argos in
  let tester = fun item -> String.length item <= width in
  let claves = List.filter tester lingos in
  if List.length claves = 0 then
    "Excessive" :: claves
  else
    claves;;

let juxtapose tuned clefs =
  List.iter (layout tuned) clefs;
  print_newline ();;

let sentinel wire aromas =
  Array.find_opt (String.starts_with ~prefix:wire) aromas;;

let tutorial () =
  let hows = "dune exec stoa" in
  let tips = Printf.sprintf {etx|
	%s :help

	%s :keys

	%s :mars

	%s n0 j3

	%s :all | sensible-pager
  |etx} hows hows hows hows hows
  in print_endline tips;;



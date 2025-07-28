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

let juxtapose tuned words =
  List.iter (layout tuned) words;
  print_newline ();;

let gearbox spot words =
  let harps = Jacquard.attunes () in
  let tuned = List.nth harps spot in
  let funky = (fun item -> not
  (String.starts_with ~prefix:":" item)) in
  let finds = List.filter funky words in
    if List.length finds > 0 then
      juxtapose tuned finds
    else
      Geoffroy.foxhounds ();;

let sentinel face words =
  List.find_opt (String.starts_with ~prefix:face) words;;

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



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

let exampled post =
  let tips = [
    ":help";
    ":keys";
    ":mars";
    "n0 j3";
    "n0 j3 :cgdae";
    ":alloys";
    ":find FeNp FePu";
    ":find j6 k2";
    ":all | sensible-pager";
    ":all :cgdae | sensible-pager"] in
  List.iter (Printf.printf "\n\t%s %s\n" post) tips;
  print_newline ();;

let tutorial () =
  let exec = Filename.basename Sys.executable_name
  and file = Filename.basename __FILE__ in
  if String.equal exec "ocaml" then
    let post = Printf.sprintf "%s %s" exec file in exampled post
  else exampled "dune exec stoa";;

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



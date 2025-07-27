
module Test_Geoffroy = struct

let berzelian = [
  ("i0", "____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ");
  ("j2", "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ____ AgUr ____ FePu ");
  ("j3", "HgSn ____ SnHg UrFe ____ PbAg ____ AuAu ____ AgPb ____ FeUr ");
  ("j5", "PbCu ____ AuSn ____ AgHg TiFe FeTi ____ ____ SnAu ____ CuPb ");
  ("j6", "HgAu ____ SnPb ____ CuUr PbSn ____ AuHg NpFe ____ ____ FeNp ");
  ("k1", "____ FeUr HgSn ____ SnHg UrFe ____ PbAg ____ AuAu ____ AgPb ");
  ("k2", "NpCu ____ ____ FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ");
  ("k5", "UrCu ____ PbSn ____ AuHg NpFe ____ ____ FeNp HgAu ____ SnPb ");
  ("k6", "HgAg ____ SnAu ____ CuPb PbCu ____ AuSn ____ ____ TiFe FeTi ");
  ("n0", "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb ")
];;

let acquire sign =
  try List.assoc sign berzelian;
  with Not_found -> List.assoc "i0" berzelian;;

let membership sign =
  List.mem_assoc sign berzelian;;

let keynotes () =
  fst (List.split berzelian);;

let rec columned size ways =
  let yaws = List.rev ways in
  if size <= 1 then
    begin
      Printf.printf "\t%s" (List.nth yaws (size - 1));
      print_newline ()
    end
  else
    begin
      let cols = 8 in
      if (size mod cols) = 0 then print_newline();
      Printf.printf "\t%s" (List.nth yaws (size - 1));
      columned (size - 1) ways
    end;;

let selections () =
  let clefs = keynotes () in
  let niter = List.length clefs in
    print_newline ();
    columned niter clefs;
    print_newline ();;

let frontage ~prefix:wire item =
  String.starts_with ~prefix:wire item;;

let discern wire lugs =
    List.filter (frontage ~prefix:wire) lugs;;

let foxhounds () =
  let clefs = keynotes () in
  let raised = discern "k" clefs in
  let native = discern "n" clefs in
  let lowish = discern "j" clefs in
    print_newline ();
    columned (List.length raised) raised;
    print_newline ();
    columned (List.length native) native;
    print_newline ();
    columned (List.length lowish) lowish;
    print_newline ();;

let byzantine sign =
  let spat = Char.chr 32 in
  let yarn = acquire sign in
  let labs = String.split_on_char spat yarn in
    if (frontage ~prefix:"Pb" (List.nth labs 5) ||
        frontage ~prefix:"Fe" (List.nth labs 11))
    then sign
    else String.empty;;

let dominican () =
  let clefs = keynotes () in
  let lots = List.map byzantine clefs in
    discern "k" lots @ ["\n"] @
    discern "n" lots @ ["\n"] @
    discern "j" lots;;

let marshaled () =
  let dons = dominican () in
  let numb = List.length dons in
    print_newline ();
    columned numb dons;
    print_newline ();;

end;;

module Test_Jacquard = struct

let machine sign spot span =
  let wire = Test_Geoffroy.acquire sign in
  let long = String.length wire in
  let size = 60 in
    if Int.equal long size then
      let head = String.sub wire spot span in
      let tail = String.sub wire 0 spot in
      let body = String.cat head tail in
      let grow = String.sub body 0 4 in
        String.cat body grow
    else
      String.make size (Char.chr 45);;

(* open strings *)

let sBj sign =
  machine sign 50 10;;

let sFn sign =
  machine sign 25 35;;

let sCn sign =
  machine sign 0 60;;

let sGn sign =
  machine sign 35 25;;

let sDn sign =
  machine sign 10 50;;

let sAn sign =
  machine sign 45 15;;

let sEn sign =
  machine sign 20 40;;

let sBn sign =
  machine sign 55 5;;

let sFk sign =
  machine sign 30 30;;

(* instrument tunings *)

let attunes () =
  ["beadgcf"; "bfbfb"; "cgdae"; "eadgbe"; "fkbjdn"; "piano"];;

let stockade spot =
  let harps = attunes () in
  let width = List.length harps in
  if width > 0 then
    if (spot >= 0) && (spot < width) then
      List.nth harps spot
    else
      List.hd harps
  else
    "piano";;

let diadem sign pegs =
  String.concat "-" [sign; pegs];;

let scribe yarn =
  Printf.printf "\t%s\n" yarn;;

let beadgcf sign =
  scribe (diadem sign "beadgcf");
  List.iter scribe [
    sFn sign;
    sCn sign;
    sGn sign;
    sDn sign;
    sAn sign;
    sEn sign;
    sBn sign
  ];;

let bfbfb sign =
  scribe (diadem sign "bfbfb");
  List.iter scribe [
    sBn sign;
    sFn sign;
    sBn sign;
    sFn sign;
    sBn sign
  ];;

let cgdae sign =
  scribe (diadem sign "cgdae");
  List.iter scribe [
    sEn sign;
    sAn sign;
    sDn sign;
    sGn sign;
    sCn sign
  ];;

let eadgbe sign =
  scribe (diadem sign "eadgbe");
  List.iter scribe [
    sEn sign;
    sBn sign;
    sGn sign;
    sDn sign;
    sAn sign;
    sEn sign
  ];;

let fkbjdn sign =
  scribe (diadem sign "fkbjdn");
  List.iter scribe [
    sDn sign;
    sBj sign;
    sFk sign;
    sDn sign;
    sBj sign;
    sFk sign
  ];;

let piano sign =
  scribe (diadem sign "piano");
  scribe (sCn sign);;

end;;

module Test_Ministry = struct

let layout tuned sign =
  print_newline ();
  if Test_Geoffroy.membership sign then
    match tuned with
    | "beadgcf" -> Test_Jacquard.beadgcf sign
    | "bfbfb" -> Test_Jacquard.bfbfb sign
    | "cgdae" -> Test_Jacquard.cgdae sign
    | "eadgbe" -> Test_Jacquard.eadgbe sign
    | "fkbjdn" -> Test_Jacquard.fkbjdn sign
    | "piano" -> Test_Jacquard.piano sign
    | _ -> Test_Jacquard.piano "i0"
  else
    Printf.printf "\t%s ?\n" sign;;

let cornucopia tuned =
  let clefs = Test_Geoffroy.keynotes () in
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

let tutorial_alt () =
  let path = __FILE__ in
  let name = Filename.basename path in
  let tips = Printf.sprintf {etx|
	ocaml %s --help

	ocaml %s --keys

	ocaml %s --mars

	ocaml %s n0 j3

	ocaml %s --all | sensible-pager
  |etx} name name name name name
  in print_endline tips;;

end;;

module Test_Portico = struct

let argv = [|String.empty; "n0"|];;

let atrium () =
  let quanta = (Array.length argv - 1) in
  let argots = (Array.sub argv 1 quanta) in
  let bounds = List.length (Test_Geoffroy.keynotes ()) in
    if quanta = 0 || quanta >= bounds then
      Test_Geoffroy.selections ()
    else
      let tuned = Test_Jacquard.stockade 4 in
      let clefs = Test_Ministry.governor 9 argots in
      let opted = Test_Ministry.sentinel ":" argots in
        match opted with
        | Some ":all"
        | Some ":a" -> Test_Ministry.cornucopia tuned
        | Some ":help"
        | Some ":h" -> Test_Ministry.tutorial ()
        | Some ":keys"
        | Some ":k" -> Test_Geoffroy.foxhounds ()
        | Some ":mars"
        | Some ":m" -> Test_Geoffroy.marshaled ()
        | Some _
        | None -> Test_Ministry.juxtapose tuned clefs;;

let veranda () =
  let tuned = Test_Jacquard.stockade 0 in
    Test_Ministry.cornucopia tuned;

  let arms = Array.make 2 "0123456789" in
    List.iter print_endline (Test_Ministry.governor 9 arms);

  let clefs = ["n0"; "k9"; "j3"] in
    Test_Ministry.juxtapose tuned clefs;

  let args = [|"j17"; "k12"; "j23"; ":mars"|] in
  let opts = Test_Ministry.sentinel ":" args in
  let pols = Bool.to_string (opts = Some ":mars") in
    print_endline pols;

  Test_Ministry.tutorial ();
  Test_Ministry.tutorial_alt ();
  Test_Geoffroy.foxhounds ();
  Test_Geoffroy.marshaled ();
  Test_Geoffroy.selections ();
  ();;

end;;

Test_Portico.atrium ();;
Test_Portico.veranda ();;




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

let ordnance stems =
  List.sort String.compare stems;;

let keynotes () =
  ordnance (fst (List.split berzelian));;

let bankroll () =
  let clefs = keynotes () in
    List.length clefs;;

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
  let niter = bankroll () in
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

let pegboxes () =
  print_newline ();
  let funky = (fun item ->
    Printf.printf "  %s" item) in
  let gears = attunes () in
  List.iter funky gears;
  print_newline ();;

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
(*
let randomize () =
  Random.self_init ();
  Random.full_int Int.max_int;;
*)
let variant = Int.to_string 284630983437452750;; (* (randomize ()) *)

let diadem sign pegs =
  String.concat "-" [sign; pegs; variant];;

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

(* presentation composition *)

let layout tuned sign =
  print_newline ();
  if Test_Geoffroy.membership sign then
    match tuned with
    | "beadgcf" -> beadgcf sign
    | "bfbfb" -> bfbfb sign
    | "cgdae" -> cgdae sign
    | "eadgbe" -> eadgbe sign
    | "fkbjdn" -> fkbjdn sign
    | "piano" -> piano sign
    | _ -> piano "i0"
  else
    Printf.printf "\t%s ?\n" sign;;

let juxtapose tuned words =
  List.iter (layout tuned) words;
  print_newline ();;

let gearbox spot words =
  let harps = attunes () in
  let tuned = List.nth harps spot in
  let funky = (fun item -> not
  (String.starts_with ~prefix:"-" item)) in
  let finds = List.filter funky words in
    if List.length finds > 0 then
      juxtapose tuned finds
    else
      Test_Geoffroy.foxhounds ();;

let cornucopia tuned =
  let clefs = Test_Geoffroy.keynotes () in
    List.iter (layout tuned) clefs;
    print_newline ();;

let rec dumpster posit =
  let clefs = Test_Geoffroy.keynotes () in
  let harps = attunes () in
  let audit = List.length harps in
  if posit >= (audit - 1) then
    begin
      List.iter (
        fun sign -> layout (List.nth harps posit) sign
      ) clefs;
      print_newline ()
    end
  else
    begin
      List.iter (
        fun sign -> layout (List.nth harps posit) sign
      ) clefs;
      dumpster (posit + 1)
    end;;

end;;

module Test_Ministry = struct

let governor width argos =
  let lingos = Array.to_list argos in
  let tester = fun item -> String.length item <= width in
  let claves = List.filter tester lingos in
  if List.length claves = 0 then
    "Excessive" :: claves
  else
    claves;;

let rec cyclotron spot size =
  let keys = Test_Geoffroy.keynotes () in
  if spot >= (size - 1) then
    begin
      Test_Jacquard.gearbox spot keys
    end
  else
    begin
      Test_Jacquard.gearbox spot keys;
      cyclotron (spot + 1) size
    end;;

let sentinel face words =
  List.find_opt (String.starts_with ~prefix:face) words;;

let tutorial () =
  Test_Jacquard.pegboxes ();
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

let tutorial_utility () =
  Test_Jacquard.pegboxes ();
  let path = __FILE__ in
  let name = Filename.basename path in
  let post = String.cat "ocaml " name in
  let tips = Printf.sprintf {etx|
	%s --help

	%s --keys

	%s --mars

	%s n0 j3

	%s n0 j3 --cgdae

	%s n0 j3 --eadgbe

	%s --all | sensible-pager
  |etx} post post post post post post post
  in print_endline tips;;

end;;

module Test_Portico = struct

let argv = [|String.empty; "n0"|];;

let atrium () =
  let quanta = (Array.length argv - 1) in
  let argots = (Array.sub argv 1 quanta) in
  let bounds = Test_Geoffroy.bankroll () in
    if quanta = 0 || quanta >= bounds then
      Test_Geoffroy.selections ()
    else
      let tuned = Test_Jacquard.stockade 4 in
      let words = Test_Ministry.governor 9 argots in
      let opted = Test_Ministry.sentinel ":" words in
        match opted with
        | Some ":all"
        | Some ":a" -> Test_Jacquard.cornucopia tuned
        | Some ":a4"
        | Some ":b5"
        | Some ":bfbfb" -> Test_Jacquard.gearbox 1 words
        | Some ":bass"
        | Some ":beadgcf" -> Test_Jacquard.gearbox 0 words
        | Some ":cello"
        | Some ":cgdae" -> Test_Jacquard.gearbox 2 words
        | Some ":dump" -> Test_Jacquard.dumpster 0
        | Some ":d5" -> Test_Jacquard.gearbox 1 words
        | Some ":gtr"
        | Some ":guitar"
        | Some ":eadgbe" -> Test_Jacquard.gearbox 3 words
        | Some ":help"
        | Some ":h" -> Test_Ministry.tutorial ()
        | Some ":fkbjdn" -> Test_Jacquard.gearbox 4 words
        | Some ":keys"
        | Some ":k" -> Test_Geoffroy.foxhounds ()
        | Some ":m3" -> Test_Jacquard.gearbox 4 words
        | Some ":mars"
        | Some ":m" -> Test_Geoffroy.marshaled ()
        | Some ":p4" -> Test_Jacquard.gearbox 0 words
        | Some ":p5" -> Test_Jacquard.gearbox 2 words
        | Some ":piano"
        | Some ":u" -> Test_Jacquard.gearbox 5 words
        | Some ":viola"
        | Some ":violin" -> Test_Jacquard.gearbox 2 words
        | Some _
        | None -> Test_Jacquard.juxtapose tuned words;;

let veranda () =
  let tuned = Test_Jacquard.stockade 0 in
    Test_Jacquard.cornucopia tuned;

  let arms = Array.make 2 "0123456789" in
    List.iter print_endline (Test_Ministry.governor 9 arms);

  let words = ["n0"; "k9"; "j3"] in
    Test_Jacquard.juxtapose tuned words;

  let ouds = Test_Jacquard.attunes () in
  let size = List.length ouds in
    Test_Ministry.cyclotron 0 size;

  let args = ["j17"; "k12"; "j23"; ":mars"] in
  let opts = Test_Ministry.sentinel ":" args in
  let pols = Bool.to_string (opts = Some ":mars") in
    print_endline pols;

  Test_Ministry.tutorial ();
  Test_Ministry.tutorial_utility ();
  Test_Geoffroy.foxhounds ();
  Test_Geoffroy.marshaled ();
  Test_Geoffroy.selections ();
  ();;

end;;

Test_Portico.atrium ();;
Test_Portico.veranda ();;



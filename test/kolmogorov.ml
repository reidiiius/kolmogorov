
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

let uniforms () =
  let dice = fun wire -> String.split_on_char '\x20' wire in
  let pans = snd (List.split berzelian) in
  let urns = List.map dice pans in
  let lots = List.flatten urns in
  let lint = fun yarn -> not (frontage ~prefix:"\x5F" yarn) in
  let rock = List.filter lint lots in
    List.sort_uniq String.compare rock;;

let elemental () =
  let ores = uniforms () in
  let size = List.length ores in
    columned size ores;
    print_newline ();;

let scrubber wire =
  List.filter (fun stem -> not
    (frontage ~prefix:"\x5F" stem))
    (String.split_on_char '\x20' wire);;

let inventory spat =
  let numb = ref 0 in
  let hold = Stack.create () in
  List.iter (fun pair ->
    List.iter (fun stem ->
      if String.equal spat stem then
        Stack.push (fst pair) hold
    ) (scrubber (snd pair))
  ) berzelian;
  if not (Stack.is_empty hold) then
    begin
      Stack.iter (fun clef ->
        if !numb mod 8 = 0 then print_newline ();
        Printf.printf "\t%s" clef;
        numb := !numb + 1) hold;
      print_newline ()
    end
  else
    Printf.printf "\n\t%s ?\n" spat;;

  let grouper lints =
    if (List.length lints) < 2 then elemental ()
    else begin
      List.iter (fun skid ->
        if not (frontage ~prefix:":" skid) &&
           not (frontage ~prefix:"j" skid) &&
           not (frontage ~prefix:"k" skid) &&
           not (frontage ~prefix:"n" skid)
        then inventory skid
        else
          if membership skid then
            let wire = acquire skid in
            let lugs = String.split_on_char '\x20' wire in
            let urns = List.sort_uniq String.compare lugs in
            let labs = List.filter (fun stem ->
              not (frontage ~prefix:"_" stem)) urns in
            let chem = String.concat "\x20" labs in
              Printf.printf "\n\t%s {%s }\n" skid chem
          else
            if not (frontage ~prefix:":" skid) then
              Printf.printf "\n\t%s ?\n" skid
            else ()
      ) lints;
      print_newline ()
    end;;

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
  print_string (Char.chr 32 |> String.make 7);
  let funky = (fun cord ->
    Printf.printf "   :%s" cord) in
  let gears = attunes () in
  List.iter funky gears;
  print_newline ();;

let pegboxes_hyphens () =
  print_newline ();
  print_string (Char.chr 32 |> String.make 5);
  let funky = (fun cord ->
    Printf.printf "   --%s" cord) in
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

let rec separate flags count =
  let harps = attunes () in
  let audit = List.length harps in
  let noted = List.nth harps count in
  let sieve = (fun item ->
    String.ends_with ~suffix:noted item) in
  let found = List.exists sieve flags in
  if count >= (audit - 1) || found then
    noted
  else
    separate flags (count + 1);;

let cornucopia tuned flags =
  let clefs = Test_Geoffroy.keynotes () in
  let quant = List.length flags in
  if quant > 1 then
    let raked = separate flags 0 in
    List.iter (layout raked) clefs
  else
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

	%s :alloys

	%s :all | sensible-pager
  |etx} hows hows hows hows hows hows hows hows hows
  in print_endline tips;;

let tutorial_hyphens () =
  let exec = "ocaml" in
  let file = Filename.basename __FILE__ in
  let post = Printf.sprintf "%s %s" exec file in
  let tips = Printf.sprintf {etx|
	%s --help

	%s --keys

	%s --mars

	%s n0 j3

	%s n0 j3 --cgdae

	%s n0 j3 --eadgbe

	%s --alloys

	%s --find FeNp FePu

	%s --all | sensible-pager
  |etx} post post post post post post post post post
  in print_endline tips;;

let keystone () =
  toolbars ();
  Test_Jacquard.pegboxes ();
  Test_Geoffroy.foxhounds ();;

let solarium () =
  toolbars ();
  Test_Jacquard.pegboxes ();
  Test_Geoffroy.marshaled ();;

let preamble () =
  toolbars ();
  Test_Jacquard.pegboxes ();
  Test_Geoffroy.selections ();;

end;;

module Test_Portico = struct

let argv = [|__FILE__; "n0"; "xylophones"|];;

let atrium () =
  let quanta = (Array.length argv - 1) in
  let argots = (Array.sub argv 1 quanta) in
  let bounds = Test_Geoffroy.bankroll () in
    if quanta = 0 || quanta >= bounds then
      Test_Ministry.preamble ()
    else
      let front = ":" in
      let tuned = Test_Jacquard.stockade 4 in
      let words = Test_Ministry.governor 9 argots in
      let flags = Test_Ministry.switches front words in
    if List.length flags > 0 then
      let opted = Test_Ministry.sentinel front words in
        match opted with
        | Some ":alloys" -> Test_Geoffroy.elemental ()
        | Some ":all"
        | Some ":a" -> Test_Jacquard.cornucopia tuned flags
        | Some ":a4"
        | Some ":b5"
        | Some ":bfbfb" -> Test_Jacquard.gearbox 1 words
        | Some ":bass"
        | Some ":beadgcf" -> Test_Jacquard.gearbox 0 words
        | Some ":cello"
        | Some ":cgdae" -> Test_Jacquard.gearbox 2 words
        | Some ":dump" -> Test_Jacquard.dumpster 0
        | Some ":d5" -> Test_Jacquard.gearbox 1 words
        | Some ":f"
        | Some ":find" -> Test_Geoffroy.grouper words
        | Some ":gtr"
        | Some ":guitar"
        | Some ":eadgbe" -> Test_Jacquard.gearbox 3 words
        | Some ":help"
        | Some ":h" -> Test_Ministry.tutorial ()
        | Some ":fkbjdn" -> Test_Jacquard.gearbox 4 words
        | Some ":keys"
        | Some ":k" -> Test_Ministry.keystone ()
        | Some ":m3" -> Test_Jacquard.gearbox 4 words
        | Some ":m"
        | Some ":mars" -> Test_Ministry.solarium ()
        | Some ":metals" -> Test_Geoffroy.elemental ()
        | Some ":p4" -> Test_Jacquard.gearbox 0 words
        | Some ":p5" -> Test_Jacquard.gearbox 2 words
        | Some ":piano"
        | Some ":u" -> Test_Jacquard.gearbox 5 words
        | Some ":viola"
        | Some ":violin" -> Test_Jacquard.gearbox 2 words
        | Some _
        | None -> Test_Jacquard.juxtapose tuned words
    else
      Test_Jacquard.juxtapose tuned words;;

let veranda () =
  let argots = [|"k5"; ":all"; ":beadgcf"|] in
  let quanta = Array.length argots in
  let bounds = Test_Geoffroy.bankroll () in
    if quanta = 0 || quanta >= bounds then
      begin
        Test_Jacquard.pegboxes ();
        Test_Geoffroy.selections ()
      end
    else
  let front = ":" in
  let tuned = Test_Jacquard.stockade 0 in
  let words = Test_Ministry.governor 9 argots in
  let flags = Test_Ministry.switches front words in
    Test_Jacquard.cornucopia tuned flags;

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

  let lints = ["FeNp"; "FePu"; ":find"] in
    Test_Geoffroy.grouper lints;

  Test_Ministry.tutorial ();
  Test_Ministry.tutorial_hyphens ();
  Test_Ministry.keystone ();
  Test_Ministry.solarium ();

  Test_Geoffroy.selections ();
  Test_Geoffroy.foxhounds ();
  Test_Geoffroy.marshaled ();
  Test_Geoffroy.elemental ();

  Test_Jacquard.pegboxes ();
  Test_Jacquard.pegboxes_hyphens ();
  print_newline ();;

end;;

Test_Portico.atrium ();;
Test_Portico.veranda ();;



(* #! /usr/bin/env ocaml *)
(** Module [Thorngate] renders fingerboard matrices for various chordophones. *)

(** Module [Polychrome] supplies [scales] databank and processing functions.*)
module Polychrome = struct

  let scales = [
       "i0", "____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ";
       "j2", "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ____ AgUr ____ FePu ";
       "j3", "HgSn ____ SnHg UrFe ____ PbAg ____ AuAu ____ AgPb ____ FeUr ";
       "j5", "PbCu ____ AuSn ____ AgHg TiFe FeTi ____ ____ SnAu ____ CuPb ";
       "j6", "HgAu ____ SnPb ____ CuUr PbSn ____ AuHg NpFe ____ ____ FeNp ";
       "k1", "____ FeUr HgSn ____ SnHg UrFe ____ PbAg ____ AuAu ____ AgPb ";
       "k2", "NpCu ____ ____ FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ";
       "k5", "UrCu ____ PbSn ____ AuHg NpFe ____ ____ FeNp HgAu ____ SnPb ";
       "k6", "HgAg ____ SnAu ____ CuPb PbCu ____ AuSn ____ ____ TiFe FeTi ";
       "n0", "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb ";
      "j17", "____ ____ SnAu ____ CuPb PbCu ____ AuSn ____ AgHg TiFe FeTi ";
      "j23", "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ____ AgUr ____ FePu ";
      "j25", "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ ____ NpAu ____ TiPb ";
      "j26", "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb NpCu ____ ____ FePu ";
      "j36", "HgAu ____ SnPb UrCu ____ PbSn ____ AuHg NpFe ____ ____ FeNp ";
      "j56", "UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ____ ____ SnPb ";
      "k12", "____ AgUr ____ FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ";
      "k15", "____ CuUr PbSn ____ AuHg NpFe ____ ____ FeNp HgAu ____ SnPb ";
      "k25", "NpCu ____ ____ FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ";
      "k26", "HgMn ____ ____ MnHg CuFe PbTi ____ AuNp ____ ____ TiPb FeCu ";
      "k34", "PbCu ____ AuSn ____ ____ TiFe FeTi HgAg ____ SnAu ____ CuPb ";
      "k56", "HgAu ____ SnPb ____ CuUr PbSn ____ ____ NpFe ____ TiAg FeNp ";
     "j236", "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb NpCu ____ ____ FePu ";
     "j256", "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ AuNp ____ ____ TiPb ";
     "j2k5", "FeCu HgMn ____ ____ MnHg CuFe ____ ____ AuNp NpAu ____ TiPb ";
     "j2k6", "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ____ ____ TiSn FePu ";
     "j2w3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ____ AgUr ____ FePu ";
     "j3k5", "NpCu ____ TiSn FePu ____ PuFe ____ ____ CuNp PbAu ____ AuPb ";
     "j3k6", "HgTi ____ SnNp UrAu ____ PbPb ____ AuUr ____ ____ TiHg FeFe ";
     "j5w6", "PbCu ____ AuSn ____ AgHg TiFe FeTi HgAg ____ ____ ____ CuPb ";
     "k125", "____ AgUr ____ FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ";
     "k1j5", "____ AuUr NpSn ____ TiHg FeFe HgTi ____ ____ UrAu ____ PbPb ";
     "k1j6", "____ PuFe SnTi ____ CuNp PbAu ____ AuPb NpCu ____ ____ FePu ";
     "k256", "HgMn ____ ____ MnHg CuFe PbTi ____ ____ NpAu ____ TiPb FeCu ";
     "k2j5", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ";
     "k2j6", "HgMn ____ ____ MnHg CuFe PbTi ____ AuNp NpAu ____ ____ FeCu ";
     "k2m1", "____ ____ TiSn FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ";
     "k6m5", "HgAg ____ SnAu ____ CuPb PbCu ____ ____ ____ AgHg TiFe FeTi ";
     "n167", "NpCu ____ ____ FePu ____ PuFe SnTi ____ CuNp PbAu ____ AuPb ";
     "n345", "____ PuFe ____ ____ CuNp PbAu ____ AuPb NpCu ____ TiSn FePu ";
     "n5w2", "HgMn ____ ____ MnHg CuFe ____ ____ AuNp NpAu ____ TiPb FeCu ";
     "n6m2", "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ AuNp NpAu ____ ____ ";
    "j17w2", "HgAg ____ ____ ____ CuPb PbCu ____ AuSn ____ AgHg TiFe FeTi ";
    "j23k6", "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ____ ____ TiSn FePu ";
    "j25w6", "TiCu FeMn ____ ____ SnHg MnFe CuTi PbAg ____ ____ ____ AgPb ";
    "j26w3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb NpCu ____ ____ FePu ";
    "j2k34", "TiCu FeMn ____ ____ ____ MnFe CuTi PbAg ____ AuAu ____ AgPb ";
    "j2k56", "HgHg PuFe ____ ____ CuNp PbAu ____ ____ NpCu ____ TiSn FePu ";
    "j34k6", "HgSn ____ SnHg MnFe CuTi ____ ____ AuAu ____ ____ TiCu FeMn ";
    "j56w7", "UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp HgAu ____ ____ ";
    "k12j5", "____ AgUr ____ FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ";
    "k17j5", "TiCu FeMn HgSn ____ SnHg MnFe CuTi ____ ____ AuAu ____ ____ ";
    "k25m1", "____ ____ TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ";
    "k26m5", "HgSn ____ ____ MnFe CuTi PbAg ____ ____ ____ AgPb TiCu FeMn ";
    "k2j17", "____ ____ ____ MnFe CuTi PbAg ____ AuAu ____ AgPb TiCu FeMn ";
    "k2j56", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ CuNp ____ ____ AuPb ";
    "k34m2", "PbCu ____ ____ ____ AgHg TiFe FeTi HgAg ____ SnAu ____ CuPb ";
    "k56m4", "HgAu ____ SnPb ____ CuUr ____ ____ AuHg NpFe ____ TiAg FeNp ";
    "n25m6", "TiCu FeMn HgSn ____ ____ MnFe CuTi PbAg ____ ____ ____ AgPb ";
    "n26w5", "____ ____ SnHg MnFe CuTi PbAg ____ ____ ____ AgPb TiCu FeMn ";
    "n45w2", "HgTi ____ ____ UrAu ____ PbPb ____ AuUr NpSn ____ TiHg FeFe ";
    "n67m2", "____ AuUr ____ ____ TiHg FeFe HgTi ____ SnNp UrAu ____ PbPb ";
   "j126w7", "____ AgUr ____ ____ HgHg PuFe ____ MnAg CuNp PbAu ____ AuPb ";
   "j136w7", "____ ____ SnPb UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ";
   "j167w2", "HgAu ____ ____ ____ CuUr PbSn ____ AuHg NpFe ____ TiAg FeNp ";
   "j246w3", "HgHg PuFe SnTi ____ CuNp ____ ____ AuPb NpCu ____ ____ FePu ";
   "j26w34", "HgHg PuFe SnTi UrAg ____ ____ ____ AuPb NpCu ____ ____ FePu ";
   "j2k6m5", "HgHg PuFe ____ ____ CuNp PbAu ____ ____ ____ AgUr TiSn FePu ";
   "j2k6w3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ____ ____ TiSn FePu ";
   "j346w5", "NpCu ____ TiSn FePu HgHg PuFe ____ ____ CuNp ____ ____ AuPb ";
   "j3k5m4", "HgAu ____ SnPb UrCu ____ ____ ____ AuHg NpFe AgTi ____ FeNp ";
   "k135m4", "____ CuUr PbSn ____ ____ NpFe ____ TiAg FeNp HgAu ____ SnPb ";
   "k157m6", "HgHg PuFe SnTi ____ CuNp PbAu ____ ____ NpCu ____ ____ FePu ";
   "k1j6w7", "____ CuUr PbSn ____ AuHg NpFe ____ TiAg FeNp HgAu ____ ____ ";
   "k235m4", "HgHg ____ ____ UrAg ____ PbAu ____ AuPb NpCu AgMn ____ FePu ";
   "k257m1", "NpCu ____ TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ ____ ";
   "k25m17", "____ AgUr TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ ____ ";
   "k2j5m1", "____ ____ TiSn FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ";
   "k2j5w6", "NpCu ____ ____ FePu HgHg PuFe SnTi UrAg ____ ____ ____ AuPb ";
   "k345m2", "UrCu ____ ____ ____ AuHg NpFe AgTi ____ FeNp HgAu ____ SnPb ";
   "n167m4", "HgAu ____ ____ UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ";
   "n345w7", "____ CuUr ____ ____ AuHg NpFe ____ TiAg FeNp HgAu ____ SnPb ";
  "j2k56m4", "HgHg PuFe ____ ____ CuNp ____ ____ AuPb NpCu ____ TiSn FePu ";
  "j3k56m4", "HgTi ____ SnNp UrAu ____ ____ ____ AuUr NpSn ____ TiHg FeFe ";
  "k1j56w7", "____ AuUr NpSn ____ TiHg FeFe HgTi ____ SnNp UrAu ____ ____ ";
  "k2j56w7", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ CuNp PbAu ____ ____ "
  ]

  let acquire sign =
    try List.assoc sign scales;
    with Not_found -> List.assoc "i0" scales

  let membership sign =
    List.mem_assoc sign scales

  let ordnance stems =
    List.sort String.compare stems

  let keynotes () =
    ordnance (fst (List.split scales))

  let bankroll () =
    let clefs = keynotes () in
      List.length clefs

  let turnkeys () =
    (bankroll (), keynotes ())

  let revealed expo =
    Printf.eprintf "Error: %s\n" expo

  let sideshow lids size =
    try
      Printf.printf "\t%s" (List.nth lids (Int.sub size 1))
    with
    | Invalid_argument expo -> revealed expo
    | Failure expo -> revealed expo

  let rec columned size ways =
    let yaws = List.rev ways in
    if size <= 1 then
      begin
        sideshow yaws size;
        print_newline ()
      end
    else
      begin
        let cols = 8 in
        if (size mod cols) = 0 then print_newline();
        sideshow yaws size;
        columned (Int.sub size 1) ways
      end

  let selections () =
    let (niter, clefs) = turnkeys () in
      print_newline ();
      columned niter clefs;
      print_newline ()

  let frontage wire item =
    String.starts_with ~prefix:wire item

  let discern wire lugs =
      List.filter (frontage wire) lugs

  let foxhounds () =
    let clefs = keynotes () in
    let raised = discern "k" clefs
    and native = discern "n" clefs
    and lowish = discern "j" clefs in
      print_newline ();
      columned (List.length raised) raised;
      print_newline ();
      columned (List.length native) native;
      print_newline ();
      columned (List.length lowish) lowish;
      print_newline ()

  let checkmate labs =
    let span = List.length labs in
    let last = Int.sub span 1 in
    if span >= 12 then
      try
        frontage "Pb" (List.nth labs 5) ||
        frontage "Fe" (List.nth labs last)
      with Failure expo -> revealed expo; false
    else false

  let byzantine sign =
    let spat = Char.chr 32
    and wire = acquire sign in
    let yarn = String.trim wire in
    let labs = String.split_on_char spat yarn in
      if checkmate labs then sign
      else String.empty

  let dominican () =
    let clefs = keynotes () in
    let lots = List.map byzantine clefs in
      List.concat [
        discern "k" lots; ["\n"];
        discern "n" lots; ["\n\n"];
        discern "j" lots]

  let marshaled () =
    let dons = dominican () in
    let numb = List.length dons in
      print_newline ();
      columned numb dons;
      print_newline ()

  let separate wire =
    let spat = Char.chr 32
    and yarn = String.trim wire in
      String.split_on_char spat yarn

  let approval yarn =
    let atom = Char.chr 95 in
    let spat = String.make 1 atom in
    let bore = frontage spat yarn in
      not bore

  let uniforms () =
    let pans = snd (List.split scales) in
    let urns = List.map separate pans in
    let lots = List.flatten urns in
    let ores = List.filter approval lots in
      List.sort_uniq String.compare ores

  let elemental () =
    let ores = uniforms () in
    let size = List.length ores in
      print_newline ();
      columned size ores;
      print_newline ()

  let scrubber wire =
    let yarn = separate wire in
      List.filter approval yarn

  let inventory spat =
    let numb = ref 0
    and hold = Stack.create ()
    and duos = List.rev scales in
    List.iter (fun pair ->
      List.iter (fun stem ->
        if String.equal spat stem then
          Stack.push (fst pair) hold
      ) (scrubber (snd pair))
    ) duos;
    if not (Stack.is_empty hold) then
      begin
        Stack.iter (fun clef ->
          if !numb mod 8 = 0 then print_newline ();
          Printf.printf "\t%s" clef;
          numb := !numb + 1) hold;
        print_newline ()
      end
    else
      Printf.printf "\n\t%s ?\n" spat

  let periodic sift =
    not (frontage "-" sift) &&
    not (frontage "j" sift) &&
    not (frontage "k" sift) &&
    not (frontage "n" sift)

  let refinery seal =
    if periodic seal then inventory seal
    else if membership seal then
      let wire = acquire seal in
      let ores = scrubber wire in
      let labs = List.sort String.compare ores in
      let chem = String.concat "\x20" labs in
        Printf.printf "\n\t%s { %s }\n" seal chem
    else if not (frontage "-" seal) then
      Printf.printf "\n\t%s ?\n" seal
    else ()

  let grouper words =
    let size = List.length words in
    if size < 2 then elemental ()
    else begin
      List.iter refinery words;
      print_newline ()
    end

end

(** Module [Scordatura] supplies instrument tuning and formatting functions. *)
module Scordatura = struct

let zodiac = [
  ("aqr", (50, 10));
  ("ari", (40, 20));
  ("cap", (55,  5));
  ("cnc", (25, 35));
  ("gem", (30, 30));
  ("leo", (20, 40));
  ("lib", (10, 50));
  ("oph", ( 0, 60));
  ("psc", (45, 15));
  ("sco", ( 5, 55));
  ("sgr", (60,  0));
  ("tau", (35, 25));
  ("vir", (15, 45))
]

let obtain stem =
  try List.assoc stem zodiac;
  with Not_found -> List.assoc "oph" zodiac

let machine sign spot span =
  let wire = Polychrome.acquire sign in
  let long = String.length wire in
  let size = 60 in
    if Int.equal long size then
      let head = String.sub wire spot span in
      let tail = String.sub wire 0 spot in
      let body = String.cat head tail in
      let grow = String.sub body 0 4 in
        String.cat body grow
    else
      String.make size (Char.chr 45)

let tensile sign stem =
  let (spot, span) = obtain stem
  in machine sign spot span

(* instrument tunings *)

let attunes () =
  ["beadgcf"; "bfbfb"; "cgdae"; "eadgbe"; "fkbjdn"; "piano"]

let produce () =
  let harps = attunes () in
  let audit = List.length harps in
  (audit, harps)

let lutherie () =
  let harps = attunes ()
  and carve = (fun cord -> Printf.printf "   -%s" cord)
  in List.iter carve harps

let pegboxes () =
  print_newline ();
  print_string (Char.chr 32 |> String.make 7);
  lutherie ();
  print_newline ()

let stockade spot =
  let (audit, harps) = produce () in
  if audit > 0 then
    if (spot >= 0) && (spot < audit) then
      List.nth harps spot
    else
      List.hd harps
  else
    "piano"

let randomize () =
  Random.self_init ();
  Random.full_int Int.max_int

let variant = Int.to_string (randomize ())

let diadem sign pegs =
  String.concat "-" [sign; pegs; variant]

let scribe yarn =
  Printf.printf "\t%s\n" yarn

let engrave sign stem =
  scribe (tensile sign stem)

let lattice sign tons =
  List.iter (engrave sign) tons

let beadgcf sign =
  scribe (diadem sign "beadgcf");
  let tons = ["cnc"; "sgr"; "tau"; "lib"; "psc"; "leo"; "cap"]
  in lattice sign tons

let bfbfb sign =
  scribe (diadem sign "bfbfb");
  let tons = ["cap"; "cnc"; "cap"; "cnc"; "cap"]
  in lattice sign tons

let cgdae sign =
  scribe (diadem sign "cgdae");
  let tons = ["leo"; "psc"; "lib"; "tau"; "sgr"]
  in lattice sign tons

let eadgbe sign =
  scribe (diadem sign "eadgbe");
  let tons = ["leo"; "cap"; "tau"; "lib"; "psc"; "leo"]
  in lattice sign tons

let fkbjdn sign =
  scribe (diadem sign "fkbjdn");
  let tons = ["lib"; "aqr"; "gem"; "lib"; "aqr"; "gem"]
  in lattice sign tons

let piano sign =
  scribe (diadem sign "piano");
  let tons = ["sgr"]
  in lattice sign tons

(* presentation composition *)

let layout tuned sign =
  print_newline ();
  if Polychrome.membership sign then
    match tuned with
    | "beadgcf" -> beadgcf sign
    | "bfbfb" -> bfbfb sign
    | "cgdae" -> cgdae sign
    | "eadgbe" -> eadgbe sign
    | "fkbjdn" -> fkbjdn sign
    | "piano" -> piano sign
    | _ -> piano "i0"
  else
    Printf.printf "\t%s ?\n" sign

let juxtapose tuned words =
  List.iter (layout tuned) words;
  print_newline ()

let bounced stem =
  let atom = Char.chr 45 in
  let face = String.make 1 atom in
    not (String.starts_with ~prefix:face stem)

let gearbox spot words =
  let (audit, harps) = produce () in
    if (spot >= 0) && (spot <= (audit - 1)) then
      let tuned = List.nth harps spot
      and finds = List.filter bounced words in
        if List.length finds > 0 then
          juxtapose tuned finds
        else
          Polychrome.foxhounds ()
    else begin
      pegboxes ();
      print_newline ()
    end

let caboose noted sieve =
  String.ends_with ~suffix:noted sieve

let rec assemble flags count =
  let (audit, harps) = produce () in
  let noted = List.nth harps count in
  let found = List.exists (caboose noted) flags in
  if count >= (audit - 1) || found then noted
  else assemble flags (count + 1)

let cornucopia tuned flags =
  let clefs = Polychrome.keynotes ()
  and quant = List.length flags in
  if quant > 1 then
    let raked = assemble flags 0 in
    List.iter (layout raked) clefs
  else
    List.iter (layout tuned) clefs;
  print_newline ()

let coworker harps posit sign =
  let tuned = List.nth harps posit in
    layout tuned sign

let rec dumpster posit =
  let clefs = Polychrome.keynotes ()
  and (audit, harps) = produce () in
  if posit >= (audit - 1) then
    begin
      List.iter (coworker harps posit) clefs;
      print_newline ()
    end
  else
    begin
      List.iter (coworker harps posit) clefs;
      dumpster (posit + 1)
    end

end

(** Module [Technician] supplies display and support functions. *)
module Technician = struct

let utensils () =
  ["all"; "alloys"; "find"; "help"; "keys"; "mars"]

let woodshed () =
  let tools = utensils ()
  and apply = (fun name -> Printf.printf "    -%s" name)
  in List.iter apply tools

let toolbars () =
  print_newline ();
  print_string (Char.chr 32 |> String.make 8);
  woodshed ();
  print_newline ()

let sentinel front words =
  List.find_opt (String.starts_with ~prefix:front) words

let switches front words =
  List.filter (String.starts_with ~prefix:front) words

let governor width argos =
  let lingos = Array.to_list argos in
  let tester = fun item -> String.length item <= width in
  let linted = List.filter tester lingos in
  if List.length linted = 0 then ["Excessive"]
  else linted

let exampled post =
  let tips = [
    "-help";
    "-keys";
    "-mars";
    "n0 j3";
    "n0 j3 -cgdae";
    "-alloys";
    "-find FeNp FePu";
    "-find j6 k2";
    "-all | sensible-pager";
    "-all -cgdae | sensible-pager"] in
  List.iter (Printf.printf "\n\t%s %s\n" post) tips;
  print_newline ()

let tutorial () =
  let exec = Filename.basename Sys.executable_name
  and file = Filename.basename __FILE__ in
  if String.equal exec "ocaml" then
    let post = Printf.sprintf "%s %s" exec file in exampled post
  else exampled exec

let keystone () =
  toolbars ();
  Scordatura.pegboxes ();
  Polychrome.foxhounds ()

let solarium () =
  toolbars ();
  Scordatura.pegboxes ();
  Polychrome.marshaled ()

let preamble () =
  toolbars ();
  Scordatura.pegboxes ();
  Polychrome.selections ()

end

(** Module [Colonnade] contains the program entry point or main function. *)
module Colonnade = struct

(** Application entryway *)
let vestibule () =
  let quanta = (Array.length Sys.argv - 1) in
  let argots = (Array.sub Sys.argv 1 quanta)
  and bounds = Polychrome.bankroll () in
    if quanta = 0 || quanta >= bounds then
      Technician.preamble ()
    else
      let front = "-"
      and tuned = Scordatura.stockade 0
      and words = Technician.governor 9 argots in
      let flags = Technician.switches front words in
    if List.length flags > 0 then
      let opted = Technician.sentinel front words in
        match opted with
        | Some "-alloys" -> Polychrome.elemental ()
        | Some "-all"
        | Some "-a" -> Scordatura.cornucopia tuned flags
        | Some "-a4"
        | Some "-b5"
        | Some "-bfbfb" -> Scordatura.gearbox 1 words
        | Some "-bass"
        | Some "-beadgcf" -> Scordatura.gearbox 0 words
        | Some "-cello"
        | Some "-cgdae" -> Scordatura.gearbox 2 words
        | Some "-dump" -> Scordatura.dumpster 0
        | Some "-d5" -> Scordatura.gearbox 1 words
        | Some "-f"
        | Some "-find" -> Polychrome.grouper words
        | Some "-gtr"
        | Some "-guitar"
        | Some "-eadgbe" -> Scordatura.gearbox 3 words
        | Some "-help"
        | Some "-h" -> Technician.tutorial ()
        | Some "-fkbjdn" -> Scordatura.gearbox 4 words
        | Some "-keys"
        | Some "-k" -> Technician.keystone ()
        | Some "-m3" -> Scordatura.gearbox 4 words
        | Some "-m"
        | Some "-mars" -> Technician.solarium ()
        | Some "-metals" -> Polychrome.elemental ()
        | Some "-p4" -> Scordatura.gearbox 0 words
        | Some "-p5" -> Scordatura.gearbox 2 words
        | Some "-piano"
        | Some "-u" -> Scordatura.gearbox 5 words
        | Some "-viola"
        | Some "-violin" -> Scordatura.gearbox 2 words
        | Some _
        | None -> Scordatura.juxtapose tuned words
    else
      Scordatura.juxtapose tuned words

end

let () = Colonnade.vestibule ()



(* kolmogorov.ml *)

module Geoffroy = struct

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
      ("n0", "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb ");
     ("j17", "____ ____ SnAu ____ CuPb PbCu ____ AuSn ____ AgHg TiFe FeTi ");
     ("j23", "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ____ AgUr ____ FePu ");
     ("j25", "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ ____ NpAu ____ TiPb ");
     ("j26", "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb NpCu ____ ____ FePu ");
     ("j36", "HgAu ____ SnPb UrCu ____ PbSn ____ AuHg NpFe ____ ____ FeNp ");
     ("j56", "UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ____ ____ SnPb ");
     ("k12", "____ AgUr ____ FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ");
     ("k15", "____ CuUr PbSn ____ AuHg NpFe ____ ____ FeNp HgAu ____ SnPb ");
     ("k25", "NpCu ____ ____ FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ");
     ("k26", "HgMn ____ ____ MnHg CuFe PbTi ____ AuNp ____ ____ TiPb FeCu ");
     ("k34", "PbCu ____ AuSn ____ ____ TiFe FeTi HgAg ____ SnAu ____ CuPb ");
     ("k56", "HgAu ____ SnPb ____ CuUr PbSn ____ ____ NpFe ____ TiAg FeNp ");
    ("j236", "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb NpCu ____ ____ FePu ");
    ("j256", "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ AuNp ____ ____ TiPb ");
    ("j2k5", "FeCu HgMn ____ ____ MnHg CuFe ____ ____ AuNp NpAu ____ TiPb ");
    ("j2k6", "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ____ ____ TiSn FePu ");
    ("j2w3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ____ AgUr ____ FePu ");
    ("j3k5", "NpCu ____ TiSn FePu ____ PuFe ____ ____ CuNp PbAu ____ AuPb ");
    ("j3k6", "HgTi ____ SnNp UrAu ____ PbPb ____ AuUr ____ ____ TiHg FeFe ");
    ("j5w6", "PbCu ____ AuSn ____ AgHg TiFe FeTi HgAg ____ ____ ____ CuPb ");
    ("k125", "____ AgUr ____ FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ");
    ("k1j5", "____ AuUr NpSn ____ TiHg FeFe HgTi ____ ____ UrAu ____ PbPb ");
    ("k1j6", "____ PuFe SnTi ____ CuNp PbAu ____ AuPb NpCu ____ ____ FePu ");
    ("k256", "HgMn ____ ____ MnHg CuFe PbTi ____ ____ NpAu ____ TiPb FeCu ");
    ("k2j5", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ");
    ("k2j6", "HgMn ____ ____ MnHg CuFe PbTi ____ AuNp NpAu ____ ____ FeCu ");
    ("k2m1", "____ ____ TiSn FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ");
    ("k6m5", "HgAg ____ SnAu ____ CuPb PbCu ____ ____ ____ AgHg TiFe FeTi ");
    ("n167", "NpCu ____ ____ FePu ____ PuFe SnTi ____ CuNp PbAu ____ AuPb ");
    ("n345", "____ PuFe ____ ____ CuNp PbAu ____ AuPb NpCu ____ TiSn FePu ");
    ("n5w2", "HgMn ____ ____ MnHg CuFe ____ ____ AuNp NpAu ____ TiPb FeCu ");
    ("n6m2", "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ AuNp NpAu ____ ____ ");
   ("j17w2", "HgAg ____ ____ ____ CuPb PbCu ____ AuSn ____ AgHg TiFe FeTi ");
   ("j23k6", "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ____ ____ TiSn FePu ");
   ("j25w6", "TiCu FeMn ____ ____ SnHg MnFe CuTi PbAg ____ ____ ____ AgPb ");
   ("j26w3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb NpCu ____ ____ FePu ");
   ("j2k34", "TiCu FeMn ____ ____ ____ MnFe CuTi PbAg ____ AuAu ____ AgPb ");
   ("j2k56", "HgHg PuFe ____ ____ CuNp PbAu ____ ____ NpCu ____ TiSn FePu ");
   ("j34k6", "HgSn ____ SnHg MnFe CuTi ____ ____ AuAu ____ ____ TiCu FeMn ");
   ("j56w7", "UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp HgAu ____ ____ ");
   ("k12j5", "____ AgUr ____ FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ");
   ("k17j5", "TiCu FeMn HgSn ____ SnHg MnFe CuTi ____ ____ AuAu ____ ____ ");
   ("k25m1", "____ ____ TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ");
   ("k26m5", "HgSn ____ ____ MnFe CuTi PbAg ____ ____ ____ AgPb TiCu FeMn ");
   ("k2j17", "____ ____ ____ MnFe CuTi PbAg ____ AuAu ____ AgPb TiCu FeMn ");
   ("k2j56", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ CuNp ____ ____ AuPb ");
   ("k34m2", "PbCu ____ ____ ____ AgHg TiFe FeTi HgAg ____ SnAu ____ CuPb ");
   ("k56m4", "HgAu ____ SnPb ____ CuUr ____ ____ AuHg NpFe ____ TiAg FeNp ");
   ("n25m6", "TiCu FeMn HgSn ____ ____ MnFe CuTi PbAg ____ ____ ____ AgPb ");
   ("n26w5", "____ ____ SnHg MnFe CuTi PbAg ____ ____ ____ AgPb TiCu FeMn ");
   ("n45w2", "HgTi ____ ____ UrAu ____ PbPb ____ AuUr NpSn ____ TiHg FeFe ");
   ("n67m2", "____ AuUr ____ ____ TiHg FeFe HgTi ____ SnNp UrAu ____ PbPb ");
  ("j126w7", "____ AgUr ____ ____ HgHg PuFe ____ MnAg CuNp PbAu ____ AuPb ");
  ("j136w7", "____ ____ SnPb UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ");
  ("j167w2", "HgAu ____ ____ ____ CuUr PbSn ____ AuHg NpFe ____ TiAg FeNp ");
  ("j246w3", "HgHg PuFe SnTi ____ CuNp ____ ____ AuPb NpCu ____ ____ FePu ");
  ("j26w34", "HgHg PuFe SnTi UrAg ____ ____ ____ AuPb NpCu ____ ____ FePu ");
  ("j2k6m5", "HgHg PuFe ____ ____ CuNp PbAu ____ ____ ____ AgUr TiSn FePu ");
  ("j2k6w3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ____ ____ TiSn FePu ");
  ("j346w5", "NpCu ____ TiSn FePu HgHg PuFe ____ ____ CuNp ____ ____ AuPb ");
  ("j3k5m4", "HgAu ____ SnPb UrCu ____ ____ ____ AuHg NpFe AgTi ____ FeNp ");
  ("k135m4", "____ CuUr PbSn ____ ____ NpFe ____ TiAg FeNp HgAu ____ SnPb ");
  ("k157m6", "HgHg PuFe SnTi ____ CuNp PbAu ____ ____ NpCu ____ ____ FePu ");
  ("k1j6w7", "____ CuUr PbSn ____ AuHg NpFe ____ TiAg FeNp HgAu ____ ____ ");
  ("k235m4", "HgHg ____ ____ UrAg ____ PbAu ____ AuPb NpCu AgMn ____ FePu ");
  ("k257m1", "NpCu ____ TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ ____ ");
  ("k25m17", "____ AgUr TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ ____ ");
  ("k2j5m1", "____ ____ TiSn FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ");
  ("k2j5w6", "NpCu ____ ____ FePu HgHg PuFe SnTi UrAg ____ ____ ____ AuPb ");
  ("k345m2", "UrCu ____ ____ ____ AuHg NpFe AgTi ____ FeNp HgAu ____ SnPb ");
  ("n167m4", "HgAu ____ ____ UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ");
  ("n345w7", "____ CuUr ____ ____ AuHg NpFe ____ TiAg FeNp HgAu ____ SnPb ");
 ("j2k56m4", "HgHg PuFe ____ ____ CuNp ____ ____ AuPb NpCu ____ TiSn FePu ");
 ("j3k56m4", "HgTi ____ SnNp UrAu ____ ____ ____ AuUr NpSn ____ TiHg FeFe ");
 ("k1j56w7", "____ AuUr NpSn ____ TiHg FeFe HgTi ____ SnNp UrAu ____ ____ ");
 ("k2j56w7", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ CuNp PbAu ____ ____ ")
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

  let turnkeys () =
    (bankroll (), keynotes ());;

  let revealed expo =
    Printf.eprintf "Error: %s\n" expo;;

  let sideshow lids size =
    try
      Printf.printf "\t%s" (List.nth lids (Int.sub size 1))
    with
    | Invalid_argument expo -> revealed expo
    | Failure expo -> revealed expo;;

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
      end;;

  let selections () =
    let (niter, clefs) = turnkeys () in
      print_newline ();
      columned niter clefs;
      print_newline ();;

  let frontage wire item =
    String.starts_with ~prefix:wire item;;

  let discern wire lugs =
      List.filter (frontage wire) lugs;;

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
      print_newline ();;

  let checkmate labs =
    let span = List.length labs in
    let last = Int.sub span 1 in
    if span >= 12 then
      try
        frontage "Pb" (List.nth labs 5) ||
        frontage "Fe" (List.nth labs last)
      with Failure expo -> revealed expo; false
    else false;;

  let byzantine sign =
    let spat = Char.chr 32
    and wire = acquire sign in
    let yarn = String.trim wire in
    let labs = String.split_on_char spat yarn in
      if checkmate labs then sign
      else String.empty;;

  let dominican () =
    let clefs = keynotes () in
    let lots = List.map byzantine clefs in
      List.concat [
        discern "k" lots; ["\n"];
        discern "n" lots; ["\n\n"];
        discern "j" lots];;

  let marshaled () =
    let dons = dominican () in
    let numb = List.length dons in
      print_newline ();
      columned numb dons;
      print_newline ();;

  let separate wire =
    let spat = Char.chr 32
    and yarn = String.trim wire in
      String.split_on_char spat yarn;;

  let approval yarn =
    let atom = Char.chr 95 in
    let spat = String.make 1 atom in
    let bore = frontage spat yarn in
      not bore;;

  let uniforms () =
    let pans = snd (List.split berzelian) in
    let urns = List.map separate pans in
    let lots = List.flatten urns in
    let ores = List.filter approval lots in
      List.sort_uniq String.compare ores;;

  let elemental () =
    let ores = uniforms () in
    let size = List.length ores in
      print_newline ();
      columned size ores;
      print_newline ();;

  let scrubber wire =
    let yarn = separate wire in
      List.filter approval yarn;;

  let inventory spat =
    let numb = ref 0
    and hold = Stack.create ()
    and duos = List.rev berzelian in
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
      Printf.printf "\n\t%s ?\n" spat;;

  let periodic sift =
    not (frontage ":" sift) &&
    not (frontage "j" sift) &&
    not (frontage "k" sift) &&
    not (frontage "n" sift);;

  let refinery seal =
    if periodic seal then inventory seal
    else if membership seal then
      let wire = acquire seal in
      let ores = scrubber wire in
      let labs = List.sort String.compare ores in
      let chem = String.concat "\x20" labs in
        Printf.printf "\n\t%s { %s }\n" seal chem
    else if not (frontage ":" seal) then
      Printf.printf "\n\t%s ?\n" seal
    else ();;

  let grouper words =
    let size = List.length words in
    if size < 2 then elemental ()
    else begin
      List.iter refinery words;
      print_newline ()
    end;;

end;;

module Jacquard = struct

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
];;

let obtain stem =
  try List.assoc stem zodiac;
  with Not_found -> List.assoc "oph" zodiac;;

let machine sign spot span =
  let wire = Geoffroy.acquire sign in
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

let tensile sign stem =
  let (spot, span) = obtain stem
  in machine sign spot span;;

(* instrument tunings *)

let attunes () =
  ["beadgcf"; "bfbfb"; "cgdae"; "eadgbe"; "fkbjdn"; "piano"];;

let produce () =
  let harps = attunes () in
  let audit = List.length harps in
  (audit, harps);;

let lutherie () =
  let harps = attunes ()
  and carve = (fun cord -> Printf.printf "   :%s" cord)
  in List.iter carve harps;;

let pegboxes () =
  print_newline ();
  print_string (Char.chr 32 |> String.make 7);
  lutherie ();
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
let variant = Int.to_string 3971809718987134967;; (* (randomize ()) *)

let diadem sign pegs =
  String.concat "-" [sign; pegs; variant];;

let scribe yarn =
  Printf.printf "\t%s\n" yarn;;

let engrave sign stem =
  scribe (tensile sign stem);;

let lattice sign tons =
  List.iter (engrave sign) tons;;

let beadgcf sign =
  scribe (diadem sign "beadgcf");
  let tons = ["cnc"; "sgr"; "tau"; "lib"; "psc"; "leo"; "cap"]
  in lattice sign tons;;

let bfbfb sign =
  scribe (diadem sign "bfbfb");
  let tons = ["cap"; "cnc"; "cap"; "cnc"; "cap"]
  in lattice sign tons;;

let cgdae sign =
  scribe (diadem sign "cgdae");
  let tons = ["leo"; "psc"; "lib"; "tau"; "sgr"]
  in lattice sign tons;;

let eadgbe sign =
  scribe (diadem sign "eadgbe");
  let tons = ["leo"; "cap"; "tau"; "lib"; "psc"; "leo"]
  in lattice sign tons;;

let fkbjdn sign =
  scribe (diadem sign "fkbjdn");
  let tons = ["lib"; "aqr"; "gem"; "lib"; "aqr"; "gem"]
  in lattice sign tons;;

let piano sign =
  scribe (diadem sign "piano");
  let tons = ["sgr"]
  in lattice sign tons;;

(* presentation composition *)

let layout tuned sign =
  print_newline ();
  if Geoffroy.membership sign then
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

let bounced stem =
  let atom = Char.chr 58 in
  let face = String.make 1 atom in
    not (String.starts_with ~prefix:face stem);;

let gearbox spot words =
  let (audit, harps) = produce () in
    if (spot >= 0) && (spot <= (audit - 1)) then
      let tuned = List.nth harps spot
      and finds = List.filter bounced words in
        if List.length finds > 0 then
          juxtapose tuned finds
        else
          Geoffroy.foxhounds ()
    else begin
      pegboxes ();
      print_newline ()
    end;;

let caboose noted sieve =
  String.ends_with ~suffix:noted sieve;;

let rec assemble flags count =
  let (audit, harps) = produce () in
  let noted = List.nth harps count in
  let found = List.exists (caboose noted) flags in
  if count >= (audit - 1) || found then noted
  else assemble flags (count + 1);;

let cornucopia tuned flags =
  let clefs = Geoffroy.keynotes () in
  let quant = List.length flags in
  if quant > 1 then
    let raked = assemble flags 0 in
    List.iter (layout raked) clefs
  else
    List.iter (layout tuned) clefs;
  print_newline ();;

let coworker harps posit sign =
  let tuned = List.nth harps posit in
    layout tuned sign;;

let rec dumpster posit =
  let clefs = Geoffroy.keynotes ()
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
    end;;

end;;

module Ministry = struct

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
  else exampled file;;

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

end;;

module Portico = struct

(* application entryway *)

let atrium () =
  let quanta = (Array.length Sys.argv - 1) in
  let argots = (Array.sub Sys.argv 1 quanta) in
  let bounds = Geoffroy.bankroll () in
    if quanta = 0 || quanta >= bounds then
      Ministry.preamble ()
    else
      let front = ":" in
      let tuned = Jacquard.stockade 3 in
      let words = Ministry.governor 9 argots in
      let flags = Ministry.switches front words in
    if List.length flags > 0 then
      let opted = Ministry.sentinel front words in
        match opted with
        | Some ":alloys" -> Geoffroy.elemental ()
        | Some ":all"
        | Some ":a" -> Jacquard.cornucopia tuned flags
        | Some ":a4"
        | Some ":b5"
        | Some ":bfbfb" -> Jacquard.gearbox 1 words
        | Some ":bass"
        | Some ":beadgcf" -> Jacquard.gearbox 0 words
        | Some ":cello"
        | Some ":cgdae" -> Jacquard.gearbox 2 words
        | Some ":dump" -> Jacquard.dumpster 0
        | Some ":d5" -> Jacquard.gearbox 1 words
        | Some ":f"
        | Some ":find" -> Geoffroy.grouper words
        | Some ":gtr"
        | Some ":guitar"
        | Some ":eadgbe" -> Jacquard.gearbox 3 words
        | Some ":help"
        | Some ":h" -> Ministry.tutorial ()
        | Some ":fkbjdn" -> Jacquard.gearbox 4 words
        | Some ":keys"
        | Some ":k" -> Ministry.keystone ()
        | Some ":m3" -> Jacquard.gearbox 4 words
        | Some ":m"
        | Some ":mars" -> Ministry.solarium ()
        | Some ":metals" -> Geoffroy.elemental ()
        | Some ":p4" -> Jacquard.gearbox 0 words
        | Some ":p5" -> Jacquard.gearbox 2 words
        | Some ":piano"
        | Some ":u" -> Jacquard.gearbox 5 words
        | Some ":viola"
        | Some ":violin" -> Jacquard.gearbox 2 words
        | Some _
        | None -> Jacquard.juxtapose tuned words
    else
      Jacquard.juxtapose tuned words;;

atrium ()

end;;

module Whodunit = struct

type scoreboard = {
  mutable failed : int;
  mutable passed : int;
  mutable tested : int
};;

let abacus : scoreboard = {
  failed = 0;
  passed = 0;
  tested = 0
};;

let presenter name trio =
  abacus.failed <- Int.succ abacus.failed;
  Printf.printf "Failed:\t%s\n" name;
  let (loc, row, col) = trio in
  Printf.printf "\tFile:\t%s\n\tRow:\t%d\n\tColumn:\t%d\n\n" loc row col;;

let anomaly name kind =
  abacus.failed <- Int.succ abacus.failed;
  Printf.printf "Failed: %s\n\texception: %s\n\n" name kind;;

let checklist name exam vary =
  try
    assert ((List.compare_lengths exam vary) = 0);
    assert (List.equal String.equal exam vary)
  with Assert_failure trio ->
    presenter name trio;;

let excusable name kind =
  match kind with
    Assert_failure trio -> presenter name trio
  | Failure kind -> anomaly name kind
  | Invalid_argument kind -> anomaly name kind
  | Not_found -> anomaly name "Not found"
  | _ -> ();;

let stringent name exam vary =
  try
    assert (String.equal exam vary)
  with Assert_failure trio ->
    presenter name trio;;

(************ Geoffroy ************)

let test_geoffroy_berzelian () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb "
  and vary = try List.assoc "n0" Geoffroy.berzelian with Not_found ->
    String.empty in stringent name exam vary;;

let test_geoffroy_acquire () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb "
  and vary = Geoffroy.acquire "n0" in stringent name exam vary;;

let test_geoffroy_membership () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    assert (Geoffroy.membership "n0")
  with Assert_failure trio ->
    presenter name trio;;

let test_geoffroy_ordnance () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = ["j3"; "k6"; "n0"]
  and vary = Geoffroy.ordnance ["k6"; "n0"; "j3"]
  in checklist name exam vary;;

let test_geoffroy_keynotes () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and size = List.length (Geoffroy.keynotes ()) in
  try
    assert (size = 86)
  with Assert_failure trio ->
    presenter name trio;;

let test_geoffroy_bankroll () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and size = Geoffroy.bankroll () in
  try
    assert (size = 86)
  with Assert_failure trio ->
    presenter name trio;;

let test_geoffroy_turnkeys () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and (niter, clefs) = Geoffroy.turnkeys () in
  let count = List.length clefs in
  try
    assert (Int.equal niter count)
  with Assert_failure trio ->
    presenter name trio;;

let test_geoffroy_revealed () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and bone = false in
  try
    if bone then Geoffroy.revealed name
  with kind ->
    excusable name kind;;

let test_geoffroy_sideshow () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and (size, lids) = Geoffroy.turnkeys () in
  try
    Geoffroy.sideshow lids size
  with kind ->
    excusable name kind;;

let test_geoffroy_columned () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and ways = ["head"; "tail"; "last"] in
  let size = List.length ways in
  try
    Geoffroy.columned size ways
  with kind ->
    excusable name kind;;

let test_geoffroy_selections () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Geoffroy.selections ()
  with kind ->
    excusable name kind;;

let test_geoffroy_frontage () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and face = ":" and word = ":all" in
  try
    assert (Geoffroy.frontage face word)
  with Assert_failure trio ->
    presenter name trio;;

let test_geoffroy_discern () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = ["n0"; "n167"; "n167m4"; "n25m6"; "n26w5";
    "n345"; "n345w7"; "n45w2"; "n5w2"; "n67m2"; "n6m2"]
  and keys = Geoffroy.keynotes () and face = "n" in
  let vary = Geoffroy.discern face keys
  in checklist name exam vary;;

let test_geoffroy_foxhounds () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Geoffroy.foxhounds ()
  with kind ->
    excusable name kind;;

let test_geoffroy_checkmate () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and labs = [
    "HgAg"; "____"; "SnAu"; "____"; "CuPb"; "PbCu";
    "____"; "AuSn"; "____"; "____"; "TiFe"; "FeTi"] in
  try
    assert (Geoffroy.checkmate labs)
  with kind ->
    excusable name kind;;

let test_geoffroy_byzantine () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and exam = "k6" in
  let vary = Geoffroy.byzantine exam
  in stringent name exam vary;;

let test_geoffroy_dominican () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = ["k157m6"; "k1j6"; "k235m4"; "k256"; "k26"; "k26m5"; "k2j17";
    "k2j6"; "k56"; "k56m4"; "k6"; "k6m5"; "\n"; "n0"; "n167m4"; "n26w5";
    "n345"; "n45w2"; "n5w2"; "\n\n"; "j136w7"; "j167w2"; "j17"; "j17w2";
    "j2"; "j23"; "j236"; "j23k6"; "j246w3"; "j26"; "j26w3"; "j26w34";
    "j2k56"; "j2k56m4"; "j2k6"; "j2k6m5"; "j2k6w3"; "j2w3"; "j3"; "j34k6";
    "j36"; "j3k56m4"; "j3k5m4"; "j3k6"; "j6"]
  and vary = Geoffroy.dominican () in checklist name exam vary;;

let test_geoffroy_marshaled () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Geoffroy.marshaled ()
  with kind ->
    excusable name kind;;

let test_geoffroy_separate () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = [
    "HgAg"; "____"; "SnAu"; "____"; "CuPb"; "PbCu";
    "____"; "AuSn"; "____"; "____"; "TiFe"; "FeTi"]
  and wire = Geoffroy.acquire "k6" in
  let vary = Geoffroy.separate wire
  in checklist name exam vary;;

let test_geoffroy_approval () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and yarn = "CuPb" in
  try
    assert (Geoffroy.approval yarn)
  with kind ->
    excusable name kind;;

let test_geoffroy_uniforms () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = [
    "AgAu"; "AgHg"; "AgMn"; "AgPb"; "AgTi"; "AgUr"; "AuAg";
    "AuAu"; "AuHg"; "AuNp"; "AuPb"; "AuSn"; "AuUr"; "CuFe";
    "CuHg"; "CuNp"; "CuPb"; "CuTi"; "CuUr"; "FeCu"; "FeFe";
    "FeMn"; "FeNp"; "FePb"; "FePu"; "FeTi"; "FeUr"; "HgAg";
    "HgAu"; "HgCu"; "HgHg"; "HgMn"; "HgSn"; "HgTi"; "MnAg";
    "MnFe"; "MnHg"; "NpAu"; "NpCu"; "NpFe"; "NpSn"; "PbAg";
    "PbAu"; "PbCu"; "PbFe"; "PbPb"; "PbSn"; "PbTi"; "PuFe";
    "SnAu"; "SnHg"; "SnNp"; "SnPb"; "SnSn"; "SnTi"; "TiAg";
    "TiCu"; "TiFe"; "TiHg"; "TiPb"; "TiSn"; "UrAg"; "UrAu";
    "UrCu"; "UrFe"]
  and vary = Geoffroy.uniforms () in checklist name exam vary;;

let test_geoffroy_elemental () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Geoffroy.elemental ()
  with kind ->
    excusable name kind;;

let test_geoffroy_scrubber () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = ["HgCu"; "SnSn"; "CuHg"; "PbFe"; "AuAg"; "AgAu"; "FePb"]
  and wire = "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb "
  in let vary = Geoffroy.scrubber wire in checklist name exam vary;;

let test_geoffroy_inventory () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and spat = "FePu" in
  try
    Geoffroy.inventory spat
  with kind ->
    excusable name kind;;

let test_geoffroy_periodic () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and sift = "PbFe" in
  try
    assert (Geoffroy.periodic sift)
  with kind ->
    excusable name kind;;

let test_geoffroy_refinery () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and seal = "k15" in
  try
    Geoffroy.refinery seal
  with kind ->
    excusable name kind;;

let test_geoffroy_grouper () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and lints = [
    "n167m4"; "n345w7"; "k235m4"; "j126w7"; ":find"; "AuHg"; "AuPb"] in
  try
    Geoffroy.grouper lints
  with kind ->
    excusable name kind;;

(************ Jacquard ************)

let test_jacquard_zodiac () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    assert ((List.length Jacquard.zodiac) = 13)
  with kind ->
    excusable name kind;;

let test_jacquard_obtain () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and stem = "gem" and numb = 30 in
  try
    let (spot, span) = Jacquard.obtain stem in
    assert ((Int.equal spot numb) && (Int.equal span numb))
  with kind ->
    excusable name kind;;

let test_jacquard_obtain_non () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and stem = "zoo"
  and zero = 0 and numb = 60 in
  try
    let (spot, span) = Jacquard.obtain stem in
    assert ((Int.equal spot zero) && (Int.equal span numb))
  with kind ->
    excusable name kind;;

let test_jacquard_machine () =
  abacus.tested <- Int.succ abacus.tested;
  let sign = "n0" and spot = 25 and span = 35 in
  let vary = Jacquard.machine sign spot span
  and name = __FUNCTION__
  and exam = "PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe"
  in stringent name exam vary;;

let test_jacquard_tensile () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = "AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg"
  and sign = "n0" and stem = "tau" in
  let vary = Jacquard.tensile sign stem in stringent name exam vary;;

let test_jacquard_attunes () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = ["beadgcf"; "bfbfb"; "cgdae"; "eadgbe"; "fkbjdn"; "piano"]
  and vary = Jacquard.attunes () in checklist name exam vary;;

let test_jacquard_produce () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and (audit, harps) = Jacquard.produce () in
  let width = List.length harps in
  try
    assert (Int.equal audit width)
  with kind ->
    excusable name kind;;

let test_jacquard_lutherie () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Jacquard.lutherie ()
  with kind ->
    excusable name kind;;

let test_jacquard_pegboxes () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Jacquard.pegboxes ()
  with kind ->
    excusable name kind;;

let test_jacquard_stockade () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and exam = "beadgcf" and spot = 0 in
  let vary = Jacquard.stockade spot in stringent name exam vary;;
(*
let test_jacquard_randomize () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and mini = 0 in
  try
    assert ((Jacquard.randomize ()) > mini)
    assert (Jacquard.variant > mini)
  with kind ->
    excusable name kind;;
*)
let test_jacquard_variant () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and mini = 9 in
  try
    assert ((String.length Jacquard.variant) > mini)
  with kind ->
    excusable name kind;;

let test_jacquard_diadem () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and sign = "n0" and pegs = "cgdae" and mini = 9 in
  try
    assert ((Jacquard.diadem sign pegs |> String.length) > mini)
  with kind ->
    excusable name kind;;

let test_jacquard_scribe () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and wire = "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb " in
  try
    Jacquard.scribe wire
  with kind ->
    excusable name kind;;

let test_jacquard_engrave () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and sign = "n0" and stem = "gem" in
  try
    Jacquard.engrave sign stem;
    print_newline ()
  with kind ->
    excusable name kind;;

let test_jacquard_lattice () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and sign = "n0"
  and tons = [
    "ari"; "vir"; "aqr"; "cnc";
    "sgr"; "tau"; "lib"; "psc";
    "leo"; "cap"; "gem"; "sco"] in
  try
    Jacquard.lattice sign tons
  with kind ->
    excusable name kind;;

let test_jacquard_beadgcf () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Jacquard.beadgcf sign
  with kind ->
    excusable name kind;;

let test_jacquard_bfbfb () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Jacquard.bfbfb sign
  with kind ->
    excusable name kind;;

let test_jacquard_cgdae () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Jacquard.cgdae sign
  with kind ->
    excusable name kind;;

let test_jacquard_eadgbe () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Jacquard.eadgbe sign
  with kind ->
    excusable name kind;;

let test_jacquard_fkbjdn () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Jacquard.fkbjdn sign
  with kind ->
    excusable name kind;;

let test_jacquard_piano () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Jacquard.piano sign
  with kind ->
    excusable name kind;;

let test_jacquard_layout () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and tuned = "beadgcf" and sign = "n0" in
  try
    Jacquard.layout tuned sign
  with kind ->
    excusable name kind;;

let test_jacquard_layout_tuner () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and tuned = "abcdefg" and sign = "n0" in
  try
    Jacquard.layout tuned sign
  with kind ->
    excusable name kind;;

let test_jacquard_layout_signer () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and tuned = "beadgcf" and sign = "k9" in
  try
    Jacquard.layout tuned sign
  with kind ->
    excusable name kind;;

let test_jacquard_juxtapose () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and tuned = "fkbjdn"
  and words = ["j3"; "k1"] in
  try
    Jacquard.juxtapose tuned words
  with kind ->
    excusable name kind;;

let test_jacquard_bounced () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and stem = "n0" in
  try
    assert (Jacquard.bounced stem)
  with kind ->
    excusable name kind;;

let test_jacquard_gearbox () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and spot = 2
  and words = ["k6"; "j5"] in
  try
    Jacquard.gearbox spot words
  with kind ->
    excusable name kind;;

let test_jacquard_caboose () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and noted = "cgdae" and sieve = "#cgdae" in
  try
    assert (Jacquard.caboose noted sieve)
  with kind ->
    excusable name kind;;

let test_jacquard_assemble () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and exam = "fkbjdn" and count = 0
  and flags = [":find"; ":keys"; ":fkbjdn"; ":mars"] in
  let vary = Jacquard.assemble flags count in stringent name exam vary;;

let test_jacquard_cornucopia () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and tuned = Jacquard.stockade 0
  and flags = [":find"; ":keys"; ":fkbjdn"; ":mars"] in
  try
    Jacquard.cornucopia tuned flags
  with kind ->
    excusable name kind;;

let test_jacquard_coworker () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and (audit, harps) = Jacquard.produce () in
  let posit = (audit - 1) and sign = "n0" in
  try
    Jacquard.coworker harps posit sign;
    print_newline ()
  with kind ->
    excusable name kind;;

let test_jacquard_dumpster () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and posit = 0 in
  try
    Jacquard.dumpster posit
  with kind ->
    excusable name kind;;

(************ Ministry ************)

let test_ministry_utensils () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = ["all"; "alloys"; "find"; "help"; "keys"; "mars"]
  and vary = Ministry.utensils () in checklist name exam vary;;

let test_ministry_toolbars () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Ministry.toolbars ()
  with kind ->
    excusable name kind;;

let test_ministry_sentinel () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and front = ":"
  and words = ["n0"; "j3"; ":help"] in
  try
    let opted = Ministry.sentinel front words in
      match opted with
      | Some ":help" -> Ministry.tutorial ()
      | Some ":keys" -> Ministry.keystone ()
      | Some ":mars" -> Ministry.solarium ()
      | Some _ -> print_endline "\n\tSomething?\n"
      | None -> print_endline "\n\tNothingness!\n"
  with kind ->
    excusable name kind;;

let test_ministry_switches () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and exam = [":all"; ":bfbfb"]
  and words = ["n0"; "j3"; ":all"; ":bfbfb"]
  and front = ":" in
  let vary = Ministry.switches front words
  in checklist name exam vary;;

let test_ministry_governor () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and args = [|"n0"; "j3"; "0123456789"; ":beadgcf"|]
  and exam = ["n0"; "j3"; ":beadgcf"] and span = 9 in
  let vary = Ministry.governor span args
  in checklist name exam vary;;

let test_ministry_exampled () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and post = Filename.basename __FILE__ in
  try
    Ministry.exampled post
  with kind ->
    excusable name kind;;

let test_ministry_tutorial () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Ministry.tutorial ()
  with kind ->
    excusable name kind;;

let test_ministry_keystone () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Ministry.keystone ()
  with kind ->
    excusable name kind;;

let test_ministry_solarium () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Ministry.solarium ()
  with kind ->
    excusable name kind;;

let test_ministry_preamble () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Ministry.preamble ()
  with kind ->
    excusable name kind;;

(************************************)

let clockwork start : float =
(*  let ticks = Sys.time () in *)
  let ticks = Float.zero in
  Float.sub ticks start;;

let millipede start : float =
  Float.mul (clockwork start) 1000.;;

let runabout_geoffroy start =
  test_geoffroy_berzelian ();
  test_geoffroy_acquire ();
  test_geoffroy_membership ();
  test_geoffroy_ordnance ();
  test_geoffroy_keynotes ();
  test_geoffroy_bankroll ();
  test_geoffroy_turnkeys ();
  test_geoffroy_revealed ();
  test_geoffroy_sideshow ();
  test_geoffroy_columned ();
  test_geoffroy_selections ();
  test_geoffroy_frontage ();
  test_geoffroy_discern ();
  test_geoffroy_foxhounds ();
  test_geoffroy_checkmate ();
  test_geoffroy_byzantine ();
  test_geoffroy_dominican ();
  test_geoffroy_marshaled ();
  test_geoffroy_separate ();
  test_geoffroy_approval ();
  test_geoffroy_uniforms ();
  test_geoffroy_elemental ();
  test_geoffroy_scrubber ();
  test_geoffroy_inventory ();
  test_geoffroy_periodic ();
  test_geoffroy_refinery ();
  test_geoffroy_grouper ();
  let after = millipede start in
(*  Printf.printf "\tElapsed: %.3fms %s\n\n" after __FUNCTION__;; *)
  Printf.printf "\tElapsed: %.3fms %s\n\n" after "runabout_geoffroy";;

let runabout_jacquard start =
  test_jacquard_zodiac ();
  test_jacquard_obtain ();
  test_jacquard_obtain_non ();
  test_jacquard_machine ();
  test_jacquard_tensile ();
  test_jacquard_attunes ();
  test_jacquard_produce ();
  test_jacquard_lutherie ();
  test_jacquard_pegboxes ();
  test_jacquard_stockade ();
(*  test_jacquard_randomize (); *)
  test_jacquard_variant ();
  test_jacquard_diadem ();
  test_jacquard_scribe ();
  test_jacquard_engrave ();
  test_jacquard_lattice ();
  test_jacquard_beadgcf ();
  test_jacquard_bfbfb ();
  test_jacquard_cgdae ();
  test_jacquard_eadgbe ();
  test_jacquard_fkbjdn ();
  test_jacquard_piano ();
  test_jacquard_layout ();
  test_jacquard_layout_tuner ();
  test_jacquard_layout_signer ();
  test_jacquard_juxtapose ();
  test_jacquard_bounced ();
  test_jacquard_gearbox ();
  test_jacquard_caboose ();
  test_jacquard_assemble ();
(*  test_jacquard_cornucopia (); *)
  test_jacquard_coworker ();
(*  test_jacquard_dumpster (); *)
  let after = millipede start in
(*  Printf.printf "\tElapsed: %.3fms %s\n\n" after __FUNCTION__;; *)
  Printf.printf "\tElapsed: %.3fms %s\n\n" after "runabout_jacquard";;

let runabout_ministry start =
  test_ministry_utensils ();
  test_ministry_toolbars ();
  test_ministry_sentinel ();
  test_ministry_switches ();
  test_ministry_governor ();
  test_ministry_exampled ();
  test_ministry_tutorial ();
  test_ministry_keystone ();
  test_ministry_solarium ();
  test_ministry_preamble ();
  let after = millipede start in
(*  Printf.printf "\tElapsed: %.3fms %s\n\n" after __FUNCTION__;; *)
  Printf.printf "\tElapsed: %.3fms %s\n\n" after "runabout_ministry";;

let initiate start : float =
  runabout_geoffroy start;
  runabout_jacquard start;
  runabout_ministry start;
  millipede start;;

let printout after =
  abacus.passed <- Int.sub abacus.tested abacus.failed;
  Printf.printf "\t%s\n\n" (String.make 61 (Char.chr 45));
  let paddy = String.make 5 (Char.chr 32) in
  Printf.printf "\t%sElapsed: %.3fms, Failed: %d, Passed: %d, Tested: %d\n\n"
    paddy after abacus.failed abacus.passed abacus.tested;;

let softest () =
(*  let start = Sys.time () in *)
  let start = Float.zero in
  let after = initiate start in printout after;;

softest ();;

end;;



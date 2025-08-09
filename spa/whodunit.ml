#! /usr/bin/env ocaml 
(* whodunit.ml *)

#use "thorngate.ml";;

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

let banked = Polychrome.scales;;
let sample = "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb ";;

(************ polychrome ************)

let test_polychrome_scales () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    exam = sample and
    vary = try List.assoc "n0" banked with Not_found ->
    String.make 60 (Char.chr 45) in
    stringent name exam vary;;
 
let test_polychrome_acquire () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    exam = sample and
    vary = (Polychrome.acquire "n0") in
    stringent name exam vary;;
    
let test_polychrome_membership () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    assert (Polychrome.membership "n0")
  with Assert_failure trio ->
    presenter name trio;;

let test_polychrome_ordnance () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    exam = ["j3"; "k6"; "n0"] and
    vary = Polychrome.ordnance ["k6"; "n0"; "j3"] in
    checklist name exam vary;;

let test_polychrome_keynotes () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    keys = Polychrome.keynotes () in
  let size = List.length keys in
  try
    assert (size = 84)
  with Assert_failure trio ->
    presenter name trio;;

let test_polychrome_bankroll () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    size = Polychrome.bankroll () in
  try
    assert (size = 84)
  with Assert_failure trio ->
    presenter name trio;;

let test_polychrome_columned () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    ways = ["head"; "tail"; "last"] in
  let size = List.length ways in
  try
    Polychrome.columned size ways
  with kind ->
    excusable name kind;;

let test_polychrome_selections () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Polychrome.selections ()
  with kind ->
    excusable name kind;;

let test_polychrome_frontage () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    face = "-" and
    word = "--all" in
  try
    assert (Polychrome.frontage ~prefix:face word)
  with Assert_failure trio ->
    presenter name trio;;

let test_polychrome_discern () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    keys = Polychrome.keynotes () and
    face = "n" and
    exam = ["n0"; "n167"; "n167m4"; "n25m6"; "n26w5";
    "n345"; "n345w7"; "n45w2"; "n5w2"; "n67m2"; "n6m2"] in
  let vary = Polychrome.discern face keys in
    checklist name exam vary;;

let test_polychrome_foxhounds () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Polychrome.foxhounds ()
  with kind ->
    excusable name kind;;

let test_polychrome_byzantine () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    exam = "k6" and
    vary = (Polychrome.byzantine "k6") in
    stringent name exam vary;;
 
let test_polychrome_dominican () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    exam = ["k157m6"; "k1j6"; "k256"; "k26"; "k26m5"; "k2j17"; "k2j6";
    "k56"; "k56m4"; "k6"; "k6m5"; "\n"; "n0"; "n167m4"; "n26w5"; "n345";
    "n45w2"; "n5w2";"\n"; "j136w7"; "j167w2"; "j17"; "j17w2"; "j2"; "j23";
    "j236"; "j23k6"; "j246w3"; "j26"; "j26w3"; "j26w34"; "j2k56"; "j2k56m4";
    "j2k6"; "j2k6m5"; "j2k6w3"; "j2w3"; "j3"; "j34k6"; "j36"; "j3k56m4";
    "j3k5m4"; "j3k6"; "j6"] and
    vary = Polychrome.dominican () in
    checklist name exam vary;;

let test_polychrome_marshaled () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Polychrome.marshaled ()
  with kind ->
    excusable name kind;;

let test_polychrome_uniforms () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and void = String.empty in
  let exam = [void; "AgAu"; "AgHg"; "AgPb"; "AgTi"; "AgUr"; "AuAg"; "AuAu";
    "AuHg"; "AuNp"; "AuPb"; "AuSn"; "AuUr"; "CuFe"; "CuHg"; "CuNp"; "CuPb";
    "CuTi"; "CuUr"; "FeCu"; "FeFe"; "FeMn"; "FeNp"; "FePb"; "FePu"; "FeTi";
    "FeUr"; "HgAg"; "HgAu"; "HgCu"; "HgHg"; "HgMn"; "HgSn"; "HgTi"; "MnFe";
    "MnHg"; "NpAu"; "NpCu"; "NpFe"; "NpSn"; "PbAg"; "PbAu"; "PbCu"; "PbFe";
    "PbPb"; "PbSn"; "PbTi"; "PuFe"; "SnAu"; "SnHg"; "SnNp"; "SnPb"; "SnSn";
    "SnTi"; "TiAg"; "TiCu"; "TiFe"; "TiHg"; "TiPb"; "TiSn"; "UrAg"; "UrAu";
    "UrCu"; "UrFe"] and vary = Polychrome.uniforms () in
    checklist name exam vary;;

let test_polychrome_elemental () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Polychrome.elemental ()
  with kind ->
    excusable name kind;;

let test_polychrome_scrubber () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and void = String.empty in
  let exam = [
    "HgCu"; "SnSn"; "CuHg"; "PbFe"; "AuAg"; "AgAu"; "FePb"; void] and
    vary = Polychrome.scrubber sample in
    checklist name exam vary;;

let test_polychrome_inventory () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and spat = "FePu" in
  try
    Polychrome.inventory spat
  with kind ->
    excusable name kind;;

let test_polychrome_grouper () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and spat = "PbAu" in
  let lints = ["--find"; spat] in
  try
    Polychrome.grouper lints
  with kind ->
    excusable name kind;;

(************ scordatura ************)

let test_scordatura_machine () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" and spot = 25 and span = 35 and
  exam = "PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe" in
  try
    assert (String.equal exam (Scordatura.machine sign spot span))
  with kind ->
    excusable name kind;;

let test_scordatura_sBj () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" and
  exam = "____ FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____" in
  try
    assert (String.equal exam (Scordatura.sBj sign))
  with kind ->
    excusable name kind;;

let test_scordatura_sFn () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" and
  exam = "PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe" in
  try
    assert (String.equal exam (Scordatura.sFn sign))
  with kind ->
    excusable name kind;;

let test_scordatura_sCn () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" and
  exam = "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb HgCu" in
  try
    assert (String.equal exam (Scordatura.sCn sign))
  with kind ->
    excusable name kind;;

let test_scordatura_sGn () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" and
  exam = "AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg" in
  try
    assert (String.equal exam (Scordatura.sGn sign))
  with kind ->
    excusable name kind;;

let test_scordatura_sDn () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" and
  exam = "SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn" in
  try
    assert (String.equal exam (Scordatura.sDn sign))
  with kind ->
    excusable name kind;;

let test_scordatura_sAn () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" and
  exam = "AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu" in
  try
    assert (String.equal exam (Scordatura.sAn sign))
  with kind ->
    excusable name kind;;

let test_scordatura_sEn () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" and
  exam = "CuHg PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg" in
  try
    assert (String.equal exam (Scordatura.sEn sign))
  with kind ->
    excusable name kind;;

let test_scordatura_sBn () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" and
  exam = "FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb" in
  try
    assert (String.equal exam (Scordatura.sBn sign))
  with kind ->
    excusable name kind;;

let test_scordatura_sFk () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" and
  exam = "____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe ____" in
  try
    assert (String.equal exam (Scordatura.sFk sign))
  with kind ->
    excusable name kind;;

let test_scordatura_attunes () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    exam = ["beadgcf"; "bfbfb"; "cgdae"; "eadgbe"; "fkbjdn"; "piano"] and
    vary = Scordatura.attunes () in
    checklist name exam vary;;

let test_scordatura_pegboxes () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Scordatura.pegboxes ()
  with kind ->
    excusable name kind;;

let test_scordatura_stockade () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and exam = "beadgcf" and spot = 0 in
  try
    assert (String.equal exam (Scordatura.stockade spot))
  with kind ->
    excusable name kind;;

let test_scordatura_randomize () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and mini = 0 in
  try
    assert ((Scordatura.randomize ()) > mini)
  with kind ->
    excusable name kind;;

let test_scordatura_variant () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and mini = 9 in
  try
    assert ((String.length Scordatura.variant) > mini)
  with kind ->
    excusable name kind;;

let test_scordatura_diadem () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and sign = "n0" and pegs = "cgdae" and mini = 9 in
  try
    assert ((Scordatura.diadem sign pegs |> String.length) > mini)
  with kind ->
    excusable name kind;;

let test_scordatura_scribe () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Scordatura.scribe sample
  with kind ->
    excusable name kind;;

let test_scordatura_beadgcf () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Scordatura.beadgcf sign
  with kind ->
    excusable name kind;;

let test_scordatura_bfbfb () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Scordatura.bfbfb sign
  with kind ->
    excusable name kind;;

let test_scordatura_cgdae () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Scordatura.cgdae sign
  with kind ->
    excusable name kind;;

let test_scordatura_eadgbe () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Scordatura.eadgbe sign
  with kind ->
    excusable name kind;;

let test_scordatura_fkbjdn () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Scordatura.fkbjdn sign
  with kind ->
    excusable name kind;;

let test_scordatura_piano () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and sign = "n0" in
  try
    Scordatura.piano sign
  with kind ->
    excusable name kind;;

let test_scordatura_layout () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and tuned = "beadgcf" and sign = "n0" in
  try
    Scordatura.layout tuned sign
  with kind ->
    excusable name kind;;

let test_scordatura_layout_tuner () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and tuned = "abcdefg" and sign = "n0" in
  try
    Scordatura.layout tuned sign
  with kind ->
    excusable name kind;;

let test_scordatura_layout_signer () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and tuned = "beadgcf" and sign = "k9" in
  try
    Scordatura.layout tuned sign
  with kind ->
    excusable name kind;;

let test_scordatura_juxtapose () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and tuned = "fkbjdn"
  and words = ["j3"; "k1"] in
  try
    Scordatura.juxtapose tuned words
  with kind ->
    excusable name kind;;

let test_scordatura_gearbox () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and spot = 2
  and words = ["k6"; "j5"] in
  try
    Scordatura.gearbox spot words
  with kind ->
    excusable name kind;;

let test_scordatura_separate () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and exam = "fkbjdn"
  and flags = ["--find"; "--keys"; "--fkbjdn"; "--mars"] in
  let count = 0 in
  try
    assert (String.equal exam (Scordatura.separate flags count))
  with kind ->
    excusable name kind;;

let test_scordatura_cornucopia () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__
  and tuned = Scordatura.stockade 0
  and flags = ["--find"; "--keys"; "--fkbjdn"; "--mars"] in
  try
    Scordatura.cornucopia tuned flags
  with kind ->
    excusable name kind;;

let test_scordatura_dumpster () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and posit = 0 in
  try
    Scordatura.dumpster posit
  with kind ->
    excusable name kind;;

(************ technician ************)

let test_technician_utensils () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and
    exam = ["all"; "alloys"; "find"; "help"; "keys"; "mars"] and
    vary = Technician.utensils () in
    checklist name exam vary;;

let test_technician_toolbars () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Technician.toolbars ()
  with kind ->
    excusable name kind;;

let test_technician_sentinel () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and front = "-"
  and words = ["n0"; "j3"; "--help"] in
  try
    let opted = Technician.sentinel front words in
      match opted with
      | Some "--help" -> Technician.tutorial ()
      | Some "--keys" -> Technician.keystone ()
      | Some "--mars" -> Technician.solarium ()
      | Some _ -> print_endline "\n\tSomething?\n"
      | None -> print_endline "\n\tNothingness!\n"
  with kind ->
    excusable name kind;;

let test_technician_switches () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and front = "-"
  and words = ["n0"; "j3"; "--all"; "--bfbfb"]
  and exam = ["--all"; "--bfbfb"] in
  let vary = Technician.switches front words in
    checklist name exam vary;;

let test_technician_governor () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ and span = 9
  and args = [|"n0"; "j3"; "0123456789"; "--beadgcf"|]
  and exam = ["n0"; "j3"; "--beadgcf"] in
  let vary = Technician.governor span args in
    checklist name exam vary;;

let test_technician_tutorial () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Technician.tutorial ()
  with kind ->
    excusable name kind;;

let test_technician_keystone () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Technician.keystone ()
  with kind ->
    excusable name kind;;

let test_technician_solarium () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Technician.solarium ()
  with kind ->
    excusable name kind;;

let test_technician_preamble () =
  abacus.tested <- Int.succ abacus.tested;
  let name = __FUNCTION__ in
  try
    Technician.preamble ()
  with kind ->
    excusable name kind;;

(************************************)

let clockwork start : float =
  let ticks = Sys.time () in
    Float.sub ticks start;;

let millipede start : float =
  Float.mul (clockwork start) 1000.;;

let runabout_polychrome start =
  test_polychrome_scales ();
  test_polychrome_acquire ();
  test_polychrome_membership ();
  test_polychrome_ordnance ();
  test_polychrome_keynotes ();
  test_polychrome_bankroll ();
  test_polychrome_columned ();
  test_polychrome_selections ();
  test_polychrome_frontage ();
  test_polychrome_discern ();
  test_polychrome_foxhounds ();
  test_polychrome_byzantine ();
  test_polychrome_dominican ();
  test_polychrome_marshaled ();
  test_polychrome_uniforms ();
  test_polychrome_elemental ();
  test_polychrome_scrubber ();
  test_polychrome_inventory ();
  test_polychrome_grouper ();
  let after = millipede start in
  Printf.printf "\tElapsed: %.3fms %s\n\n" after __FUNCTION__;;

let runabout_scordatura start =
  test_scordatura_machine ();
  test_scordatura_sBj ();
  test_scordatura_sFn ();
  test_scordatura_sCn ();
  test_scordatura_sGn ();
  test_scordatura_sDn ();
  test_scordatura_sAn ();
  test_scordatura_sEn ();
  test_scordatura_sBn ();
  test_scordatura_sFk ();
  test_scordatura_attunes ();
  test_scordatura_pegboxes ();
  test_scordatura_stockade ();
  test_scordatura_randomize ();
  test_scordatura_variant ();
  test_scordatura_diadem ();
  test_scordatura_scribe ();
  test_scordatura_beadgcf ();
  test_scordatura_bfbfb ();
  test_scordatura_cgdae ();
  test_scordatura_eadgbe ();
  test_scordatura_fkbjdn ();
  test_scordatura_piano ();
  test_scordatura_layout ();
  test_scordatura_layout_tuner ();
  test_scordatura_layout_signer ();
  test_scordatura_juxtapose ();
  test_scordatura_gearbox ();
  test_scordatura_separate ();
(*  test_scordatura_cornucopia (); *)
(*  test_scordatura_dumpster (); *)
  let after = millipede start in
  Printf.printf "\tElapsed: %.3fms %s\n\n" after __FUNCTION__;;

let runabout_technician start =
  test_technician_utensils ();
  test_technician_toolbars ();
  test_technician_sentinel ();
  test_technician_switches ();
  test_technician_governor ();
  test_technician_tutorial ();
  test_technician_keystone ();
  test_technician_solarium ();
  test_technician_preamble ();
  let after = millipede start in
  Printf.printf "\tElapsed: %.3fms %s\n\n" after __FUNCTION__;;

let initiate start : float =
  runabout_polychrome start;
  runabout_scordatura start;
  runabout_technician start;
  millipede start;;

let softest () =
  let start = Sys.time () in
  let after = initiate start and paddy = String.make 5 (Char.chr 32) in
  abacus.passed <- (Int.sub abacus.tested abacus.failed);
  Printf.printf "\t%s\n\n" (String.make 61 (Char.chr 45));
  Printf.printf "\t%sElapsed: %.3fms, Failed: %d, Passed: %d, Tested: %d\n\n"
    paddy after abacus.failed abacus.passed abacus.tested;;

softest ();;



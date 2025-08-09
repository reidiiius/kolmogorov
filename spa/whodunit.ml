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
  abacus.failed <- (Int.add abacus.failed 1);
  Printf.printf "Failed:\t%s\n" name;
  let (loc, row, col) = trio in
    Printf.printf "\tFile:\t%s\n\tRow:\t%d\n\tColumn:\t%d\n\n" loc row col;;

let anomaly name kind =
  abacus.failed <- (Int.add abacus.failed 1);
  Printf.printf "Failed: %s\n\texception: %s\n\n" name kind;;

let checklist name same vary =
  try
    assert ((List.compare_lengths same vary) = 0);
    assert (List.equal String.equal same vary)
  with Assert_failure trio ->
    presenter name trio;;

let excusable name kind =
  match kind with
  | Failure kind -> anomaly name kind
  | Invalid_argument kind -> anomaly name kind
  | Not_found -> anomaly name "Not found"
  | _ -> ();;

let stringent name same vary =
  try
    assert (String.equal same vary)
  with Assert_failure trio ->
    presenter name trio;;

let banked = Polychrome.scales;;
let sample = "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb ";;

(**********************************)

let test_polychrome_scales () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and
    same = sample and
    vary = try List.assoc "n0" banked with Not_found ->
    String.make 60 (Char.chr 45) in
    stringent name same vary;;
 
let test_polychrome_acquire () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and
    same = sample and
    vary = (Polychrome.acquire "n0") in
    stringent name same vary;;
    
let test_polychrome_membership () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ in
  try
    assert (Polychrome.membership "n0")
  with Assert_failure trio ->
    presenter name trio;;

let test_polychrome_ordnance () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and
    same = ["j3"; "k6"; "n0"] and
    vary = Polychrome.ordnance ["k6"; "n0"; "j3"] in
    checklist name same vary;;

let test_polychrome_keynotes () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and
    keys = Polychrome.keynotes () in
  let size = List.length keys in
  try
    assert (size = 84)
  with Assert_failure trio ->
    presenter name trio;;

let test_polychrome_bankroll () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and
    size = Polychrome.bankroll () in
  try
    assert (size = 84)
  with Assert_failure trio ->
    presenter name trio;;

let test_polychrome_columned () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and
    ways = ["head"; "tail"; "last"] in
  let size = List.length ways in
  try
    Polychrome.columned size ways
  with kind ->
    excusable name kind;;

let test_polychrome_selections () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ in
  try
    Polychrome.selections ()
  with kind ->
    excusable name kind;;

let test_polychrome_frontage () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and
    face = "-" and
    word = "--all" in
  try
    assert (Polychrome.frontage ~prefix:face word)
  with Assert_failure trio ->
    presenter name trio;;

let test_polychrome_discern () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and
    keys = Polychrome.keynotes () and
    face = "n" and
    same = ["n0"; "n167"; "n167m4"; "n25m6"; "n26w5";
    "n345"; "n345w7"; "n45w2"; "n5w2"; "n67m2"; "n6m2"] in
  let vary = Polychrome.discern face keys in
    checklist name same vary;;

let test_polychrome_foxhounds () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ in
  try
    Polychrome.foxhounds ()
  with kind ->
    excusable name kind;;

let test_polychrome_byzantine () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and
    same = "k6" and
    vary = (Polychrome.byzantine "k6") in
    stringent name same vary;;
 
let test_polychrome_dominican () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and
    same = ["k157m6"; "k1j6"; "k256"; "k26"; "k26m5"; "k2j17"; "k2j6";
    "k56"; "k56m4"; "k6"; "k6m5"; "\n"; "n0"; "n167m4"; "n26w5"; "n345";
    "n45w2"; "n5w2";"\n"; "j136w7"; "j167w2"; "j17"; "j17w2"; "j2"; "j23";
    "j236"; "j23k6"; "j246w3"; "j26"; "j26w3"; "j26w34"; "j2k56"; "j2k56m4";
    "j2k6"; "j2k6m5"; "j2k6w3"; "j2w3"; "j3"; "j34k6"; "j36"; "j3k56m4";
    "j3k5m4"; "j3k6"; "j6"] and
    vary = Polychrome.dominican () in
    checklist name same vary;;

let test_polychrome_marshaled () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ in
  try
    Polychrome.marshaled ()
  with kind ->
    excusable name kind;;

let test_polychrome_uniforms () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and void = String.empty in
  let same = [void; "AgAu"; "AgHg"; "AgPb"; "AgTi"; "AgUr"; "AuAg"; "AuAu";
    "AuHg"; "AuNp"; "AuPb"; "AuSn"; "AuUr"; "CuFe"; "CuHg"; "CuNp"; "CuPb";
    "CuTi"; "CuUr"; "FeCu"; "FeFe"; "FeMn"; "FeNp"; "FePb"; "FePu"; "FeTi";
    "FeUr"; "HgAg"; "HgAu"; "HgCu"; "HgHg"; "HgMn"; "HgSn"; "HgTi"; "MnFe";
    "MnHg"; "NpAu"; "NpCu"; "NpFe"; "NpSn"; "PbAg"; "PbAu"; "PbCu"; "PbFe";
    "PbPb"; "PbSn"; "PbTi"; "PuFe"; "SnAu"; "SnHg"; "SnNp"; "SnPb"; "SnSn";
    "SnTi"; "TiAg"; "TiCu"; "TiFe"; "TiHg"; "TiPb"; "TiSn"; "UrAg"; "UrAu";
    "UrCu"; "UrFe"] and vary = Polychrome.uniforms () in
    checklist name same vary;;

let test_polychrome_elemental () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ in
  try
    Polychrome.elemental ()
  with kind ->
    excusable name kind;;

let test_polychrome_scrubber () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and void = String.empty in
  let same = [
    "HgCu"; "SnSn"; "CuHg"; "PbFe"; "AuAg"; "AgAu"; "FePb"; void] and
    vary = Polychrome.scrubber sample in
    checklist name same vary;;

let test_polychrome_inventory () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and spat = "FePu" in
  try
    Polychrome.inventory spat
  with kind ->
    excusable name kind;;

let test_polychrome_grouper () =
  abacus.tested <- (Int.add abacus.tested 1);
  let name = __FUNCTION__ and spat = "PbAu" in
  let lints = ["--find"; spat] in
  try
    Polychrome.grouper lints
  with kind ->
    excusable name kind;;

(**********************************)

let clockwork start : float =
  let ticks = Sys.time () in
    Float.sub ticks start;;

let initiate start : float =
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
  clockwork start;;

let softest () =
  let start = Sys.time () in
  let after = initiate start in
  let mills = Float.mul after 1000. in
  let paddy = String.make 6 (Char.chr 32) in
  abacus.passed <- (Int.sub abacus.tested abacus.failed);
  Printf.printf "\t%sElapsed: %.2fms, Failed: %d, Passed: %d, Tested: %d\n\n"
    paddy mills abacus.failed abacus.passed abacus.tested;;

softest ();;



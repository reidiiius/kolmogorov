#! /usr/bin/env ocaml

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
  ];;

  let acquire sign =
    try List.assoc sign scales;
    with Not_found -> List.assoc "i0" scales;;

  let membership sign =
    List.mem_assoc sign scales;;

  let keynotes () =
    fst (List.split scales);;

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

module Scordatura = struct

let machine sign spot span =
  let grab = Polychrome.acquire in
    (String.sub (grab sign) spot span) ^
    (String.sub (grab sign)  0 spot);;

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

let scribe yarn =
  Printf.printf "\t%s\n" yarn;;

let beadgcf sign =
  scribe (sign ^ "-beadgcf");
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
  scribe (sign ^ "-bfbfb");
  List.iter scribe [
    sBn sign;
    sFn sign;
    sBn sign;
    sFn sign;
    sBn sign
  ];;

let cgdae sign =
  scribe (sign ^ "-cgdae");
  List.iter scribe [
    sEn sign;
    sAn sign;
    sDn sign;
    sGn sign;
    sCn sign
  ];;
 
let eadgbe sign =
  scribe (sign ^ "-eadgbe");
  List.iter scribe [
    sEn sign;
    sBn sign;
    sGn sign;
    sDn sign;
    sAn sign;
    sEn sign
  ];;

let fkbjdn sign =
  scribe (sign ^ "-fkbjdn");
  List.iter scribe [
    sDn sign;
    sBj sign;
    sFk sign;
    sDn sign;
    sBj sign;
    sFk sign
  ];;

let piano sign =
  scribe (sign ^ "-piano");
  scribe (sCn sign);;

end;;

module Utilitarian = struct

let layout tuned sign =
  print_newline ();
  if Polychrome.membership sign then
    match tuned with
    | "beadgcf" -> Scordatura.beadgcf sign
    | "bfbfb" -> Scordatura.bfbfb sign
    | "cgdae" -> Scordatura.cgdae sign
    | "eadgbe" -> Scordatura.eadgbe sign
    | "fkbjdn" -> Scordatura.fkbjdn sign
    | "piano" -> Scordatura.piano sign
    | _ -> Scordatura.piano "i0"
  else
    Printf.printf "\t%s ?\n" sign;;

let cornucopia tuned =
  let clefs = Polychrome.keynotes () in
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

(* application entryway *)

let () =
  let quanta = (Array.length Sys.argv - 1) in
  let argots = (Array.sub Sys.argv 1 quanta) in
  let bounds = List.length (Polychrome.keynotes ()) in
    if quanta = 0 || quanta >= bounds then
      Polychrome.selections ()
    else
      let tuned = "beadgcf" in
      let clefs = Utilitarian.governor 9 argots in
      let opted = Utilitarian.sentinel "-" argots in
        match opted with
        | Some "--all"
        | Some "-a" -> Utilitarian.cornucopia tuned
        | Some "--help"
        | Some "-h" -> Utilitarian.tutorial ()
        | Some "--keys"
        | Some "-k" -> Polychrome.foxhounds ()
        | Some "--mars"
        | Some "-m" -> Polychrome.marshaled ()
        | Some _
        | None -> Utilitarian.juxtapose tuned clefs;;



#!/usr/bin/env ocaml

module HeptaTonic = struct

    let scaleData = [
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
     "j2y3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ____ AgUr ____ FePu ";
     "j3k5", "NpCu ____ TiSn FePu ____ PuFe ____ ____ CuNp PbAu ____ AuPb ";
     "j3k6", "HgTi ____ SnNp UrAu ____ PbPb ____ AuUr ____ ____ TiHg FeFe ";
     "j5y6", "PbCu ____ AuSn ____ AgHg TiFe FeTi HgAg ____ ____ ____ CuPb ";
     "k125", "____ AgUr ____ FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ";
     "k1j5", "____ AuUr NpSn ____ TiHg FeFe HgTi ____ ____ UrAu ____ PbPb ";
     "k1j6", "____ PuFe SnTi ____ CuNp PbAu ____ AuPb NpCu ____ ____ FePu ";
     "k256", "HgMn ____ ____ MnHg CuFe PbTi ____ ____ NpAu ____ TiPb FeCu ";
     "k2j5", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ";
     "k2j6", "HgMn ____ ____ MnHg CuFe PbTi ____ AuNp NpAu ____ ____ FeCu ";
     "k2x1", "____ ____ TiSn FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ";
     "k6x5", "HgAg ____ SnAu ____ CuPb PbCu ____ ____ ____ AgHg TiFe FeTi ";
     "n167", "NpCu ____ ____ FePu ____ PuFe SnTi ____ CuNp PbAu ____ AuPb ";
     "n345", "____ PuFe ____ ____ CuNp PbAu ____ AuPb NpCu ____ TiSn FePu ";
     "n5y2", "HgMn ____ ____ MnHg CuFe ____ ____ AuNp NpAu ____ TiPb FeCu ";
     "n6x2", "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ AuNp NpAu ____ ____ ";
    "j17k2", "____ ____ ____ MnFe CuTi PbAg ____ AuAu ____ AgPb TiCu FeMn ";
    "j17y2", "HgAg ____ ____ ____ CuPb PbCu ____ AuSn ____ AgHg TiFe FeTi ";
    "j23k6", "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ____ ____ TiSn FePu ";
    "j25y6", "TiCu FeMn ____ ____ SnHg MnFe CuTi PbAg ____ ____ ____ AgPb ";
    "j26y3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb NpCu ____ ____ FePu ";
    "j2k34", "TiCu FeMn ____ ____ ____ MnFe CuTi PbAg ____ AuAu ____ AgPb ";
    "j2k56", "HgHg PuFe ____ ____ CuNp PbAu ____ ____ NpCu ____ TiSn FePu ";
    "j34k6", "HgSn ____ SnHg MnFe CuTi ____ ____ AuAu ____ ____ TiCu FeMn ";
    "j56y7", "UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp HgAu ____ ____ ";
    "k12j5", "____ AgUr ____ FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ";
    "k17j5", "TiCu FeMn HgSn ____ SnHg MnFe CuTi ____ ____ AuAu ____ ____ ";
    "k25x1", "____ ____ TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ";
    "k26x5", "HgSn ____ ____ MnFe CuTi PbAg ____ ____ ____ AgPb TiCu FeMn ";
    "k2j56", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ CuNp ____ ____ AuPb ";
    "k34x2", "PbCu ____ ____ ____ AgHg TiFe FeTi HgAg ____ SnAu ____ CuPb ";
    "k56x4", "HgAu ____ SnPb ____ CuUr ____ ____ AuHg NpFe ____ TiAg FeNp ";
    "n25x6", "TiCu FeMn HgSn ____ ____ MnFe CuTi PbAg ____ ____ ____ AgPb ";
    "n26y5", "____ ____ SnHg MnFe CuTi PbAg ____ ____ ____ AgPb TiCu FeMn ";
    "n45y2", "HgTi ____ ____ UrAu ____ PbPb ____ AuUr NpSn ____ TiHg FeFe ";
    "n67x2", "____ AuUr ____ ____ TiHg FeFe HgTi ____ SnNp UrAu ____ PbPb ";
   "j136y7", "____ ____ SnPb UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ";
   "j167y2", "HgAu ____ ____ ____ CuUr PbSn ____ AuHg NpFe ____ TiAg FeNp ";
   "j246y3", "HgHg PuFe SnTi ____ CuNp ____ ____ AuPb NpCu ____ ____ FePu ";
   "j26y34", "HgHg PuFe SnTi UrAg ____ ____ ____ AuPb NpCu ____ ____ FePu ";
   "j2k6x5", "HgHg PuFe ____ ____ CuNp PbAu ____ ____ ____ AgUr TiSn FePu ";
   "j2k6y3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ____ ____ TiSn FePu ";
   "j346y5", "NpCu ____ TiSn FePu HgHg PuFe ____ ____ CuNp ____ ____ AuPb ";
   "j3k5x4", "HgAu ____ SnPb UrCu ____ ____ ____ AuHg NpFe AgTi ____ FeNp ";
   "k135x4", "____ CuUr PbSn ____ ____ NpFe ____ TiAg FeNp HgAu ____ SnPb ";
   "k157x6", "HgHg PuFe SnTi ____ CuNp PbAu ____ ____ NpCu ____ ____ FePu ";
   "k1j6y7", "____ CuUr PbSn ____ AuHg NpFe ____ TiAg FeNp HgAu ____ ____ ";
   "k257x1", "NpCu ____ TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ ____ ";
   "k25x17", "____ AgUr TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ ____ ";
   "k2j5x1", "____ ____ TiSn FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ";
   "k2j5y6", "NpCu ____ ____ FePu HgHg PuFe SnTi UrAg ____ ____ ____ AuPb ";
   "k345x2", "UrCu ____ ____ ____ AuHg NpFe AgTi ____ FeNp HgAu ____ SnPb ";
   "n167x4", "HgAu ____ ____ UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ";
   "n345y7", "____ CuUr ____ ____ AuHg NpFe ____ TiAg FeNp HgAu ____ SnPb ";
  "j2k56x4", "HgHg PuFe ____ ____ CuNp ____ ____ AuPb NpCu ____ TiSn FePu ";
  "j3k56x4", "HgTi ____ SnNp UrAu ____ ____ ____ AuUr NpSn ____ TiHg FeFe ";
  "k1j56y7", "____ AuUr NpSn ____ TiHg FeFe HgTi ____ SnNp UrAu ____ ____ ";
  "k2j56y7", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ CuNp PbAu ____ ____ "
    ];;

    let keySig qp =
      try List.assoc qp scaleData;
      with Not_found -> List.assoc "i0" scaleData;;

end;;

module Scordatura = struct

let mdb = HeptaTonic.keySig;;

(* open strings *)

let sBj qp = (
  (String.sub (mdb qp) 50 10) ^
  (String.sub (mdb qp)  0 50)
);;

let sFn qp = (
  (String.sub (mdb qp) 25 35) ^
  (String.sub (mdb qp)  0 25)
);;

let sCn qp = (
  (mdb qp)
);;

let sGn qp = ( 
  (String.sub (mdb qp) 35 25) ^
  (String.sub (mdb qp)  0 35)
);;

let sDn qp = (
  (String.sub (mdb qp) 10 50) ^
  (String.sub (mdb qp)  0 10)
);;

let sAn qp = (
  (String.sub (mdb qp) 45 15) ^
  (String.sub (mdb qp)  0 45)
);;

let sEn qp = (
  (String.sub (mdb qp) 20 40) ^
  (String.sub (mdb qp)  0 20)
);;

let sBn qp = (
  (String.sub (mdb qp) 55  5) ^
  (String.sub (mdb qp)  0 55)
);;

let sFk qp = (
  (String.sub (mdb qp) 30 30) ^
  (String.sub (mdb qp)  0 30)
);;

(* instrument tunings *)

let scribe qp =
  Printf.printf "\t%s\n" qp;;

let beadgcf qp =
  scribe (qp ^ "-beadgcf");
  List.iter scribe [
    sFn qp;
    sCn qp;
    sGn qp;
    sDn qp;
    sAn qp;
    sEn qp;
    sBn qp
  ];;

let bfbfb qp =
  scribe (qp ^ "-bfbfb");
  List.iter scribe [
    sBn qp;
    sFn qp;
    sBn qp;
    sFn qp;
    sBn qp
  ];;

let cgdae qp =
  scribe (qp ^ "-cgdae");
  List.iter scribe [
    sEn qp;
    sAn qp;
    sDn qp;
    sGn qp;
    sCn qp
  ];;
 
let eadgbe qp =
  scribe (qp ^ "-eadgbe");
  List.iter scribe [
    sEn qp;
    sBn qp;
    sGn qp;
    sDn qp;
    sAn qp;
    sEn qp
  ];;

let fkbjdn qp =
  scribe (qp ^ "-fkbjdn");
  List.iter scribe [
    sDn qp;
    sBj qp;
    sFk qp;
    sDn qp;
    sBj qp;
    sFk qp
  ];;

end;;

(* semigraphic views *)

let aragonite = (fst (List.split HeptaTonic.scaleData));;

let layout qp =
  print_newline ();
  Scordatura.beadgcf qp;; (* tuning *)

let rec cyclotron niter =
  let spokes = List.rev aragonite in
  if niter <= 1 then
    begin
      Printf.printf "\t%s" (List.nth spokes (niter - 1));
      print_newline ()
    end
  else
    begin
      let cols = 8 in
      if (niter mod cols) = 0 then print_newline();
      Printf.printf "\t%s" (List.nth spokes (niter - 1));
      cyclotron (niter - 1)
    end;;

let selections () =
  let niter = (List.length aragonite) in
    print_newline ();
    cyclotron niter;
    print_newline ();;

let cornucopia () =
  List.iter layout aragonite;
  print_newline ();;

let juxtaposed aromas =
  Array.iter layout aromas;
  print_newline ();;

(* application entryway *)

let () =
  let quanta = (Array.length Sys.argv - 1) in
  let argots = (Array.sub Sys.argv 1 quanta) in
    if quanta = 0 then
      selections ()
    else if quanta = 1 then
      begin
        let head = argots.(0) in
        if head = "all" ||
           head = "-a" then
          cornucopia ()
        else if head = "help" ||
                head = "-h" then
          let exec = Sys.argv.(0) in
          let tips = ["ocaml"; exec; "n0 j3"] in
          let hint = String.concat "\x20" tips in
            Printf.printf "\n\t%s\n\n" hint
        else if head = "keys" ||
                head = "-k" then
          selections ()
        else
          juxtaposed argots
      end
    else
      juxtaposed argots;;



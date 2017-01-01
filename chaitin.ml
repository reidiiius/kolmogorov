#!/usr/bin/env ocaml

#use "levenshtein.ml";;

(* semigraphic views *)

let cerussite = [ "n0"; "j5"; "k34"; "j5y6"; "k34x2";
 "k1"; "k17j5"; "j2k34"; "n25x6"; "j25y6"; "k5"; "k15"; 
 "j56"; "k135x4"; "j56y7"; "n345y7"; "k1j6y7"; "k345x2"; 
 "k2"; "k125"; "k25"; "k12"; "k12j5"; "k2x1"; "k2j5";
 "k25x1"; "k2j56"; "k257x1"; "k25x17"; "k2j5y6"; "k2j5x1";
 "k2j56y7"; "j346y5"; "j3k5"; "n167"; "k1j5"; "n67x2";
 "k1j56y7"; "j2k5"; "n6x2"; "j25"; "j256" ];;

let layOut qp = 
  print_newline ();
  Scordatura.eadgbe qp; (* tuning *)
  print_newline ();;

let () =
  print_newline ();
  List.iter layOut cerussite;
  print_newline ();;



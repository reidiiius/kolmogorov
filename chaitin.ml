(* chaitin.ml *)

#use "levenshtein.ml";;

(* semigraphic views *)

let layout qp =
  print_newline ();
  Scordatura.eadgbe qp;; (* tuning *)

let selections () =
  let clefs = SkalaHeptaTonisk.keynotes () in
  let niter = List.length clefs in
    print_newline ();
    Scordatura.columned niter clefs;
    print_newline ();;

let cornucopia () =
  let clefs = SkalaHeptaTonisk.keynotes () in
  List.iter layout clefs;
  print_newline ();;

let juxtaposed aromas =
  Array.iter layout aromas;
  print_newline ();;

(* application entryway *)

let main () =
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

main ();;



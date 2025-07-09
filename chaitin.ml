(* chaitin.ml *)

#use "levenshtein.ml";;

(* semigraphic views *)

let layout qp =
  print_newline ();
  Scordatura.eadgbe qp;; (* tuning *)

let rec cyclotron niter =
  let keynotes = (fst (List.split SkalaHeptaTonisk.berzelian)) in
  let spokes = List.rev keynotes in
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
  let keynotes = (fst (List.split SkalaHeptaTonisk.berzelian)) in
  let niter = (List.length keynotes) in
    print_newline ();
    cyclotron niter;
    print_newline ();;

let cornucopia () =
  let keynotes = (fst (List.split SkalaHeptaTonisk.berzelian)) in
  List.iter layout keynotes;
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



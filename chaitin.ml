(* chaitin.ml *)

#use "levenshtein.ml";;

module Utilitarian = struct

let layout sign =
  print_newline ();
  if HeptaTonisk.membership sign then
    Scordatura.eadgbe sign (* tuning *)
  else
    Printf.printf "\t%s ?\n" sign;;

let cornucopia () =
  let clefs = HeptaTonisk.keynotes () in
    List.iter layout clefs;
    print_newline ();;

let juxtapose aromas =
  Array.iter layout aromas;
  print_newline ();;

let tutorial () =
  let cmd = "ocaml" in
  let src = Sys.argv.(0) in
  let fmt = "\n\n\t" in
  let tip = [
    cmd; src; "help"; fmt;
    cmd; src; "keys"; fmt;
    cmd; src; "n0 j3"; fmt;
    cmd; src; "all | sensible-pager"] in
  let hint = String.concat "\x20" tip in
    Printf.printf "\n\t %s\n\n" hint;;

end;;

(* application entryway *)

let main () =
  let quanta = (Array.length Sys.argv - 1) in
  let argots = (Array.sub Sys.argv 1 quanta) in
    if quanta = 0 then
      HeptaTonisk.selections ()
    else if quanta = 1 then
      begin
        let head = argots.(0) in
        if head = "all" ||
           head = "-a" then
          Utilitarian.cornucopia ()
        else if head = "help" ||
                head = "-h" then
          Utilitarian.tutorial ()
        else if head = "keys" ||
                head = "-k" then
          HeptaTonisk.foxhounds ()
        else
          Utilitarian.juxtapose argots
      end
    else
      Utilitarian.juxtapose argots;;

main ();;



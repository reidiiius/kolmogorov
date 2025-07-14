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
  let tips = {etx|
	ocaml chaitin.ml --help

	ocaml chaitin.ml --keys

	ocaml chaitin.ml --mars

	ocaml chaitin.ml n0 j3

	ocaml chaitin.ml --all | sensible-pager
  |etx} in print_endline tips;;

let sentinel wire aromas =
  Array.find_opt (String.starts_with ~prefix:wire) aromas;;

end;;

(* application entryway *)

let main () =
  let quanta = (Array.length Sys.argv - 1) in
  let argots = (Array.sub Sys.argv 1 quanta) in
    if quanta = 0 then
      HeptaTonisk.selections ()
    else
      let opted = Utilitarian.sentinel "-" argots in
        match opted with
        | Some "--all"
        | Some "-a" -> Utilitarian.cornucopia ()
        | Some "--help"
        | Some "-h" -> Utilitarian.tutorial ()
        | Some "--keys"
        | Some "-k" -> HeptaTonisk.foxhounds ()
        | Some "--mars"
        | Some "-m" -> HeptaTonisk.marshaled ()
        | Some _
        | None -> Utilitarian.juxtapose argots;;

main ();;



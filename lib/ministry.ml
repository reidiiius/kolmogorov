(* ministry.ml *)

let layout sign =
  print_newline ();
  if Geoffroy.membership sign then
    Jacquard.eadgbe sign (* tuning *)
  else
    Printf.printf "\t%s ?\n" sign;;

let cornucopia () =
  let clefs = Geoffroy.keynotes () in
    List.iter layout clefs;
    print_newline ();;

let juxtapose aromas =
  Array.iter layout aromas;
  print_newline ();;

let sentinel wire aromas =
  Array.find_opt (String.starts_with ~prefix:wire) aromas;;



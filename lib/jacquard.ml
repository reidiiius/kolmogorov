(* jacquard.ml *)

let zodiac = [
  ("aqr", (50, 10));
  ("ari", (40, 20));
  ("cap", (55,  5));
  ("cnc", (25, 35));
  ("gem", (30, 30));
  ("leo", (20, 40));
  ("lib", (10, 50));
  ("oph", ( 0, 60));
  ("psc", (45, 15));
  ("sco", ( 5, 55));
  ("sgr", (60,  0));
  ("tau", (35, 25));
  ("vir", (15, 45))
];;

let obtain stem =
  try List.assoc stem zodiac;
  with Not_found -> List.assoc "oph" zodiac;;

let machine sign spot span =
  let wire = Geoffroy.acquire sign in
  let long = String.length wire in
  let size = 60 in
    if Int.equal long size then
      let head = String.sub wire spot span in
      let tail = String.sub wire 0 spot in
      let body = String.cat head tail in
      let grow = String.sub body 0 4 in
        String.cat body grow
    else
      String.make size (Char.chr 45);;

let tensile sign stem =
  let (spot, span) = obtain stem
  in machine sign spot span;;

(* instrument tunings *)

let attunes () =
  ["beadgcf"; "bfbfb"; "cgdae"; "eadgbe"; "fkbjdn"; "piano"];;

let pegboxes () =
  print_newline ();
  print_string (Char.chr 32 |> String.make 7);
  let funky = (fun cord ->
    Printf.printf "   :%s" cord) in
  let gears = attunes () in
  List.iter funky gears;
  print_newline ();;

let stockade spot =
  let harps = attunes () in
  let width = List.length harps in
  if width > 0 then
    if (spot >= 0) && (spot < width) then
      List.nth harps spot
    else
      List.hd harps
  else
    "piano";;
(*
let randomize () =
  Random.self_init ();
  Random.full_int Int.max_int;;
*)
let variant = Int.to_string 3971809718987134967;; (* (randomize ()) *)

let diadem sign pegs =
  String.concat "-" [sign; pegs; variant];;

let scribe yarn =
  Printf.printf "\t%s\n" yarn;;

let lattice sign sols =
  List.iter (fun stem ->
    scribe (tensile sign stem)) sols;;

let beadgcf sign =
  scribe (diadem sign "beadgcf");
  let sols = ["cnc"; "sgr"; "tau"; "lib"; "psc"; "leo"; "cap"]
  in lattice sign sols;;

let bfbfb sign =
  scribe (diadem sign "bfbfb");
  let sols = ["cap"; "cnc"; "cap"; "cnc"; "cap"]
  in lattice sign sols;;

let cgdae sign =
  scribe (diadem sign "cgdae");
  let sols = ["leo"; "psc"; "lib"; "tau"; "sgr"]
  in lattice sign sols;;

let eadgbe sign =
  scribe (diadem sign "eadgbe");
  let sols = ["leo"; "cap"; "tau"; "lib"; "psc"; "leo"]
  in lattice sign sols;;

let fkbjdn sign =
  scribe (diadem sign "fkbjdn");
  let sols = ["lib"; "aqr"; "gem"; "lib"; "aqr"; "gem"]
  in lattice sign sols;;

let piano sign =
  scribe (diadem sign "piano");
  let sols = ["sgr"]
  in lattice sign sols;;

(* presentation composition *)

let layout tuned sign =
  print_newline ();
  if Geoffroy.membership sign then
    match tuned with
    | "beadgcf" -> beadgcf sign
    | "bfbfb" -> bfbfb sign
    | "cgdae" -> cgdae sign
    | "eadgbe" -> eadgbe sign
    | "fkbjdn" -> fkbjdn sign
    | "piano" -> piano sign
    | _ -> piano "i0"
  else
    Printf.printf "\t%s ?\n" sign;;

let juxtapose tuned words =
  List.iter (layout tuned) words;
  print_newline ();;

let gearbox spot words =
  let harps = attunes () in
  let tuned = List.nth harps spot in
  let funky = (fun item -> not
  (String.starts_with ~prefix:":" item)) in
  let finds = List.filter funky words in
    if List.length finds > 0 then
      juxtapose tuned finds
    else
      Geoffroy.foxhounds ();;

let rec assemble flags count =
  let harps = attunes () in
  let audit = List.length harps in
  let noted = List.nth harps count in
  let sieve = (fun item ->
    String.ends_with ~suffix:noted item) in
  let found = List.exists sieve flags in
  if count >= (audit - 1) || found then
    noted
  else
    assemble flags (count + 1);;

let cornucopia tuned flags =
  let clefs = Geoffroy.keynotes () in
  let quant = List.length flags in
  if quant > 1 then
    let raked = assemble flags 0 in
    List.iter (layout raked) clefs
  else
    List.iter (layout tuned) clefs;
  print_newline ();;

let rec dumpster posit =
  let clefs = Geoffroy.keynotes () in
  let harps = attunes () in
  let audit = List.length harps in
  if posit >= (audit - 1) then
    begin
      List.iter (
        fun sign -> layout (List.nth harps posit) sign
      ) clefs;
      print_newline ()
    end
  else
    begin
      List.iter (
        fun sign -> layout (List.nth harps posit) sign
      ) clefs;
      dumpster (posit + 1)
    end;;



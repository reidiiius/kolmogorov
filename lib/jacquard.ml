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
]

let obtain stem =
  try List.assoc stem zodiac;
  with Not_found -> List.assoc "oph" zodiac

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
      String.make size (Char.chr 45)

let tensile sign stem =
  let (spot, span) = obtain stem
  in machine sign spot span

(* instrument tunings *)

let attunes () =
  ["beadgcf"; "bfbfb"; "cgdae"; "eadgbe"; "fkbjdn"; "piano"]

let produce () =
  let harps = attunes () in
  let audit = List.length harps in
  (audit, harps)

let lutherie () =
  let harps = attunes ()
  and carve = (fun cord -> Printf.printf "   :%s" cord)
  in List.iter carve harps

let pegboxes () =
  print_newline ();
  print_string (Char.chr 32 |> String.make 7);
  lutherie ();
  print_newline ()

let stockade spot =
  let harps = attunes () in
  let width = List.length harps in
  if width > 0 then
    if (spot >= 0) && (spot < width) then
      List.nth harps spot
    else
      List.hd harps
  else
    "piano"
(*
let randomize () =
  Random.self_init ();
  Random.full_int Int.max_int
*)
let variant = Int.to_string 3971809718987134967 (* (randomize ()) *)

let diadem sign pegs =
  String.concat "-" [sign; pegs; variant]

let scribe yarn =
  Printf.printf "\t%s\n" yarn

let engrave sign stem =
  scribe (tensile sign stem)

let lattice sign tons =
  List.iter (engrave sign) tons

let beadgcf sign =
  scribe (diadem sign "beadgcf");
  let tons = ["cnc"; "sgr"; "tau"; "lib"; "psc"; "leo"; "cap"]
  in lattice sign tons

let bfbfb sign =
  scribe (diadem sign "bfbfb");
  let tons = ["cap"; "cnc"; "cap"; "cnc"; "cap"]
  in lattice sign tons

let cgdae sign =
  scribe (diadem sign "cgdae");
  let tons = ["leo"; "psc"; "lib"; "tau"; "sgr"]
  in lattice sign tons

let eadgbe sign =
  scribe (diadem sign "eadgbe");
  let tons = ["leo"; "cap"; "tau"; "lib"; "psc"; "leo"]
  in lattice sign tons

let fkbjdn sign =
  scribe (diadem sign "fkbjdn");
  let tons = ["lib"; "aqr"; "gem"; "lib"; "aqr"; "gem"]
  in lattice sign tons

let piano sign =
  scribe (diadem sign "piano");
  let tons = ["sgr"]
  in lattice sign tons

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
    Printf.printf "\t%s ?\n" sign

let juxtapose tuned words =
  List.iter (layout tuned) words;
  print_newline ()

let bounced stem =
  let atom = Char.chr 58 in
  let face = String.make 1 atom in
    not (String.starts_with ~prefix:face stem)

let gearbox spot words =
  let (audit, harps) = produce () in
    if (spot >= 0) && (spot <= (audit - 1)) then
      let tuned = List.nth harps spot
      and finds = List.filter bounced words in
        if List.length finds > 0 then
          juxtapose tuned finds
        else
          Geoffroy.foxhounds ()
    else begin
      pegboxes ();
      print_newline ()
    end

let caboose noted sieve =
  String.ends_with ~suffix:noted sieve

let rec assemble flags count =
  let (audit, harps) = produce () in
  let noted = List.nth harps count in
  let found = List.exists (caboose noted) flags in
  if count >= (audit - 1) || found then noted
  else assemble flags (count + 1)

let cornucopia tuned flags =
  let clefs = Geoffroy.keynotes () in
  let quant = List.length flags in
  if quant > 1 then
    let raked = assemble flags 0 in
    List.iter (layout raked) clefs
  else
    List.iter (layout tuned) clefs;
  print_newline ()

let coworker harps posit sign =
  let tuned = List.nth harps posit in
    layout tuned sign

let rec dumpster posit =
  let clefs = Geoffroy.keynotes ()
  and (audit, harps) = produce () in
  if posit >= (audit - 1) then
    begin
      List.iter (coworker harps posit) clefs;
      print_newline ()
    end
  else
    begin
      List.iter (coworker harps posit) clefs;
      dumpster (posit + 1)
    end



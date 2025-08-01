(* jacquard.ml *)

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

let beadgcf sign =
  scribe (diadem sign "beadgcf");
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
  scribe (diadem sign "bfbfb");
  List.iter scribe [
    sBn sign;
    sFn sign;
    sBn sign;
    sFn sign;
    sBn sign
  ];;

let cgdae sign =
  scribe (diadem sign "cgdae");
  List.iter scribe [
    sEn sign;
    sAn sign;
    sDn sign;
    sGn sign;
    sCn sign
  ];;
 
let eadgbe sign =
  scribe (diadem sign "eadgbe");
  List.iter scribe [
    sEn sign;
    sBn sign;
    sGn sign;
    sDn sign;
    sAn sign;
    sEn sign
  ];;

let fkbjdn sign =
  scribe (diadem sign "fkbjdn");
  List.iter scribe [
    sDn sign;
    sBj sign;
    sFk sign;
    sDn sign;
    sBj sign;
    sFk sign
  ];;

let piano sign =
  scribe (diadem sign "piano");
  scribe (sCn sign);;

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

let cornucopia tuned =
  let clefs = Geoffroy.keynotes () in
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



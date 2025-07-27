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

let diadem sign pegs =
  String.concat "-" [sign; pegs];;

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



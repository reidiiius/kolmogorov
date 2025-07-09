(* levenshtein.ml *)

#use "shannon.ml";;

module Scordatura = struct

let reveal = SkalaHeptaTonisk.designate;;

(* open strings *)

let sBj sign = (
  (String.sub (reveal sign) 50 10) ^
  (String.sub (reveal sign)  0 50)
);;

let sFn sign = (
  (String.sub (reveal sign) 25 35) ^
  (String.sub (reveal sign)  0 25)
);;

let sCn sign = (
  (reveal sign)
);;

let sGn sign = (
  (String.sub (reveal sign) 35 25) ^
  (String.sub (reveal sign)  0 35)
);;

let sDn sign = (
  (String.sub (reveal sign) 10 50) ^
  (String.sub (reveal sign)  0 10)
);;

let sAn sign = (
  (String.sub (reveal sign) 45 15) ^
  (String.sub (reveal sign)  0 45)
);;

let sEn sign = (
  (String.sub (reveal sign) 20 40) ^
  (String.sub (reveal sign)  0 20)
);;

let sBn sign = (
  (String.sub (reveal sign) 55  5) ^
  (String.sub (reveal sign)  0 55)
);;

let sFk sign = (
  (String.sub (reveal sign) 30 30) ^
  (String.sub (reveal sign)  0 30)
);;

(* instrument tunings *)

let scribe yarn =
  Printf.printf "\t%s\n" yarn;;

let beadgcf sign =
  scribe (sign ^ "-beadgcf");
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
  scribe (sign ^ "-bfbfb");
  List.iter scribe [
    sBn sign;
    sFn sign;
    sBn sign;
    sFn sign;
    sBn sign
  ];;

let cgdae sign =
  scribe (sign ^ "-cgdae");
  List.iter scribe [
    sEn sign;
    sAn sign;
    sDn sign;
    sGn sign;
    sCn sign
  ];;
 
let eadgbe sign =
  scribe (sign ^ "-eadgbe");
  List.iter scribe [
    sEn sign;
    sBn sign;
    sGn sign;
    sDn sign;
    sAn sign;
    sEn sign
  ];;

let fkbjdn sign =
  scribe (sign ^ "-fkbjdn");
  List.iter scribe [
    sDn sign;
    sBj sign;
    sFk sign;
    sDn sign;
    sBj sign;
    sFk sign
  ];;

end;;



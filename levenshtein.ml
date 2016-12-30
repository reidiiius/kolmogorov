
#use "shannon.ml";;

let mdb = SkalaHeptaTonisk.berzelian;;

(* open strings *)

let sBj qp = (
  (String.sub (mdb qp) 50 10) ^
  (String.sub (mdb qp)  0 50)
);;

let sFn qp = (
  (String.sub (mdb qp) 25 35) ^
  (String.sub (mdb qp)  0 25)
);;

let sCn qp = (
  (mdb qp)
);;

let sGn qp = ( 
  (String.sub (mdb qp) 35 25) ^
  (String.sub (mdb qp)  0 35)
);;

let sDn qp = (
  (String.sub (mdb qp) 10 50) ^
  (String.sub (mdb qp)  0 10)
);;

let sAn qp = (
  (String.sub (mdb qp) 45 15) ^
  (String.sub (mdb qp)  0 45)
);;

let sEn qp = (
  (String.sub (mdb qp) 20 40) ^
  (String.sub (mdb qp)  0 20)
);;

let sBn qp = (
  (String.sub (mdb qp) 55  5) ^
  (String.sub (mdb qp)  0 55)
);;

let sFk qp = (
  (String.sub (mdb qp) 30 30) ^
  (String.sub (mdb qp)  0 30)
);;

(* instrument tunings *)

let scribe qp =
  Printf.printf "\t%s\n" qp;;

let beadgcf qp =
  scribe (qp ^ "-beadgcf");
  scribe (sFn qp);
  scribe (sCn qp);
  scribe (sGn qp);
  scribe (sDn qp);
  scribe (sAn qp);
  scribe (sEn qp);
  scribe (sBn qp);;

let bfbfb qp =
  scribe (qp ^ "-bfbfb");
  scribe (sBn qp);
  scribe (sFn qp);
  scribe (sBn qp);
  scribe (sFn qp);
  scribe (sBn qp);;

let cgdae qp =
  scribe (qp ^ "-cgdae");
  scribe (sEn qp);
  scribe (sAn qp);
  scribe (sDn qp);
  scribe (sGn qp);
  scribe (sCn qp);;
 
let eadgbe qp =
  scribe (qp ^ "-eadgbe");
  scribe (sEn qp);
  scribe (sBn qp);
  scribe (sGn qp);
  scribe (sDn qp);
  scribe (sAn qp);
  scribe (sEn qp);;

let fkbjdn qp =
  scribe (qp ^ "-fkbjdn");
  scribe (sDn qp);
  scribe (sBj qp);
  scribe (sFk qp);
  scribe (sDn qp);
  scribe (sBj qp);
  scribe (sFk qp);;



(* portico.ml *)

open Kolmogorov

(* application entryway *)

let atrium () =
  let quanta = (Array.length Sys.argv - 1) in
  let argots = (Array.sub Sys.argv 1 quanta) in
  let bounds = List.length (Geoffroy.keynotes ()) in
    if quanta = 0 || quanta >= bounds then
      Geoffroy.selections ()
    else
      let tuned = Jacquard.stockade 3 in
      let clefs = Ministry.governor 9 argots in
      let opted = Ministry.sentinel ":" argots in
        match opted with
        | Some ":all"
        | Some ":a" -> Ministry.cornucopia tuned
        | Some ":b5"
        | Some ":bfbfb" -> Ministry.gearbox 1 clefs
        | Some ":bass"
        | Some ":beadgcf" -> Ministry.gearbox 0 clefs
        | Some ":cello"
        | Some ":cgdae" -> Ministry.gearbox 2 clefs
        | Some ":gtr"
        | Some ":guitar"
        | Some ":eadgbe" -> Ministry.gearbox 3 clefs
        | Some ":help"
        | Some ":h" -> Ministry.tutorial ()
        | Some ":fkbjdn" -> Ministry.gearbox 4 clefs
        | Some ":keys"
        | Some ":k" -> Geoffroy.foxhounds ()
        | Some ":m3" -> Ministry.gearbox 4 clefs
        | Some ":mars"
        | Some ":m" -> Geoffroy.marshaled ()
        | Some ":p4" -> Ministry.gearbox 0 clefs
        | Some ":p5" -> Ministry.gearbox 2 clefs
        | Some ":piano"
        | Some ":u" -> Ministry.gearbox 5 clefs
        | Some ":viola"
        | Some ":violin" -> Ministry.gearbox 2 clefs
        | Some _
        | None -> Ministry.juxtapose tuned clefs;;

atrium ()



(* portico.ml *)

open Kolmogorov

(* application entryway *)

let atrium () =
  let quanta = (Array.length Sys.argv - 1) in
  let argots = (Array.sub Sys.argv 1 quanta) in
  let bounds = Geoffroy.bankroll () in
    if quanta = 0 || quanta >= bounds then
      Geoffroy.selections ()
    else
      let tuned = Jacquard.stockade 3 in
      let words = Ministry.governor 9 argots in
      let opted = Ministry.sentinel ":" words in
        match opted with
        | Some ":all"
        | Some ":a" -> Ministry.cornucopia tuned
        | Some ":b5"
        | Some ":bfbfb" -> Ministry.gearbox 1 words
        | Some ":bass"
        | Some ":beadgcf" -> Ministry.gearbox 0 words
        | Some ":cello"
        | Some ":cgdae" -> Ministry.gearbox 2 words
        | Some ":gtr"
        | Some ":guitar"
        | Some ":eadgbe" -> Ministry.gearbox 3 words
        | Some ":help"
        | Some ":h" -> Ministry.tutorial ()
        | Some ":fkbjdn" -> Ministry.gearbox 4 words
        | Some ":keys"
        | Some ":k" -> Geoffroy.foxhounds ()
        | Some ":m3" -> Ministry.gearbox 4 words
        | Some ":mars"
        | Some ":m" -> Geoffroy.marshaled ()
        | Some ":p4" -> Ministry.gearbox 0 words
        | Some ":p5" -> Ministry.gearbox 2 words
        | Some ":piano"
        | Some ":u" -> Ministry.gearbox 5 words
        | Some ":viola"
        | Some ":violin" -> Ministry.gearbox 2 words
        | Some _
        | None -> Ministry.juxtapose tuned words;;

atrium ()



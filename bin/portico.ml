(* portico.ml *)

open Kolmogorov

(* application entryway *)

let atrium () =
  let quanta = (Array.length Sys.argv - 1) in
  let argots = (Array.sub Sys.argv 1 quanta)
  and bounds = Geoffroy.bankroll () in
    if quanta = 0 || quanta >= bounds then
      Ministry.preamble ()
    else
      let front = ":"
      and tuned = Jacquard.stockade 3
      and words = Ministry.governor 9 argots in
      let flags = Ministry.switches front words in
    if List.length flags > 0 then
      let opted = Ministry.sentinel front words in
        match opted with
        | Some ":alloys" -> Geoffroy.elemental ()
        | Some ":all"
        | Some ":a" -> Jacquard.cornucopia tuned flags
        | Some ":a4"
        | Some ":b5"
        | Some ":bfbfb" -> Jacquard.gearbox 1 words
        | Some ":bass"
        | Some ":beadgcf" -> Jacquard.gearbox 0 words
        | Some ":cello"
        | Some ":cgdae" -> Jacquard.gearbox 2 words
        | Some ":dump" -> Jacquard.dumpster 0
        | Some ":d5" -> Jacquard.gearbox 1 words
        | Some ":f"
        | Some ":find" -> Geoffroy.grouper words
        | Some ":gtr"
        | Some ":guitar"
        | Some ":eadgbe" -> Jacquard.gearbox 3 words
        | Some ":help"
        | Some ":h" -> Ministry.tutorial ()
        | Some ":fkbjdn" -> Jacquard.gearbox 4 words
        | Some ":keys"
        | Some ":k" -> Ministry.keystone ()
        | Some ":m3" -> Jacquard.gearbox 4 words
        | Some ":m"
        | Some ":mars" -> Ministry.solarium ()
        | Some ":metals" -> Geoffroy.elemental ()
        | Some ":p4" -> Jacquard.gearbox 0 words
        | Some ":p5" -> Jacquard.gearbox 2 words
        | Some ":piano"
        | Some ":u" -> Jacquard.gearbox 5 words
        | Some ":viola"
        | Some ":violin" -> Jacquard.gearbox 2 words
        | Some _
        | None -> Jacquard.juxtapose tuned words
    else
      Jacquard.juxtapose tuned words

let () = atrium ()



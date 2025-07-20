(* portico.ml *)

open Kolmogorov

(* application entryway *)

let atrium () =
  let quanta = (Array.length Sys.argv - 1) in
  let argots = (Array.sub Sys.argv 1 quanta) in
    if quanta = 0 then
      Geoffroy.selections ()
    else
      let opted = Ministry.sentinel ":" argots in
        match opted with
        | Some ":all"
        | Some ":a" -> Ministry.cornucopia ()
        | Some ":help"
        | Some ":h" -> Ministry.tutorial ()
        | Some ":keys"
        | Some ":k" -> Geoffroy.foxhounds ()
        | Some ":mars"
        | Some ":m" -> Geoffroy.marshaled ()
        | Some _
        | None -> Ministry.juxtapose argots;;

atrium ()



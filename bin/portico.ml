(* portico.ml *)

open Kolmogorov

let tutorial () =
  let hows = "dune exec kolmogorov" in
  let tips = Printf.sprintf {etx|
	%s :help

	%s :keys

	%s :mars

	%s n0 j3

	%s :all | sensible-pager
  |etx} hows hows hows hows hows
  in print_endline tips;;

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
        | Some ":h" -> tutorial ()
        | Some ":keys"
        | Some ":k" -> Geoffroy.foxhounds ()
        | Some ":mars"
        | Some ":m" -> Geoffroy.marshaled ()
        | Some _
        | None -> Ministry.juxtapose argots;;

atrium ()



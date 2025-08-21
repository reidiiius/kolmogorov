(** Module [Thorngate] renders fingerboard matrices for various chordophones. *)

(** Module [Polychrome] supplies [scales] databank and processing functions. *)
module Polychrome : sig

  val scales : (string * string) list
  (** [scales] is a key-value tuple list of musical pitch collections.

    {v let stow = List.assoc "n0" Polychrome.scales;; v}
  *)

  val acquire : string -> string
  (**
    {v let wire = Polychrome.acquire "n0";; v}
  *)

  val membership : string -> bool
  (**
    {v let bone = Polychrome.membership "n0";; v}
  *)

  val ordnance : string list -> string list
  (**
    {v let lord = Polychrome.ordnance ["two"; "one"];; v}
  *)

  val keynotes : unit -> string list
  (**
    {v let lids = Polychrome.keynotes ();; v}
  *)

  val bankroll : unit -> int
  (**
    {v let inky = Polychrome.bankroll ();; v}
  *)

  val turnkeys : unit -> int * string list
  (**
    {v let (inky, lids) = Polychrome.turnkeys ();; v}
  *)

  val revealed : string -> unit
  (**
    {v let () = Polychrome.revealed "errs";; v}
  *)

  val sideshow : string list -> int -> unit
  (**
    {v let () = Polychrome.sideshow lids inky;; v}
  *)

  val columned : int -> string list -> unit
  (**
    {v let () = Polychrome.columned inky lids;; v}
  *)

  val selections : unit -> unit
  (**
    {v let () = Polychrome.selections ();; v}
  *)

  val frontage : string -> string -> bool
  (**
    {v let bone = Polychrome.frontage "-" "-help";; v}
  *)

  val discern : string -> string list -> string list
  (**
    {v let lows = Polychrome.discern "j" lids;; v}
  *)

  val foxhounds : unit -> unit
  (**
    {v let () = Polychrome.foxhounds ();; v}
  *)

  val separate : string -> string list
  (**
    {v let labs = Polychrome.separate wire;; v}
  *)

  val checkmate : string list -> bool
  (**
    {v let bone = Polychrome.checkmate labs;; v}
  *)

  val byzantine : string -> string
  (**
    {v let sole = Polychrome.byzantine "n0";; v}
  *)

  val dominican : unit -> string list
  (**
    {v let lips = Polychrome.dominican ();; v}
  *)

  val marshaled : unit -> unit
  (**
    {v let () = Polychrome.marshaled ();; v}
  *)

  val approval : string -> bool
  (**
    {v let bone = Polychrome.approval "HgAu";; v}
  *)

  val uniforms : unit -> string list
  (**
    {v let labs = Polychrome.uniforms ();; v}
  *)

  val elemental : unit -> unit
  (**
    {v let () = Polychrome.elemental ();; v}
  *)

  val scrubber : string -> string list
  (**
    {v let laps = Polychrome.scrubber wire;; v}
  *)

  val inventory : string -> unit
  (**
    {v let () = Polychrome.inventory "HgAu";; v}
  *)

  val periodic : string -> bool
  (**
    {v let bone = Polychrome.periodic "HgAu";; v}
  *)

  val refinery : string -> unit
  (**
    {v let () = Polychrome.refinery "PbAu";; v}

    {v let () = Polychrome.refinery "k125";; v}
  *)

  val grouper : string list -> unit
  (**
    {v let () = Polychrome.grouper ["k5"; "NpFe"; "k25"; "NpCu"];; v}
  *)

end

(** Module [Scordatura] supplies instrument tuning and formatting functions. *)
module Scordatura : sig
  val zodiac : (string * (int * int)) list
  (**
    {v let (spot, span) = List.assoc stem Scordatura.zodiac;; v}
  *)

  val obtain : string -> int * int
  (**
    {v let (spot, span) = Scordatura.obtain stem;; v}
  *)

  val machine : string -> int -> int -> string
  (**
    {v let yarn = Scordatura.machine sign spot span;; v}
  *)

  val tensile : string -> string -> string
  (**
    {v let yarn = Scordatura.tensile sign stem;; v}
  *)

  val attunes : unit -> string list
  (**
    {v let harps = Scordatura.attunes ();; v}
  *)

  val produce : unit -> int * string list
  (**
    {v let (audit, harps) = Scordatura.produce ();; v}
  *)

  val lutherie : unit -> unit
  (**
    {v let () = Scordatura.lutherie ();; v}
  *)

  val pegboxes : unit -> unit
  (**
    {v let () = Scordatura.pegboxes ();; v}
  *)

  val stockade : int -> string
  (**
    {v let tuned = Scordatura.stockade 0;; v}
  *)

  val randomize : unit -> int
  (**
    {v let numb = Scordatura.randomize ();; v}
  *)

  val variant : string
  (**
    {v let variant = Int.to_string numb;; v}
  *)

  val diadem : string -> string -> string
  (**
    {v let yarn = Scordatura.diadem sign pegs;; v}
  *)

  val scribe : string -> unit
  (**
    {v let () = Scordatura.scribe yarn;; v}
  *)

  val engrave : string -> string -> unit
  (**
    {v let () = Scordatura.engrave sign stem;; v}
  *)

  val lattice : string -> string list -> unit
  (**
    {v let () = Scordatura.lattice sign tons;; v}
  *)

  val beadgcf : string -> unit
  (**
    {v let () = Scordatura.beadgcf sign;; v}
  *)

  val bfbfb : string -> unit
  (**
    {v let () = Scordatura.bfbfb sign;; v}
  *)

  val cgdae : string -> unit
  (**
    {v let () = Scordatura.cgdae sign;; v}
  *)

  val eadgbe : string -> unit
  (**
    {v let () = Scordatura.eadgbe sign;; v}
  *)

  val fkbjdn : string -> unit
  (**
    {v let () = Scordatura.fkbjdn sign;; v}
  *)

  val piano : string -> unit
  (**
    {v let () = Scordatura.piano sign;; v}
  *)

  val layout : string -> string -> unit
  (**
    {v let () = Scordatura.layout tuned sign;; v}
  *)

  val juxtapose : string -> string list -> unit
  (**
    {v let () = Scordatura.juxtapose tuned words;; v}
  *)

  val bounced : string -> bool
  (**
    {v let bone = scordatura.bounced stem;; v}
  *)

  val gearbox : int -> string list -> unit
  (**
    {v let () = Scordatura.gearbox spot words;; v}
  *)

  val caboose : string -> string -> bool
  (**
    {v let bone = scordatura.caboose noted sieve;; v}
  *)

  val assemble : string list -> int -> string
  (**
    {v let raked = Scordatura.assemble flags count;; v}
  *)

  val cornucopia : string -> string list -> unit
  (**
    {v let () = cornucopia tuned flags;; v}
  *)

  val coworker : string list -> int -> string -> unit
  (**
    {v let () = Scordatura.coworker harps posit sign;; v}
  *)

  val dumpster : int -> unit
  (**
    {v let () = Scordatura.dumpster posit;; v}
  *)

end

(** Module [Technician] supplies display and support functions. *)
module Technician : sig
  val utensils : unit -> string list
  (**
    {v let tools = Technician.utensils ();; v}
  *)

  val woodshed : unit -> unit
  (**
    {v let () = Technician.woodshed ();; v}
  *)

  val toolbars : unit -> unit
  (**
    {v let () = Technician.toolbars ();; v}
  *)

  val sentinel : string -> string list -> string option
  (**
    {v let opted = Technician.sentinel front words;; v}
  *)

  val switches : string -> string list -> string list
  (**
    {v let flags = Technician.switches front words;; v}
  *)

  val governor : int -> string array -> string list
  (**
    {v let words = Technician.governor 9 argots;; v}
  *)

  val exampled : string -> unit
  (**
    {v let () = Technician.exampled post;; v}
  *)

  val tutorial : unit -> unit
  (**
    {v let () = Technician.tutorial ();;  v}
  *)

  val keystone : unit -> unit
  (**
    {v let () = Technician.keystone ();; v}
  *)

  val solarium : unit -> unit
  (**
    {v let () = Technician.solarium ();;  v}
  *)

  val preamble : unit -> unit
  (**
    {v let () = Technician.preamble ();; v}
  *)

end

(** Module [Colonnade] contains the program entry point or main function. *)
module Colonnade : sig

  (** Application entryway *)
  val vestibule : unit -> unit
  (**
    {v let () = Colonnade.vestibule ();; v}
  *)

end



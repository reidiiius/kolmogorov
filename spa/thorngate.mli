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
    {v let unto = Polychrome.revealed "errs";; v}
  *)

  val sideshow : string list -> int -> unit
  (**
    {v let unto = Polychrome.sideshow lids inky;; v}
  *)

  val columned : int -> string list -> unit
  (**
    {v let unto = Polychrome.columned inky lids;; v}
  *)

  val selections : unit -> unit
  (**
    {v let unto = Polychrome.selections ();; v}
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
    {v let unto = Polychrome.foxhounds ();; v}
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
    {v let unto = Polychrome.marshaled ();; v}
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
    {v let unto = Polychrome.elemental ();; v}
  *)

  val scrubber : string -> string list
  (**
    {v let laps = Polychrome.scrubber wire;; v}
  *)

  val inventory : string -> unit
  (**
    {v let unto = Polychrome.inventory "HgAu";; v}
  *)

  val periodic : string -> bool
  (**
    {v let bone = Polychrome.periodic "HgAu";; v}
  *)

  val refinery : string -> unit
  (**
    {v let unto = Polychrome.refinery "PbAu";; v}

    {v let unto = Polychrome.refinery "k125";; v}
  *)

  val grouper : string list -> unit
  (**
    {v let unto = Polychrome.grouper ["k5"; "NpFe"; "k25"; "NpCu"];; v}
  *)

end

(** Module [Scordatura] supplies instrument tuning and formatting functions. *)
module Scordatura : sig
  val zodiac : (string * (int * int)) list
  val obtain : string -> int * int
  val machine : string -> int -> int -> string
  val tensile : string -> string -> string
  val attunes : unit -> string list
  val produce : unit -> int * string list
  val lutherie : unit -> unit
  val pegboxes : unit -> unit
  val stockade : int -> string
  val randomize : unit -> int
  val variant : string
  val diadem : string -> string -> string
  val scribe : string -> unit
  val engrave : string -> string -> unit
  val lattice : string -> string list -> unit
  val beadgcf : string -> unit
  val bfbfb : string -> unit
  val cgdae : string -> unit
  val eadgbe : string -> unit
  val fkbjdn : string -> unit
  val piano : string -> unit
  val layout : string -> string -> unit
  val juxtapose : string -> string list -> unit
  val bounced : string -> bool
  val gearbox : int -> string list -> unit
  val caboose : string -> string -> bool
  val assemble : string list -> int -> string
  val cornucopia : string -> string list -> unit
  val coworker : string list -> int -> string -> unit
  val dumpster : int -> unit
end

(** Module [Technician] supplies display and support functions. *)
module Technician : sig
  val utensils : unit -> string list
  val woodshed : unit -> unit
  val toolbars : unit -> unit
  val sentinel : string -> string list -> string option
  val switches : string -> string list -> string list
  val governor : int -> string array -> string list
  val exampled : string -> unit
  val tutorial : unit -> unit
  val keystone : unit -> unit
  val solarium : unit -> unit
  val preamble : unit -> unit
end

(** Module [Colonnade] contains the program entry point or main function. *)
module Colonnade : sig

  (** Application entryway *)
  val vestibule : unit -> unit

end



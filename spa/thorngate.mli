
module Polychrome :
  sig
    val scales : (string * string) list
    val acquire : string -> string
    val membership : string -> bool
    val ordnance : String.t list -> String.t list
    val keynotes : unit -> String.t list
    val bankroll : unit -> int
    val turnkeys : unit -> int * String.t list
    val revealed : string -> unit
    val sideshow : string list -> int -> unit
    val columned : int -> string list -> unit
    val selections : unit -> unit
    val frontage : string -> string -> bool
    val discern : string -> string list -> string list
    val foxhounds : unit -> unit
    val checkmate : string list -> bool
    val byzantine : string -> string
    val dominican : unit -> String.t list
    val marshaled : unit -> unit
    val separate : string -> string list
    val approval : string -> bool
    val uniforms : unit -> String.t list
    val elemental : unit -> unit
    val scrubber : string -> string list
    val inventory : String.t -> unit
    val periodic : string -> bool
    val refinery : String.t -> unit
    val grouper : String.t list -> unit
  end

module Scordatura :
  sig
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

module Technician :
  sig
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

module Colonnade :
  sig
    val vestibule : unit -> unit
  end


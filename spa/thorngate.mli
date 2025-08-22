(** Module [Thorngate] renders fingerboard matrices for various chordophones. *)

(** Module [Polychrome] supplies [scales] databank and processing functions. *)
module Polychrome : sig

  val scales : (string * string) list
  (** [scales] is a key-value tuple list of musical pitch collections.

    {v let sign = "n0";; v}
    {v let stow = List.assoc sign Polychrome.scales;; v}
  *)

  val acquire : string -> string
  (**
    {v let wire = Polychrome.acquire sign;; v}
  *)

  val membership : string -> bool
  (**
    {v let bone = Polychrome.membership sign;; v}
  *)

  val ordnance : string list -> string list
  (**
    {v let stems = ["two"; "one"];; v}
    {v let lords = Polychrome.ordnance stems;; v}
  *)

  val keynotes : unit -> string list
  (** Returns a string list of keys from scales.

    {v let clefs = Polychrome.keynotes ();; v}
  *)

  val bankroll : unit -> int
  (** Returns the number of key-value tuples in scales.

    {v let niter = Polychrome.bankroll ();; v}
  *)

  val turnkeys : unit -> int * string list
  (** Returns a tuple which contains the number of tuples
      in scales and a string list of keys from scales.

    {v let (inky, lids) = Polychrome.turnkeys ();; v}
  *)

  val revealed : string -> unit
  (**
    {v let expo = "errs";; v}
    {v let () = Polychrome.revealed expo;; v}
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
    {v let face = "-" and stem = "-help";; v}
    {v let bone = Polychrome.frontage face stem;; v}
  *)

  val discern : string -> string list -> string list
  (**
    {v let flat = "j";; v}
    {v let lows = Polychrome.discern flat lids;; v}
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
    {v let sole = Polychrome.byzantine sign;; v}
  *)

  val dominican : unit -> string list
  (**
    {v let dons = Polychrome.dominican ();; v}
  *)

  val marshaled : unit -> unit
  (**
    {v let () = Polychrome.marshaled ();; v}
  *)

  val approval : string -> bool
  (**
    {v let yarn = "HgAu";; v}
    {v let bone = Polychrome.approval yarn;; v}
  *)

  val uniforms : unit -> string list
  (**
    {v let ores = Polychrome.uniforms ();; v}
  *)

  val elemental : unit -> unit
  (**
    {v let () = Polychrome.elemental ();; v}
  *)

  val scrubber : string -> string list
  (**
    {v let lugs = Polychrome.scrubber wire;; v}
  *)

  val inventory : string -> unit
  (**
    {v let spat = "HgAu";; v}
    {v let () = Polychrome.inventory spat;; v}
  *)

  val periodic : string -> bool
  (**
    {v let sift = "CuPb";; v}
    {v let bone = Polychrome.periodic sift;; v}
  *)

  val refinery : string -> unit
  (**
    {v let seal = "PbAu";; v}
    {v let () = Polychrome.refinery seal;; v}

    {v let sign = "j2k56";; v}
    {v let () = Polychrome.refinery sign;; v}
  *)

  val grouper : string list -> unit
  (**
    {v let words = ["k5"; "NpFe"; "k25"; "NpCu"];; v}
    {v let () = Polychrome.grouper words;; v}
  *)

end

(** Module [Scordatura] supplies instrument tuning and formatting functions. *)
module Scordatura : sig
  val zodiac : (string * (int * int)) list
  (** [zodiac] is a key-value tuple list of chromatic tuning metrics.

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
  (** Returns a string list of various tuning names.

    {v let harps = Scordatura.attunes ();; v}
  *)

  val produce : unit -> int * string list
  (** Returns a tuple which contaiins the number of names
      and a string list of tuning names from attunes.

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
  (** Returns a string list of operational features.

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

  val vestibule : unit -> unit
  (** Application entryway.

    {v let () = Colonnade.vestibule ();; v}
  *)

end



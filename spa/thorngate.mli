(** Module [Thorngate] renders fingerboard matrices for various chordophones. *)

(** Module [Polychrome] supplies [scales] databank and processing functions. *)
module Polychrome : sig

  val scales : (string * string) list
  (** [scales] is a key-value tuple list of musical pitch collections.

    {v let sign = "n0";; v}
    {v let stow = List.assoc sign Polychrome.scales;; v}
  *)

  val acquire : string -> string
  (** Lookup of referent key and retrieval of associate value in [scales].

    {v let wire = Polychrome.acquire sign;; v}
  *)

  val membership : string -> bool
  (** Evaluates whether accidental signature is referent key in [scales].

    {v let bone = Polychrome.membership sign;; v}
  *)

  val ordnance : string list -> string list
  (** Takes a string list and returns new list of items alphanumeric sorted.

    {v let stems = ["two"; "one"];; v}
    {v let lords = Polychrome.ordnance stems;; v}
  *)

  val keynotes : unit -> string list
  (** Returns a string list of referent keys from [scales].

    {v let clefs = Polychrome.keynotes ();; v}
  *)

  val bankroll : unit -> int
  (** Returns the number of key-value tuples in scales.

    {v let niter = Polychrome.bankroll ();; v}
  *)

  val turnkeys : unit -> int * string list
  (** Returns a tuple which contains the number of tuples
      in [scales] and a string list of [scales] referent keys.

    {v let (inky, lids) = Polychrome.turnkeys ();; v}
  *)

  val revealed : string -> unit
  (** Prints thrown exception information to stderr.

    {v let expo = "errs";; v}
    {v let () = Polychrome.revealed expo;; v}
  *)

  val sideshow : string list -> int -> unit
  (** Prints formatted string to stdout or passes exception to [revealed].

    {v let () = Polychrome.sideshow lids inky;; v}
  *)

  val columned : int -> string list -> unit
  (** Takes an integer argument as length of the string list argument
      and prints formatted in columns the string list items to stdout.

    {v let () = Polychrome.columned inky lids;; v}
  *)

  val selections : unit -> unit
  (** Displays menu of sorted referent keys from [scales].

    {v let () = Polychrome.selections ();; v}
  *)

  val frontage : string -> string -> bool
  (** Evaluates string by matched prefixed characters.

    {v let face = "-" and word = "-help";; v}
    {v let bone = Polychrome.frontage face word;; v}
  *)

  val backpack : string -> string -> bool
  (** Evaluates string by matched suffixed characters.

    {v let hind = "k6" and cord = "j2k6";; v}
    {v let bone = Polychrome.backpack hind cord;; v}
  *)

  val discern : string -> string list -> string list
  (** Filters string list items according to prefixed characters.

    {v let flat = "j";; v}
    {v let lows = Polychrome.discern flat lids;; v}
  *)

  val percept : string -> string list -> string list
  (** Filters string list items according to suffixed characters.

    {v let hind = "w6";; v}
    {v let dubs = Polychrome.discern hind lids;; v}
  *)

  val foxhounds : unit -> unit
  (** Displays referent keys from [scales] sorted
      according to prefixed accidental.

    {v let () = Polychrome.foxhounds ();; v}
  *)

  val separate : string -> string list
  (** Trims and splits string associate value from [scales] into string list.

    {v let labs = Polychrome.separate wire;; v}
  *)

  val checkmate : string list -> bool
  (** Filters referent keys according to harmonic function.

    {v let bone = Polychrome.checkmate labs;; v}
  *)

  val byzantine : string -> string
  (** Prepares string associate value from [scales] for evaluation by [checkmate].

    {v let sole = Polychrome.byzantine sign;; v}
  *)

  val dominican : unit -> string list
  (** Sorts list from [byzantine] according to prefixed accidental.

    {v let dons = Polychrome.dominican ();; v}
  *)

  val marshaled : unit -> unit
  (** Displays referent keys from [scales] filtered
      according to harmonic function.

    {v let () = Polychrome.marshaled ();; v}
  *)

  val approval : string -> bool
  (** Evaluate whether string is prefixed with underscore character.

    {v let yarn = "HgAu";; v}
    {v let bone = Polychrome.approval yarn;; v}
  *)

  val uniforms : unit -> string list
  (** Returns list of unique items from all associate values in [scales].

    {v let ores = Polychrome.uniforms ();; v}
  *)

  val elemental : unit -> unit
  (** Display menu of list items from [uniforms] to stdout.

    {v let () = Polychrome.elemental ();; v}
  *)

  val scrubber : string -> string list
  (** Returns a list of unique items by splitting the argument
      string and passing each item to [approval] for evaluation.

    {v let lugs = Polychrome.scrubber wire;; v}
  *)

  val inventory : string -> unit
  (** Search all associate values of [scales] for match with argument string
      and return list of referent keys with matched associate values.

    {v let spat = "HgAu";; v}
    {v let () = Polychrome.inventory spat;; v}
  *)

  val periodic : string -> bool
  (** Evaluate whether argument string is prefixed with flag or accidental.

    {v let sift = "CuPb";; v}
    {v let bone = Polychrome.periodic sift;; v}
  *)

  val nodular : string -> (string -> string list -> string list) -> unit
  (** Takes string and function arguments and returns unit

    {v let mine = Polychrome.percept and sift = "Fe";; v}
    {v let () = Polychrome.nodular sift mine;; v}
  *)

  val ferrous : string -> unit
  (** Takes string argument and returns unit

    {v let slag = "?Fe";; v}
    {v let () = Polychrome.ferrous slag;; v}
  *)

  val refinery : string -> unit
  (** Passes argument string to [periodic] for evaluation, if confirmed then
      argument string is passed to [inventory], else is passed to [membership]
      for confirmation as [scales] referent key, if confirmed returns list of
      unique items from associate value, otherwise returns argument string.

    {v let seal = "PbAu";; v}
    {v let () = Polychrome.refinery seal;; v}

    {v let sign = "j2k56";; v}
    {v let () = Polychrome.refinery sign;; v}
  *)

  val grouper : string list -> unit
  (** Evaluates whether argument list length is less-than two and if so
      calls [elemental] otherwise iterates over [refinery] passing each
      member of argument list to [refinery] for further processing.

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
  (** Lookup of referent key and retrieval of associate values in [zodiac].

    {v let (spot, span) = Scordatura.obtain stem;; v}
  *)

  val machine : string -> int -> int -> string
  (** First argument is a referent key which gets its associate string value
      while the other two are integers for splicing the got string, creating
      two substrings which are concatenated, then a substring is spliced from
      the front and appended before being returned as a reconstructed string.

    {v let yarn = Scordatura.machine sign spot span;; v}
  *)

  val tensile : string -> string -> string
  (** First argument is a referent key in [scales] and the second is a
      referent key in [zodiac] which gets the associate tuple values and
      passes all three to [machine].

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
  (** Prints tuning names from [attunes] formatted to stdout.

    {v let () = Scordatura.lutherie ();; v}
  *)

  val pegboxes : unit -> unit
  (** Displays menu of tuning names from [attunes].

    {v let () = Scordatura.pegboxes ();; v}
  *)

  val stockade : int -> string
  (** Returns tuning string chosen from [attunes] by integer index.

    {v let tuned = Scordatura.stockade 0;; v}
  *)

  val randomize : unit -> int
  (** Returns random positive integer. See [Int.max_int]

    {v let numb = Scordatura.randomize ();; v}
  *)

  val variant : string
  (** Identifier of positive integer from [randomize] cast to string.

    {v let variant = Int.to_string numb;; v}
  *)

  val diadem : string -> string -> string
  (** Concatenates referent key of [scales], tuning of [attunes]
      and the value of [variant] together then returns string.

    {v let yarn = Scordatura.diadem sign pegs;; v}
  *)

  val scribe : string -> unit
  (** Prints formatted string to stdout.

    {v let () = Scordatura.scribe yarn;; v}
  *)

  val engrave : string -> string -> unit
  (** Passes referent key of [scales] and associate value of [zodiac]
      to [tensile] for processing, after transformation the returned
      string is passed to [scribe] for formatting and printing.

    {v let () = Scordatura.engrave sign stem;; v}
  *)

  val lattice : string -> string list -> unit
  (** Takes a [scales] referent key and a list of [zodiac] referent keys,
      iterates over the zodiacal list passing each to [engrave] in tandem.

    {v let () = Scordatura.lattice sign tons;; v}
  *)

  val beadgcf : string -> unit
  (** $ Takes [scales] referent key, passes it with tuning string to [diadem],
      the returned string is then passed to [scribe] for printing banner.
      A zodiacal list is constructed resembling the tuning string in reverse,
      [scales] referent key and zodiacal list are then passed to [lattice].

    {v let () = Scordatura.beadgcf sign;; v}
  *)

  val bfbfb : string -> unit
  (** $ ibidem.

    {v let () = Scordatura.bfbfb sign;; v}
  *)

  val cgdae : string -> unit
  (** $ ibidem.

    {v let () = Scordatura.cgdae sign;; v}
  *)

  val eadgbe : string -> unit
  (** $ ibidem.

    {v let () = Scordatura.eadgbe sign;; v}
  *)

  val fkbjdn : string -> unit
  (** $ ibidem.

    {v let () = Scordatura.fkbjdn sign;; v}
  *)

  val piano : string -> unit
  (** $ ibidem.

    {v let () = Scordatura.piano sign;; v}
  *)

  val layout : string -> string -> unit
  (** Takes an [attunes] tuning string and a [scales] referent key,
      verifies referent key membership in [scales] or prints error,
      attempt match of tuning string to tuning patterns, on success
      passes referent key to proper function, or defaults to piano.

    {v let () = Scordatura.layout tuned sign;; v}
  *)

  val juxtapose : string -> string list -> unit
  (** Takes an [attunes] tuning string and string list from [vestibule],
      iterates over string list passing each to [layout] in tandem.

    {v let () = Scordatura.juxtapose tuned words;; v}
  *)

  val bounced : string -> bool
  (** Takes a string and determines whether prefixed with flag.

    {v let bone = scordatura.bounced stem;; v}
  *)

  val gearbox : int -> string list -> unit
  (** Takes integer as [attunes] index and string list from [vestibule],
      if index within range, gets tuning string from [attunes] members,
      else calls [pegboxes], if tuning success then iterates over list
      passing each to [bounced] sifting out flags while building a new
      list to be passed with tuning string to [juxtapose] in tandem.
      if new list is empty then calls [foxhounds] and returns unit.

    {v let () = Scordatura.gearbox spot words;; v}
  *)

  val caboose : string -> string -> bool
  (** Takes two strings and determines whether 1st is suffix of 2nd.

    {v let bone = scordatura.caboose noted sieve;; v}
  *)

  val assemble : string list -> int -> string
  (** Takes a string list and integer counter for [attunes] indices,
      iterates over list passing each to [caboose] for suffix match.
      when exhausted return matched or return last [attunes] member.

    {v let raked = Scordatura.assemble flags count;; v}
  *)

  val cornucopia : string -> string list -> unit
  (** Takes tuning string of [attunes] members and string list of flags,
      if list has flags then list is passed to [assemble] and the string
      returned is passed to [layout] while iterating over [scales] keys,
      else tuning string is passed to [layout] while iterating over keys.

    {v let () = cornucopia tuned flags;; v}
  *)

  val coworker : string list -> int -> string -> unit
  (** Takes [attunes] string list, and integer counter for [attunes] indices,
      and a referent key for [scales], counter selects [attunes] list member,
      tuning string along with referent key is passed to [layout] in tandem.

    {v let () = Scordatura.coworker harps posit sign;; v}
  *)

  val dumpster : int -> unit
  (** Takes an integer counter for [attunes] indices. The outer iteration
      over [attunes] members increments counter, within every outer cycle
      an inner iteration over [scales] referent keys passes tuning list,
      incremental integer, and referent key to [coworker].

    {v let () = Scordatura.dumpster posit;; v}
  *)

end

(** Module [Technician] supplies display and support functions. *)
module Technician : sig
  val utensils : unit -> string list
  (** Returns a string list of operational features referred to as utilities.

    {v let tools = Technician.utensils ();; v}
  *)

  val woodshed : unit -> unit
  (** Acquires utilities from [utensils] then formats and prints them to stdout.

    {v let () = Technician.woodshed ();; v}
  *)

  val toolbars : unit -> unit
  (** Formats and displays menu of utilities by calling [woodshed].

    {v let () = Technician.toolbars ();; v}
  *)

  val sentinel : string -> string list -> string option
  (** Takes string prefix and string list to sift for matching prefix,
      returns the first member matched in string list or returns [None].

    {v let opted = Technician.sentinel front words;; v}
  *)

  val switches : string -> string list -> string list
  (** Takes string prefix and string list to sift for matching prefix,
      returns new list populated with all matched string list members.

    {v let flags = Technician.switches front words;; v}
  *)

  val governor : int -> string array -> string list
  (** Takes an integer limit and string array to sift out members with
      lengths greater than integer limit, returns new string list with
      with all members length less-than or equal to integer limit.

    {v let words = Technician.governor 9 argots;; v}
  *)

  val exampled : string -> unit
  (** Displays tutorial examples of usage fomatted to stdout.

    {v let () = Technician.exampled post;; v}
  *)

  val tutorial : unit -> unit
  (** Sets identifiers for executable and file names then interpolates
      them into a formatted string which is passed to [exampled].

    {v let () = Technician.tutorial ();;  v}
  *)

  val keystone : unit -> unit
  (** Displays menu of referent keys from [scales] sorted
      according to prefixed accidental.

    {v let () = Technician.keystone ();; v}
  *)

  val solarium : unit -> unit
  (** Displays menu of referent keys from [scales] filtered
      according to harmonic function.

    {v let () = Technician.solarium ();;  v}
  *)

  val preamble : unit -> unit
  (** Displays menu of utilities form [utensils],
      tunings from [attunes], and referent keys from [scales].

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



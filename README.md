# Kolmogorov
Semigraphics

---

### Download

    git clone https://github.com/reidiiius/kolmogorov.git

---

### Usage
Command-line

    cd kolmogorov

Run test for Thorngate in single page application directory

    ocaml spa/whodunit.ml

Display menu of utilities, tunings, and accidental signatures

    ocaml spa/thorngate.ml

Show tutorial examples of usage similar to this information

    ocaml spa/thorngate.ml -help

Menu of signatures sorted according to prefixed accidental

    ocaml spa/thorngate.ml -keys

Menu of signatures filtered according to harmonic function

    ocaml spa/thorngate.ml -mars

Display matrices of selected accidental signatures to screen

    ocaml spa/thorngate.ml n0 j3

Display matrices of selected signatures with different tuning

    ocaml spa/thorngate.ml n0 j3 -cgdae

Display menu of all periodic combinations or alloys

    ocaml spa/thorngate.ml -alloys

Correlate alloys with containing accidental signatures

    ocaml spa/thorngate.ml -find FeNp FePu

Correlate accidental signatures with contained alloys

    ocaml spa/thorngate.ml -find j6 k2

Query metals for ascending and descending nodes of alloys

    ocaml spa/thorngate.ml -find ?Fe

Display matrices of all accidental signatures with default tuning

    ocaml spa/thorngate.ml -all | sensible-pager

Display matrices of all accidental signatures in different tuning

    ocaml spa/thorngate.ml -all -cgdae | sensible-pager

Compile module interface file

    ocamlc spa/thorngate.mli

Make directory for executable

    mkdir spa/exe

Produce standalone executable

    ocamlopt -I spa -o spa/exe/thorngate_v$(date +'%s') spa/thorngate.ml

Make directory for documentation

    mkdir spa/doc

Build documentation files in HTML format

    ocamldoc -keep-code -all-params -html -I spa -d spa/doc spa/thorngate.m*

Browse documentation files

    sensible-browser spa/doc/index.html

Dune compilation and testing of Kolmogorov library

    dune build

:

    dune runtest

:

    dune exec stoa

:

    dune exec stoa :help

:

    dune exec stoa :keys

:

    dune exec stoa :mars

:

    dune exec stoa n0 j3

:

    dune exec stoa n0 j3 :cgdae

:

    dune exec stoa :alloys

:

    dune exec stoa :find FeNp FePu

:

    dune exec stoa :find j6 k2

:

    dune exec stoa :find ?Fe

:

    dune exec stoa :all | sensible-pager

:

    dune exec stoa :all :cgdae | sensible-pager

:

    dune clean

---

### Distribution
MIT License


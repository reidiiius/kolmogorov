(* geoffroy.ml *)

  let berzelian = [
      ("i0", "____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ");
      ("j2", "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ____ AgUr ____ FePu ");
      ("j3", "HgSn ____ SnHg UrFe ____ PbAg ____ AuAu ____ AgPb ____ FeUr ");
      ("j5", "PbCu ____ AuSn ____ AgHg TiFe FeTi ____ ____ SnAu ____ CuPb ");
      ("j6", "HgAu ____ SnPb ____ CuUr PbSn ____ AuHg NpFe ____ ____ FeNp ");
      ("k1", "____ FeUr HgSn ____ SnHg UrFe ____ PbAg ____ AuAu ____ AgPb ");
      ("k2", "NpCu ____ ____ FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ");
      ("k5", "UrCu ____ PbSn ____ AuHg NpFe ____ ____ FeNp HgAu ____ SnPb ");
      ("k6", "HgAg ____ SnAu ____ CuPb PbCu ____ AuSn ____ ____ TiFe FeTi ");
      ("n0", "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb ");
     ("j17", "____ ____ SnAu ____ CuPb PbCu ____ AuSn ____ AgHg TiFe FeTi ");
     ("j23", "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ____ AgUr ____ FePu ");
     ("j25", "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ ____ NpAu ____ TiPb ");
     ("j26", "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb NpCu ____ ____ FePu ");
     ("j36", "HgAu ____ SnPb UrCu ____ PbSn ____ AuHg NpFe ____ ____ FeNp ");
     ("j56", "UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ____ ____ SnPb ");
     ("k12", "____ AgUr ____ FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ");
     ("k15", "____ CuUr PbSn ____ AuHg NpFe ____ ____ FeNp HgAu ____ SnPb ");
     ("k25", "NpCu ____ ____ FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ");
     ("k26", "HgMn ____ ____ MnHg CuFe PbTi ____ AuNp ____ ____ TiPb FeCu ");
     ("k34", "PbCu ____ AuSn ____ ____ TiFe FeTi HgAg ____ SnAu ____ CuPb ");
     ("k56", "HgAu ____ SnPb ____ CuUr PbSn ____ ____ NpFe ____ TiAg FeNp ");
    ("j236", "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb NpCu ____ ____ FePu ");
    ("j256", "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ AuNp ____ ____ TiPb ");
    ("j2k5", "FeCu HgMn ____ ____ MnHg CuFe ____ ____ AuNp NpAu ____ TiPb ");
    ("j2k6", "HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ____ ____ TiSn FePu ");
    ("j2w3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ____ AgUr ____ FePu ");
    ("j3k5", "NpCu ____ TiSn FePu ____ PuFe ____ ____ CuNp PbAu ____ AuPb ");
    ("j3k6", "HgTi ____ SnNp UrAu ____ PbPb ____ AuUr ____ ____ TiHg FeFe ");
    ("j5w6", "PbCu ____ AuSn ____ AgHg TiFe FeTi HgAg ____ ____ ____ CuPb ");
    ("k125", "____ AgUr ____ FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ");
    ("k1j5", "____ AuUr NpSn ____ TiHg FeFe HgTi ____ ____ UrAu ____ PbPb ");
    ("k1j6", "____ PuFe SnTi ____ CuNp PbAu ____ AuPb NpCu ____ ____ FePu ");
    ("k256", "HgMn ____ ____ MnHg CuFe PbTi ____ ____ NpAu ____ TiPb FeCu ");
    ("k2j5", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ");
    ("k2j6", "HgMn ____ ____ MnHg CuFe PbTi ____ AuNp NpAu ____ ____ FeCu ");
    ("k2m1", "____ ____ TiSn FePu HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ");
    ("k6m5", "HgAg ____ SnAu ____ CuPb PbCu ____ ____ ____ AgHg TiFe FeTi ");
    ("n167", "NpCu ____ ____ FePu ____ PuFe SnTi ____ CuNp PbAu ____ AuPb ");
    ("n345", "____ PuFe ____ ____ CuNp PbAu ____ AuPb NpCu ____ TiSn FePu ");
    ("n5w2", "HgMn ____ ____ MnHg CuFe ____ ____ AuNp NpAu ____ TiPb FeCu ");
    ("n6m2", "FeCu HgMn ____ ____ MnHg CuFe PbTi ____ AuNp NpAu ____ ____ ");
   ("j17w2", "HgAg ____ ____ ____ CuPb PbCu ____ AuSn ____ AgHg TiFe FeTi ");
   ("j23k6", "HgHg PuFe ____ UrAg ____ PbAu ____ AuPb ____ ____ TiSn FePu ");
   ("j25w6", "TiCu FeMn ____ ____ SnHg MnFe CuTi PbAg ____ ____ ____ AgPb ");
   ("j26w3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb NpCu ____ ____ FePu ");
   ("j2k34", "TiCu FeMn ____ ____ ____ MnFe CuTi PbAg ____ AuAu ____ AgPb ");
   ("j2k56", "HgHg PuFe ____ ____ CuNp PbAu ____ ____ NpCu ____ TiSn FePu ");
   ("j34k6", "HgSn ____ SnHg MnFe CuTi ____ ____ AuAu ____ ____ TiCu FeMn ");
   ("j56w7", "UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp HgAu ____ ____ ");
   ("k12j5", "____ AgUr ____ FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ");
   ("k17j5", "TiCu FeMn HgSn ____ SnHg MnFe CuTi ____ ____ AuAu ____ ____ ");
   ("k25m1", "____ ____ TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ AuPb ");
   ("k26m5", "HgSn ____ ____ MnFe CuTi PbAg ____ ____ ____ AgPb TiCu FeMn ");
   ("k2j17", "____ ____ ____ MnFe CuTi PbAg ____ AuAu ____ AgPb TiCu FeMn ");
   ("k2j56", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ CuNp ____ ____ AuPb ");
   ("k34m2", "PbCu ____ ____ ____ AgHg TiFe FeTi HgAg ____ SnAu ____ CuPb ");
   ("k56m4", "HgAu ____ SnPb ____ CuUr ____ ____ AuHg NpFe ____ TiAg FeNp ");
   ("n25m6", "TiCu FeMn HgSn ____ ____ MnFe CuTi PbAg ____ ____ ____ AgPb ");
   ("n26w5", "____ ____ SnHg MnFe CuTi PbAg ____ ____ ____ AgPb TiCu FeMn ");
   ("n45w2", "HgTi ____ ____ UrAu ____ PbPb ____ AuUr NpSn ____ TiHg FeFe ");
   ("n67m2", "____ AuUr ____ ____ TiHg FeFe HgTi ____ SnNp UrAu ____ PbPb ");
  ("j136w7", "____ ____ SnPb UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ");
  ("j167w2", "HgAu ____ ____ ____ CuUr PbSn ____ AuHg NpFe ____ TiAg FeNp ");
  ("j246w3", "HgHg PuFe SnTi ____ CuNp ____ ____ AuPb NpCu ____ ____ FePu ");
  ("j26w34", "HgHg PuFe SnTi UrAg ____ ____ ____ AuPb NpCu ____ ____ FePu ");
  ("j2k6m5", "HgHg PuFe ____ ____ CuNp PbAu ____ ____ ____ AgUr TiSn FePu ");
  ("j2k6w3", "HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ____ ____ TiSn FePu ");
  ("j346w5", "NpCu ____ TiSn FePu HgHg PuFe ____ ____ CuNp ____ ____ AuPb ");
  ("j3k5m4", "HgAu ____ SnPb UrCu ____ ____ ____ AuHg NpFe AgTi ____ FeNp ");
  ("k135m4", "____ CuUr PbSn ____ ____ NpFe ____ TiAg FeNp HgAu ____ SnPb ");
  ("k157m6", "HgHg PuFe SnTi ____ CuNp PbAu ____ ____ NpCu ____ ____ FePu ");
  ("k1j6w7", "____ CuUr PbSn ____ AuHg NpFe ____ TiAg FeNp HgAu ____ ____ ");
  ("k257m1", "NpCu ____ TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ ____ ");
  ("k25m17", "____ AgUr TiSn FePu HgHg PuFe ____ ____ CuNp PbAu ____ ____ ");
  ("k2j5m1", "____ ____ TiSn FePu HgHg PuFe SnTi ____ ____ PbAu ____ AuPb ");
  ("k2j5w6", "NpCu ____ ____ FePu HgHg PuFe SnTi UrAg ____ ____ ____ AuPb ");
  ("k345m2", "UrCu ____ ____ ____ AuHg NpFe AgTi ____ FeNp HgAu ____ SnPb ");
  ("n167m4", "HgAu ____ ____ UrCu ____ PbSn ____ AuHg NpFe AgTi ____ FeNp ");
  ("n345w7", "____ CuUr ____ ____ AuHg NpFe ____ TiAg FeNp HgAu ____ SnPb ");
 ("j2k56m4", "HgHg PuFe ____ ____ CuNp ____ ____ AuPb NpCu ____ TiSn FePu ");
 ("j3k56m4", "HgTi ____ SnNp UrAu ____ ____ ____ AuUr NpSn ____ TiHg FeFe ");
 ("k1j56w7", "____ AuUr NpSn ____ TiHg FeFe HgTi ____ SnNp UrAu ____ ____ ");
 ("k2j56w7", "NpCu ____ ____ FePu HgHg PuFe SnTi ____ CuNp PbAu ____ ____ ")
  ];;

  let acquire sign =
    try List.assoc sign berzelian;
    with Not_found -> List.assoc "i0" berzelian;;

  let membership sign =
    List.mem_assoc sign berzelian;;

  let ordnance stems =
    List.sort String.compare stems;;

  let keynotes () =
    ordnance (fst (List.split berzelian));;

  let bankroll () =
    let clefs = keynotes () in
      List.length clefs;;

  let rec columned size ways =
    let yaws = List.rev ways in
    if size <= 1 then
      begin
        Printf.printf "\t%s" (List.nth yaws (size - 1));
        print_newline ()
      end
    else
      begin
        let cols = 8 in
        if (size mod cols) = 0 then print_newline();
        Printf.printf "\t%s" (List.nth yaws (size - 1));
        columned (size - 1) ways
      end;;

  let selections () =
    let clefs = keynotes () in
    let niter = bankroll () in
      print_newline ();
      columned niter clefs;
      print_newline ();;

  let frontage ~prefix:wire item =
    String.starts_with ~prefix:wire item;;

  let discern wire lugs =
      List.filter (frontage ~prefix:wire) lugs;;

  let foxhounds () =
    let clefs = keynotes () in
    let raised = discern "k" clefs in
    let native = discern "n" clefs in
    let lowish = discern "j" clefs in
      print_newline ();
      columned (List.length raised) raised;
      print_newline ();
      columned (List.length native) native;
      print_newline ();
      columned (List.length lowish) lowish;
      print_newline ();;

  let byzantine sign =
    let spat = Char.chr 32 in
    let yarn = acquire sign in
    let labs = String.split_on_char spat yarn in
      if (frontage ~prefix:"Pb" (List.nth labs 5) ||
          frontage ~prefix:"Fe" (List.nth labs 11))
      then sign
      else String.empty;;

  let dominican () =
    let clefs = keynotes () in
    let lots = List.map byzantine clefs in
      discern "k" lots @ ["\n"] @
      discern "n" lots @ ["\n"] @
      discern "j" lots;;

  let marshaled () =
    let dons = dominican () in
    let numb = List.length dons in
      print_newline ();
      columned numb dons;
      print_newline ();;

  let uniforms () =
    let dice = fun wire -> String.split_on_char '\x20' wire in
    let pans = snd (List.split berzelian) in
    let urns = List.map dice pans in
    let lots = List.flatten urns in
    let lint = fun yarn -> not (frontage ~prefix:"\x5F" yarn) in
    let rock = List.filter lint lots in
      List.sort_uniq String.compare rock;;

  let elemental () =
    let ores = uniforms () in
    let size = List.length ores in
      columned size ores;
      print_newline ();;



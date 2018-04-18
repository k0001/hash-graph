{ mkDerivation, base, criterion, deepseq, fgl, hashable, heaps
, hspec, QuickCheck, stdenv, unordered-containers
}:
mkDerivation {
  pname = "hash-graph";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base deepseq hashable heaps unordered-containers
  ];
  testHaskellDepends = [
    base hspec QuickCheck unordered-containers
  ];
  benchmarkHaskellDepends = [
    base criterion deepseq fgl unordered-containers
  ];
  description = "A hashmap-based graph implementation";
  license = stdenv.lib.licenses.bsd2;
}

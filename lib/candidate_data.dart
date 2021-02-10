import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:flutter/painting.dart';

class CandidateData {
  List<Candidate> candidates = [];

  Candidate donaldT =
     Candidate(
        face: AssetImage("lib/assets/trump.jpg"),
        candidateName: "Donald Trump Sr",
        age: 75,
        party: "Rep.");

  Candidate hilaryC =
      Candidate(
        age: 24,
        candidateName: "Hilary Clinton",
        face: AssetImage("lib/assets/clinton.jpg"),
        party: "Dem.");
  Candidate joeB =
      Candidate(
        age: 98,
        candidateName: "Joe Biden",
        face: AssetImage("lib/assets/biden.jpg"),
        party: "Dem.");

   List<Candidate> addCandidates() {
    candidates.add(joeB);
    candidates.add(donaldT);
    candidates.add(hilaryC);

    return candidates;
  }
}

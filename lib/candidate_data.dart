import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:flutter/painting.dart';

class CandidateData {

  Candidate donaldT = const Candidate(
      face: AssetImage("lib/assets/trump.jpg"),
      candidateName: "Donald Trump Sr",
      age: 75,
      party: "Rep.");

  Candidate hilaryC = const Candidate(
      age: 24,
      candidateName: "Hilary Clinton",
      face: AssetImage("lib/assets/clinton.jpg"),
      party: "Dem.");
  Candidate joeB = const Candidate(
      age: 98,
      candidateName: "Joe Biden",
      face: AssetImage("lib/assets/biden.jpg"),
      party: "Dem.");

  //  List<Candidate> addCandidates() {
  //   candidates.add(joeB);
  //   candidates.add(donaldT);
  //   candidates.add(hilaryC);

  //   return candidates;
  // }

  
}


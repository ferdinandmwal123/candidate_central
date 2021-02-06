import 'package:candidate_central/domain/core/candidate/candidate.dart';

class CandidateData {
  List<Candidate> candidates = new List(2);

  Candidate joeBiden =
      Candidate(face: null, candidateName: null, age: null, party: null);
  Candidate donaldTrump =
      Candidate(face: null, candidateName: null, age: null, party: null);
  Candidate hilaryClinton =
      Candidate(face: null, candidateName: null, age: null, party: null);

  List<Candidate> addCandidates() {
    candidates.add(joeBiden);
    candidates.add(donaldTrump);
    candidates.add(hilaryClinton);

    return candidates;
  }
}

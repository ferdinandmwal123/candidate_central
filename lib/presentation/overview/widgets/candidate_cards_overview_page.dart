import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:candidate_central/presentation/overview/widgets/candidate_card.dart';
import 'package:flutter/material.dart';

class CandidateCardsOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 120),
      constraints: const BoxConstraints.expand(height: 200),
    
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 40),
          itemCount: getRecentcandidates().length,
          itemBuilder: (context, index) {
            return getRecentcandidates().elementAt(index);
          }),
    );
  }

  List<Candidate> findcandidates() {
    final List<Candidate> candidates = [];

    // candidates.add(CandidateData().joeB);
    // candidates.add(CandidateData().donaldT);
    // candidates.add(CandidateData().hilaryC);

    candidates.add(const Candidate(
        face: AssetImage("lib/assets/trump.jpg"),
        candidateName: "Donald Trump Sr",
        age: 75,
        party: "Rep."));
    candidates.add(const Candidate(
        age: 24,
        candidateName: "Hilary Clinton",
        face: AssetImage("lib/assets/clinton.jpg"),
        party: "Dem."));

    candidates.add(const Candidate(
        age: 98,
        candidateName: "Joe Biden",
        face: AssetImage("lib/assets/biden.jpg"),
        party: "Dem."));

    return candidates;
  }

  List<Widget> getRecentcandidates() {
    final List<Widget> recentcandidateCards = [];
    final List<Candidate> candidates = findcandidates();
    for (final Candidate candidate in candidates) {
      recentcandidateCards.add(getcandidateCard(candidate));
    }
    return recentcandidateCards;
  }

  Widget getcandidateCard(Candidate candidate) {
    return CandidateCard(candidate: candidate);
  }
}

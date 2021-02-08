import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:candidate_central/presentation/overview/widgets/candidate_card.dart';
import 'package:flutter/material.dart';

class CandidateCardsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 120),
        constraints: const BoxConstraints.expand(height: 200),
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 40),
          children: getRecentcandidates(),
        ));
  }

  List<Candidate> findcandidates() {
    List<Candidate> candidates = [];

    candidates.add(new Candidate(
        face: AssetImage("lib/assets/trump.jpg"),
        candidateName: "Donald Trump Sr",
        age: 75,
        party: "Rep."));
    candidates.add(new Candidate(
        age: 24,
        candidateName: "Hilary Clinton",
        face: AssetImage("lib/assets/clinton.jpg"),
        party: "Dem."));

    candidates.add(new Candidate(
        age: 98,
        candidateName: "Joe Biden",
        face: AssetImage("lib/assets/biden.jpg"),
        party: "Dem."));

    return candidates;
  }

  List<Widget> getRecentcandidates() {
    List<Widget> recentcandidateCards = [];
    List<Candidate> candidates = findcandidates();
    for (Candidate candidate in candidates) {
      recentcandidateCards.add(getcandidateCard(candidate));
    }
    return recentcandidateCards;
  }

  Widget getcandidateCard(Candidate candidate) {
    return  CandidateCard(candidate: candidate);
  }
}

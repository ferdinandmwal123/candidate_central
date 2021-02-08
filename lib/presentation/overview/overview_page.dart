import 'package:candidate_central/candidate_data.dart';
import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:candidate_central/presentation/overview/widgets/candidate_card.dart';
import 'package:candidate_central/styles.dart';
import 'package:flutter/material.dart';

class CandidateOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Candidates'),
        leading: IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: () {
            //TODO:(O1) When exit app is pressed
          },
        ),
        //TODO:(02)Uncompleted switch for candidates who are still in
        //*actions: [],
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(40),
            constraints: BoxConstraints.expand(height: 225),
            decoration: BoxDecoration(
                gradient: new LinearGradient(
                    colors: [lightBlueIsh, lightGreen],
                    begin: const FractionalOffset(1.0, 1.0),
                    end: const FractionalOffset(0.2, 0.2),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Container(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find Your Candidate',
                    style: titleStyleWhite,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 120),
            constraints: BoxConstraints.expand(height: 200),
            child: ListView(
                padding: EdgeInsets.only(left: 40),
                scrollDirection: Axis.horizontal,
                children: getRecentcandidates()),
          ),
          Container(
            height: 500,
            margin: EdgeInsets.only(top: 300),
            padding: EdgeInsets.all(20),
            child: Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Explore New Opportunities",
                style: titileStyleBlack,
              ),
            ),
          )
        ],
      )),
    );
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

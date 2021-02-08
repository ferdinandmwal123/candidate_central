import 'package:candidate_central/domain/core/candidate/candidate.dart';
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
      body: Container(
        child: SingleChildScrollView(
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
      ),
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
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 20, bottom: 30, top: 30),
      height: 150,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            new BoxShadow(
              color: Colors.grey,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: candidate.face,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      candidate.candidateName,
                      style: jobCardTitileStyleBlue,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Age :" + candidate.age.toString(),
                    style: salaryStyle,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [Text("Hi awdawd"), Text("43"), Text("Naiu")],
              ),
              Column(
                children: [
                  Text("123 dawda"),
                  Text("Hi"),
                  Text("43"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

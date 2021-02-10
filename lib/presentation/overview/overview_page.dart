import 'package:candidate_central/candidate_data.dart';
import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:candidate_central/presentation/overview/widgets/candidate_card.dart';
import 'package:candidate_central/presentation/overview/widgets/candidate_cards_overview_page.dart';
import 'package:candidate_central/presentation/overview/widgets/overview_top_design.dart';
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
          OverviewDesign(),
          CandidateCardsOverview(),
          Container(
            height: 500,
            margin: const EdgeInsets.only(top: 300),
            padding: const EdgeInsets.all(20),
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                "Election zones near you",
                style: titileStyleBlack,
              ),
            ),
          )
        ],
      )),
    );
  }
}

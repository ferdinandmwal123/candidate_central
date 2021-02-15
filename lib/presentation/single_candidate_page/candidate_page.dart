import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:candidate_central/presentation/overview/widgets/overview_top_design.dart';
import 'package:flutter/material.dart';

import 'widgets/single_candidate_card.dart';

class CandidatePage extends StatelessWidget {
  final Candidate candidate;
  const CandidatePage({Key key, this.candidate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${candidate.candidateName}'s page"),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios), onPressed: () {

            }),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const OverviewDesign(
              text: "welcome dawg",
            ),
            SingleCandidateCard(),
          ],
        ),
      ),
    );
  }
}

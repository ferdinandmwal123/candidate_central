import 'package:auto_route/auto_route.dart';
import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:candidate_central/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class CandidatePage extends StatelessWidget {
  final Candidate candidate;
  const CandidatePage({Key key, this.candidate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("${candidate.candidateName}'s page"),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              ExtendedNavigator.of(context).popUntil((route) =>
                  route.settings.name == Routes.candidateOverviewPage);
            }),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: candidate.face,
              semanticLabel: "${candidate.candidateName} 's face",
            ),
            Text(candidate.candidateName),
          ],
        ),
      ),
    );
  }
}

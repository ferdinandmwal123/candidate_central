import 'package:auto_route/auto_route.dart';
import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:candidate_central/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class CandidatePage extends StatelessWidget {
  final Candidate candidate;
  const CandidatePage({Key key, this.candidate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

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
      body: SafeArea(
        child: Center(
          child: Container(
            height: height,
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Image(
                  image: candidate.face,
                  semanticLabel: "${candidate.candidateName} 's face",
                  width: width - 200,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 2.0),
                      width: width,
                      child: Text(
                          " -Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

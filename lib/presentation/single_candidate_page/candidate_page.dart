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
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 2.0),
                    width: width,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.money),
                            Icon(Icons.access_alarm_sharp),
                            Icon(Icons.hail),
                          ],
                        ),
                        Flexible(
                          child: Column(
                            children: const [
                              Text(
                                "Trump has promised to reduce taxes from x to y",
                                style: TextStyle(fontSize: 20),
                              ),
                            ]  
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:candidate_central/presentation/overview/widgets/candidate_cards_overview_page.dart';
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
      body: CandidateCardsOverviewPage(),
    );
  }
}

import 'package:candidate_central/presentation/overview/widgets/candidate_cards_overview_page.dart';
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
        child: Column(
          children: [
            Stack(
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
                        Text('Find Your New Job', style: titleStyleWhite,)
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120, left: 3),
                  constraints: BoxConstraints.expand(height:200),
                  child: CandidateCardsOverviewPage(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

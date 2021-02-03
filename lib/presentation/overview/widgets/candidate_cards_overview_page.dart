import 'package:candidate_central/presentation/overview/widgets/candidate_card.dart';
import 'package:flutter/material.dart';

class CandidateCardsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CandidateCard(),
            CandidateCard()
          ],
        ),
    )
    );
  }
}
import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:flutter/material.dart';

class CandidateCard extends StatelessWidget {
  final Candidate candidate;

  const CandidateCard({Key key, this.candidate}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: candidate.face,
              ),
              Text(candidate.candidateName),
              
            ],
          )
        ],
      ),
    );
  }
}

import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:flutter/material.dart';

import '../../../styles.dart';

class CandidateFaceNameAge extends StatelessWidget {
  final Candidate candidate;
  const CandidateFaceNameAge({Key key, this.candidate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: candidate.face,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      candidate.candidateName,
                      style: jobCardTitileStyleBlue,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Age :${candidate.age}",
                    style: salaryStyle,
                  ),
                ],
              ),
            ],
          );
  }
}

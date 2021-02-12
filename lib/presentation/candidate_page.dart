import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:flutter/material.dart';

class CandidatePage extends StatelessWidget {
  final Candidate candidate;
  const CandidatePage({Key key, this.candidate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Text(candidate.candidateName),
      ),
    );
  }
}

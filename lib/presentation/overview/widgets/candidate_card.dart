import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:candidate_central/presentation/overview/widgets/candidate_face_name_date.dart';
import 'package:flutter/material.dart';

class CandidateCard extends StatelessWidget {
  final Candidate candidate;

  const CandidateCard({Key key, this.candidate}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 20, bottom: 30, top: 30),
      height: 150,
      width: 200,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CandidateFaceNameAge(candidate: candidate),
          CandidateDetails(),
        ],
      ),
    );
  }
}

class CandidateDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const Text("Hi awdawd"),
            const Text("43"),
            const Text("Naiu")
          ],
        ),
        Column(
          children: [
            const Text("123 dawda"),
            const Text("Hi"),
            const Text("43"),
          ],
        ),
      ],
    );
  }
}

import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:candidate_central/presentation/overview/widgets/candidate_face_name_date.dart';
import 'package:flutter/material.dart';
import 'package:candidate_central/presentation/routes/router.gr.dart'
    as app_router;

class CandidateCard extends StatelessWidget {
  final Candidate candidate;

  const CandidateCard({Key key, this.candidate}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ExtendedNavigator.of(context).push(app_router.Routes.candidatePage,
            arguments: app_router.CandidatePageArguments(candidate: candidate));
      },
      child: Container(
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
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, //!Change to space card
          children: <Widget>[
            CandidateFaceNameAge(candidate: candidate),
            CandidateDetails(),
          ],
        ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.baby_changing_station,
              size: 20,
            ),
            Icon(
              Icons.people,
              size: 20,
            ),
            Icon(
              Icons.block,
              size: 20,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Pro-choice"),
            Text("Pro-life"),
            Text("Low tax")
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.baby_changing_station,
              size: 20,
            ),
            Icon(
              Icons.people,
              size: 20,
            ),
            Icon(
              Icons.block,
              size: 20,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Less this"),
            Text("More x"),
            Text("Less x"),
          ],
        ),
      ],
    );
  }
}

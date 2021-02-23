// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/core/candidate/candidate.dart';
import '../overview/overview_page.dart';
import '../single_candidate_page/candidate_page.dart';
import '../test.dart';

class Routes {
  static const String candidateOverviewPage = '/candidate-overview-page';
  static const String candidatePage = '/candidate-page';
  static const String myHomePage = '/';
  static const all = <String>{
    candidateOverviewPage,
    candidatePage,
    myHomePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.candidateOverviewPage, page: CandidateOverviewPage),
    RouteDef(Routes.candidatePage, page: CandidatePage),
    RouteDef(Routes.myHomePage, page: MyHomePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    CandidateOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CandidateOverviewPage(),
        settings: data,
      );
    },
    CandidatePage: (data) {
      final args = data.getArgs<CandidatePageArguments>(
        orElse: () => CandidatePageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CandidatePage(
          key: args.key,
          candidate: args.candidate,
        ),
        settings: data,
      );
    },
    MyHomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyHomePage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// CandidatePage arguments holder class
class CandidatePageArguments {
  final Key key;
  final Candidate candidate;
  CandidatePageArguments({this.key, this.candidate});
}

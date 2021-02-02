// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../overview/overview_page.dart';

class Routes {
  static const String candidateOverviewPage = '/';
  static const all = <String>{
    candidateOverviewPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.candidateOverviewPage, page: CandidateOverviewPage),
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
  };
}

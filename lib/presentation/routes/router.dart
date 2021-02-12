import 'package:auto_route/auto_route_annotations.dart';
import 'package:candidate_central/presentation/candidate_page.dart';
import 'package:candidate_central/presentation/overview/overview_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page:CandidateOverviewPage, initial: true),
    MaterialRoute(page: CandidatePage(),),
  ],
)
class $Router {}

import 'package:auto_route/auto_route_annotations.dart';
import 'package:candidate_central/presentation/single_candidate_page/candidate_page.dart';
import 'package:candidate_central/presentation/overview/overview_page.dart';
import 'package:candidate_central/presentation/test.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page:CandidateOverviewPage),
    MaterialRoute(page: CandidatePage),
    MaterialRoute(page: MyHomePage, initial: true)
  ],
)
class $Router {}

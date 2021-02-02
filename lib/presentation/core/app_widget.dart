import 'package:auto_route/auto_route.dart';
import 'package:candidate_central/presentation/routes/router.gr.dart' as app_router;
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Candidates',
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator.builder(router:app_router.Router(),),
    );
  }
}
import 'package:candidate_central/presentation/core/app_widget.dart';
import 'package:candidate_central/presentation/injection.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(AppWidget());
}


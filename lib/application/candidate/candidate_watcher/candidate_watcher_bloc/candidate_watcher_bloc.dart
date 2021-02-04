import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:candidate_central/domain/core/candidate/candidate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidate_watcher_event.dart';
part 'candidate_watcher_state.dart';
part 'candidate_watcher_bloc.freezed.dart';

class CandidateWatcherBloc extends Bloc<CandidateWatcherEvent, CandidateWatcherState> {
  CandidateWatcherBloc() : super(_Initial());

  @override
  Stream<CandidateWatcherState> mapEventToState(
    CandidateWatcherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

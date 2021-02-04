part of 'candidate_watcher_bloc.dart';

@freezed
abstract class CandidateWatcherEvent with _$CandidateWatcherEvent {
  const factory CandidateWatcherEvent.started() = _Started;
}
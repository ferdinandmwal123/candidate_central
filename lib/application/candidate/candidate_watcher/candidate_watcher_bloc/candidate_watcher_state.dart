part of 'candidate_watcher_bloc.dart';

@freezed
abstract class CandidateWatcherState with _$CandidateWatcherState {
  const factory CandidateWatcherState.initial() = _Initial;
  const factory CandidateWatcherState.loadInProgress() = _LoadInProgress;
  const factory CandidateWatcherState.loadSuccess(List<Candidate> candidate) =
      _LoadSuccess;
}

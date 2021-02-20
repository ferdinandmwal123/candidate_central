import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidate_failure.freezed.dart';

@freezed
abstract class CandidateFailure with _$CandidateFailure {
  const factory CandidateFailure.unexpected() = _Unexpected;
  const factory CandidateFailure.missingAttribute() = _MissingAttribute;
}

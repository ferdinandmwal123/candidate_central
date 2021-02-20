import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidate.freezed.dart';

@freezed
abstract class Candidate with _$Candidate {
  const factory Candidate({
    @required AssetImage face,
    @required String candidateName,
    @required int age,
    @required String party,
  }) = _Candidate;
  
}


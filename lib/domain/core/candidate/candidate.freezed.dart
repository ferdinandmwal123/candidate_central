// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'candidate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CandidateTearOff {
  const _$CandidateTearOff();

// ignore: unused_element
  _Candidate call(
      {@required AssetImage face,
      @required String candidateName,
      @required int age}) {
    return _Candidate(
      face: face,
      candidateName: candidateName,
      age: age,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Candidate = _$CandidateTearOff();

/// @nodoc
mixin _$Candidate {
  AssetImage get face;
  String get candidateName;
  int get age;

  @JsonKey(ignore: true)
  $CandidateCopyWith<Candidate> get copyWith;
}

/// @nodoc
abstract class $CandidateCopyWith<$Res> {
  factory $CandidateCopyWith(Candidate value, $Res Function(Candidate) then) =
      _$CandidateCopyWithImpl<$Res>;
  $Res call({AssetImage face, String candidateName, int age});
}

/// @nodoc
class _$CandidateCopyWithImpl<$Res> implements $CandidateCopyWith<$Res> {
  _$CandidateCopyWithImpl(this._value, this._then);

  final Candidate _value;
  // ignore: unused_field
  final $Res Function(Candidate) _then;

  @override
  $Res call({
    Object face = freezed,
    Object candidateName = freezed,
    Object age = freezed,
  }) {
    return _then(_value.copyWith(
      face: face == freezed ? _value.face : face as AssetImage,
      candidateName: candidateName == freezed
          ? _value.candidateName
          : candidateName as String,
      age: age == freezed ? _value.age : age as int,
    ));
  }
}

/// @nodoc
abstract class _$CandidateCopyWith<$Res> implements $CandidateCopyWith<$Res> {
  factory _$CandidateCopyWith(
          _Candidate value, $Res Function(_Candidate) then) =
      __$CandidateCopyWithImpl<$Res>;
  @override
  $Res call({AssetImage face, String candidateName, int age});
}

/// @nodoc
class __$CandidateCopyWithImpl<$Res> extends _$CandidateCopyWithImpl<$Res>
    implements _$CandidateCopyWith<$Res> {
  __$CandidateCopyWithImpl(_Candidate _value, $Res Function(_Candidate) _then)
      : super(_value, (v) => _then(v as _Candidate));

  @override
  _Candidate get _value => super._value as _Candidate;

  @override
  $Res call({
    Object face = freezed,
    Object candidateName = freezed,
    Object age = freezed,
  }) {
    return _then(_Candidate(
      face: face == freezed ? _value.face : face as AssetImage,
      candidateName: candidateName == freezed
          ? _value.candidateName
          : candidateName as String,
      age: age == freezed ? _value.age : age as int,
    ));
  }
}

/// @nodoc
class _$_Candidate implements _Candidate {
  const _$_Candidate(
      {@required this.face, @required this.candidateName, @required this.age})
      : assert(face != null),
        assert(candidateName != null),
        assert(age != null);

  @override
  final AssetImage face;
  @override
  final String candidateName;
  @override
  final int age;

  @override
  String toString() {
    return 'Candidate(face: $face, candidateName: $candidateName, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Candidate &&
            (identical(other.face, face) ||
                const DeepCollectionEquality().equals(other.face, face)) &&
            (identical(other.candidateName, candidateName) ||
                const DeepCollectionEquality()
                    .equals(other.candidateName, candidateName)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(face) ^
      const DeepCollectionEquality().hash(candidateName) ^
      const DeepCollectionEquality().hash(age);

  @JsonKey(ignore: true)
  @override
  _$CandidateCopyWith<_Candidate> get copyWith =>
      __$CandidateCopyWithImpl<_Candidate>(this, _$identity);
}

abstract class _Candidate implements Candidate {
  const factory _Candidate(
      {@required AssetImage face,
      @required String candidateName,
      @required int age}) = _$_Candidate;

  @override
  AssetImage get face;
  @override
  String get candidateName;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$CandidateCopyWith<_Candidate> get copyWith;
}

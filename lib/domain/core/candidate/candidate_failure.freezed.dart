// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'candidate_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CandidateFailureTearOff {
  const _$CandidateFailureTearOff();

// ignore: unused_element
  _Unexpected unexpected() {
    return const _Unexpected();
  }

// ignore: unused_element
  _MissingAttribute missingAttribute() {
    return const _MissingAttribute();
  }
}

/// @nodoc
// ignore: unused_element
const $CandidateFailure = _$CandidateFailureTearOff();

/// @nodoc
mixin _$CandidateFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(),
    @required TResult missingAttribute(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(),
    TResult missingAttribute(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected value),
    @required TResult missingAttribute(_MissingAttribute value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected value),
    TResult missingAttribute(_MissingAttribute value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CandidateFailureCopyWith<$Res> {
  factory $CandidateFailureCopyWith(
          CandidateFailure value, $Res Function(CandidateFailure) then) =
      _$CandidateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CandidateFailureCopyWithImpl<$Res>
    implements $CandidateFailureCopyWith<$Res> {
  _$CandidateFailureCopyWithImpl(this._value, this._then);

  final CandidateFailure _value;
  // ignore: unused_field
  final $Res Function(CandidateFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res>
    extends _$CandidateFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc
class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'CandidateFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(),
    @required TResult missingAttribute(),
  }) {
    assert(unexpected != null);
    assert(missingAttribute != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(),
    TResult missingAttribute(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected value),
    @required TResult missingAttribute(_MissingAttribute value),
  }) {
    assert(unexpected != null);
    assert(missingAttribute != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected value),
    TResult missingAttribute(_MissingAttribute value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements CandidateFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$MissingAttributeCopyWith<$Res> {
  factory _$MissingAttributeCopyWith(
          _MissingAttribute value, $Res Function(_MissingAttribute) then) =
      __$MissingAttributeCopyWithImpl<$Res>;
}

/// @nodoc
class __$MissingAttributeCopyWithImpl<$Res>
    extends _$CandidateFailureCopyWithImpl<$Res>
    implements _$MissingAttributeCopyWith<$Res> {
  __$MissingAttributeCopyWithImpl(
      _MissingAttribute _value, $Res Function(_MissingAttribute) _then)
      : super(_value, (v) => _then(v as _MissingAttribute));

  @override
  _MissingAttribute get _value => super._value as _MissingAttribute;
}

/// @nodoc
class _$_MissingAttribute implements _MissingAttribute {
  const _$_MissingAttribute();

  @override
  String toString() {
    return 'CandidateFailure.missingAttribute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MissingAttribute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(),
    @required TResult missingAttribute(),
  }) {
    assert(unexpected != null);
    assert(missingAttribute != null);
    return missingAttribute();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(),
    TResult missingAttribute(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (missingAttribute != null) {
      return missingAttribute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected value),
    @required TResult missingAttribute(_MissingAttribute value),
  }) {
    assert(unexpected != null);
    assert(missingAttribute != null);
    return missingAttribute(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected value),
    TResult missingAttribute(_MissingAttribute value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (missingAttribute != null) {
      return missingAttribute(this);
    }
    return orElse();
  }
}

abstract class _MissingAttribute implements CandidateFailure {
  const factory _MissingAttribute() = _$_MissingAttribute;
}

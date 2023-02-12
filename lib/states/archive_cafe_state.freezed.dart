// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'archive_cafe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArchiveCafeStateTearOff {
  const _$ArchiveCafeStateTearOff();

  ArchiveCafeStateData call(
      {double rating = 0,
      String? visitedDate,
      String? memo,
      List<File> images = const []}) {
    return ArchiveCafeStateData(
      rating: rating,
      visitedDate: visitedDate,
      memo: memo,
      images: images,
    );
  }
}

/// @nodoc
const $ArchiveCafeState = _$ArchiveCafeStateTearOff();

/// @nodoc
mixin _$ArchiveCafeState {
  double get rating => throw _privateConstructorUsedError;
  String? get visitedDate => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  List<File> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArchiveCafeStateCopyWith<ArchiveCafeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchiveCafeStateCopyWith<$Res> {
  factory $ArchiveCafeStateCopyWith(
          ArchiveCafeState value, $Res Function(ArchiveCafeState) then) =
      _$ArchiveCafeStateCopyWithImpl<$Res>;
  $Res call(
      {double rating, String? visitedDate, String? memo, List<File> images});
}

/// @nodoc
class _$ArchiveCafeStateCopyWithImpl<$Res>
    implements $ArchiveCafeStateCopyWith<$Res> {
  _$ArchiveCafeStateCopyWithImpl(this._value, this._then);

  final ArchiveCafeState _value;
  // ignore: unused_field
  final $Res Function(ArchiveCafeState) _then;

  @override
  $Res call({
    Object? rating = freezed,
    Object? visitedDate = freezed,
    Object? memo = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      visitedDate: visitedDate == freezed
          ? _value.visitedDate
          : visitedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
abstract class $ArchiveCafeStateDataCopyWith<$Res>
    implements $ArchiveCafeStateCopyWith<$Res> {
  factory $ArchiveCafeStateDataCopyWith(ArchiveCafeStateData value,
          $Res Function(ArchiveCafeStateData) then) =
      _$ArchiveCafeStateDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {double rating, String? visitedDate, String? memo, List<File> images});
}

/// @nodoc
class _$ArchiveCafeStateDataCopyWithImpl<$Res>
    extends _$ArchiveCafeStateCopyWithImpl<$Res>
    implements $ArchiveCafeStateDataCopyWith<$Res> {
  _$ArchiveCafeStateDataCopyWithImpl(
      ArchiveCafeStateData _value, $Res Function(ArchiveCafeStateData) _then)
      : super(_value, (v) => _then(v as ArchiveCafeStateData));

  @override
  ArchiveCafeStateData get _value => super._value as ArchiveCafeStateData;

  @override
  $Res call({
    Object? rating = freezed,
    Object? visitedDate = freezed,
    Object? memo = freezed,
    Object? images = freezed,
  }) {
    return _then(ArchiveCafeStateData(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      visitedDate: visitedDate == freezed
          ? _value.visitedDate
          : visitedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$ArchiveCafeStateData implements ArchiveCafeStateData {
  const _$ArchiveCafeStateData(
      {this.rating = 0, this.visitedDate, this.memo, this.images = const []});

  @JsonKey()
  @override
  final double rating;
  @override
  final String? visitedDate;
  @override
  final String? memo;
  @JsonKey()
  @override
  final List<File> images;

  @override
  String toString() {
    return 'ArchiveCafeState(rating: $rating, visitedDate: $visitedDate, memo: $memo, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArchiveCafeStateData &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.visitedDate, visitedDate) &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(visitedDate),
      const DeepCollectionEquality().hash(memo),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  $ArchiveCafeStateDataCopyWith<ArchiveCafeStateData> get copyWith =>
      _$ArchiveCafeStateDataCopyWithImpl<ArchiveCafeStateData>(
          this, _$identity);
}

abstract class ArchiveCafeStateData implements ArchiveCafeState {
  const factory ArchiveCafeStateData(
      {double rating,
      String? visitedDate,
      String? memo,
      List<File> images}) = _$ArchiveCafeStateData;

  @override
  double get rating;
  @override
  String? get visitedDate;
  @override
  String? get memo;
  @override
  List<File> get images;
  @override
  @JsonKey(ignore: true)
  $ArchiveCafeStateDataCopyWith<ArchiveCafeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

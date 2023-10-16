// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SongScreenState {
  List<int> get songList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SongScreenStateCopyWith<SongScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongScreenStateCopyWith<$Res> {
  factory $SongScreenStateCopyWith(
          SongScreenState value, $Res Function(SongScreenState) then) =
      _$SongScreenStateCopyWithImpl<$Res, SongScreenState>;
  @useResult
  $Res call({List<int> songList});
}

/// @nodoc
class _$SongScreenStateCopyWithImpl<$Res, $Val extends SongScreenState>
    implements $SongScreenStateCopyWith<$Res> {
  _$SongScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songList = null,
  }) {
    return _then(_value.copyWith(
      songList: null == songList
          ? _value.songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongScreenStateImplCopyWith<$Res>
    implements $SongScreenStateCopyWith<$Res> {
  factory _$$SongScreenStateImplCopyWith(_$SongScreenStateImpl value,
          $Res Function(_$SongScreenStateImpl) then) =
      __$$SongScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> songList});
}

/// @nodoc
class __$$SongScreenStateImplCopyWithImpl<$Res>
    extends _$SongScreenStateCopyWithImpl<$Res, _$SongScreenStateImpl>
    implements _$$SongScreenStateImplCopyWith<$Res> {
  __$$SongScreenStateImplCopyWithImpl(
      _$SongScreenStateImpl _value, $Res Function(_$SongScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songList = null,
  }) {
    return _then(_$SongScreenStateImpl(
      songList: null == songList
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SongScreenStateImpl implements _SongScreenState {
  const _$SongScreenStateImpl({final List<int> songList = const []})
      : _songList = songList;

  final List<int> _songList;
  @override
  @JsonKey()
  List<int> get songList {
    if (_songList is EqualUnmodifiableListView) return _songList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songList);
  }

  @override
  String toString() {
    return 'SongScreenState(songList: $songList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongScreenStateImpl &&
            const DeepCollectionEquality().equals(other._songList, _songList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_songList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongScreenStateImplCopyWith<_$SongScreenStateImpl> get copyWith =>
      __$$SongScreenStateImplCopyWithImpl<_$SongScreenStateImpl>(
          this, _$identity);
}

abstract class _SongScreenState implements SongScreenState {
  const factory _SongScreenState({final List<int> songList}) =
      _$SongScreenStateImpl;

  @override
  List<int> get songList;
  @override
  @JsonKey(ignore: true)
  _$$SongScreenStateImplCopyWith<_$SongScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

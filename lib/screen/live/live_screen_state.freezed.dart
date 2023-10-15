// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LiveScreenState {
  List<int> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiveScreenStateCopyWith<LiveScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveScreenStateCopyWith<$Res> {
  factory $LiveScreenStateCopyWith(
          LiveScreenState value, $Res Function(LiveScreenState) then) =
      _$LiveScreenStateCopyWithImpl<$Res, LiveScreenState>;
  @useResult
  $Res call({List<int> list});
}

/// @nodoc
class _$LiveScreenStateCopyWithImpl<$Res, $Val extends LiveScreenState>
    implements $LiveScreenStateCopyWith<$Res> {
  _$LiveScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveScreenStateImplCopyWith<$Res>
    implements $LiveScreenStateCopyWith<$Res> {
  factory _$$LiveScreenStateImplCopyWith(_$LiveScreenStateImpl value,
          $Res Function(_$LiveScreenStateImpl) then) =
      __$$LiveScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> list});
}

/// @nodoc
class __$$LiveScreenStateImplCopyWithImpl<$Res>
    extends _$LiveScreenStateCopyWithImpl<$Res, _$LiveScreenStateImpl>
    implements _$$LiveScreenStateImplCopyWith<$Res> {
  __$$LiveScreenStateImplCopyWithImpl(
      _$LiveScreenStateImpl _value, $Res Function(_$LiveScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$LiveScreenStateImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$LiveScreenStateImpl implements _LiveScreenState {
  const _$LiveScreenStateImpl({final List<int> list = const []}) : _list = list;

  final List<int> _list;
  @override
  @JsonKey()
  List<int> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'LiveScreenState(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveScreenStateImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveScreenStateImplCopyWith<_$LiveScreenStateImpl> get copyWith =>
      __$$LiveScreenStateImplCopyWithImpl<_$LiveScreenStateImpl>(
          this, _$identity);
}

abstract class _LiveScreenState implements LiveScreenState {
  const factory _LiveScreenState({final List<int> list}) =
      _$LiveScreenStateImpl;

  @override
  List<int> get list;
  @override
  @JsonKey(ignore: true)
  _$$LiveScreenStateImplCopyWith<_$LiveScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

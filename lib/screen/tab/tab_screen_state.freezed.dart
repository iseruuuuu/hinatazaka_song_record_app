// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabScreenState {
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabScreenStateCopyWith<TabScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabScreenStateCopyWith<$Res> {
  factory $TabScreenStateCopyWith(
          TabScreenState value, $Res Function(TabScreenState) then) =
      _$TabScreenStateCopyWithImpl<$Res, TabScreenState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$TabScreenStateCopyWithImpl<$Res, $Val extends TabScreenState>
    implements $TabScreenStateCopyWith<$Res> {
  _$TabScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabScreenStateImplCopyWith<$Res>
    implements $TabScreenStateCopyWith<$Res> {
  factory _$$TabScreenStateImplCopyWith(_$TabScreenStateImpl value,
          $Res Function(_$TabScreenStateImpl) then) =
      __$$TabScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$TabScreenStateImplCopyWithImpl<$Res>
    extends _$TabScreenStateCopyWithImpl<$Res, _$TabScreenStateImpl>
    implements _$$TabScreenStateImplCopyWith<$Res> {
  __$$TabScreenStateImplCopyWithImpl(
      _$TabScreenStateImpl _value, $Res Function(_$TabScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$TabScreenStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TabScreenStateImpl implements _TabScreenState {
  const _$TabScreenStateImpl({this.selectedIndex = 0});

  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'TabScreenState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabScreenStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabScreenStateImplCopyWith<_$TabScreenStateImpl> get copyWith =>
      __$$TabScreenStateImplCopyWithImpl<_$TabScreenStateImpl>(
          this, _$identity);
}

abstract class _TabScreenState implements TabScreenState {
  const factory _TabScreenState({final int selectedIndex}) =
      _$TabScreenStateImpl;

  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$TabScreenStateImplCopyWith<_$TabScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

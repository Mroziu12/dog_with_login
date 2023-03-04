// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyUser {
  String get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyUserCopyWith<MyUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyUserCopyWith<$Res> {
  factory $MyUserCopyWith(MyUser value, $Res Function(MyUser) then) =
      _$MyUserCopyWithImpl<$Res, MyUser>;
  @useResult
  $Res call({String id, String userName});
}

/// @nodoc
class _$MyUserCopyWithImpl<$Res, $Val extends MyUser>
    implements $MyUserCopyWith<$Res> {
  _$MyUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyUserCopyWith<$Res> implements $MyUserCopyWith<$Res> {
  factory _$$_MyUserCopyWith(_$_MyUser value, $Res Function(_$_MyUser) then) =
      __$$_MyUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userName});
}

/// @nodoc
class __$$_MyUserCopyWithImpl<$Res>
    extends _$MyUserCopyWithImpl<$Res, _$_MyUser>
    implements _$$_MyUserCopyWith<$Res> {
  __$$_MyUserCopyWithImpl(_$_MyUser _value, $Res Function(_$_MyUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
  }) {
    return _then(_$_MyUser(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MyUser extends _MyUser with DiagnosticableTreeMixin {
  const _$_MyUser(this.id, this.userName) : super._();

  @override
  final String id;
  @override
  final String userName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyUser(id: $id, userName: $userName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userName', userName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyUserCopyWith<_$_MyUser> get copyWith =>
      __$$_MyUserCopyWithImpl<_$_MyUser>(this, _$identity);
}

abstract class _MyUser extends MyUser {
  const factory _MyUser(final String id, final String userName) = _$_MyUser;
  const _MyUser._() : super._();

  @override
  String get id;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$_MyUserCopyWith<_$_MyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

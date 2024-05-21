// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientEvent _$ClientEventFromJson(Map<String, dynamic> json) {
  switch (json['eventType']) {
    case 'ClientWantsToEnterRoom':
      return ClientWantsToEnterRoom.fromJson(json);
    case 'ClientWantsToAnswerQuestion':
      return ClientWantsToAnswerQuestion.fromJson(json);
    case 'ClientWantsToKickAllUsers':
      return ClientWantsToKickAllUsers.fromJson(json);
    case 'ClientWantsToLeaveRoom':
      return ClientWantsToLeaveRoom.fromJson(json);
    case 'ClientWantsToSetupQuiz':
      return ClientWantsToSetupQuiz.fromJson(json);
    case 'ClientWantsToStartQuiz':
      return ClientWantsToStartQuiz.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'eventType', 'ClientEvent',
          'Invalid union type "${json['eventType']}"!');
  }
}

/// @nodoc
mixin _$ClientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, String username)
        clientWantsToEnterRoom,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId) clientWantsToLeaveRoom,
    required TResult Function(String quizId, String username, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int quizRoomId)
        clientWantsToStartQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId)? clientWantsToLeaveRoom,
    TResult? Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId)? clientWantsToLeaveRoom,
    TResult Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(ClientWantsToLeaveRoom value)
        clientWantsToLeaveRoom,
    required TResult Function(ClientWantsToSetupQuiz value)
        clientWantsToSetupQuiz,
    required TResult Function(ClientWantsToStartQuiz value)
        clientWantsToStartQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientEventCopyWith<$Res> {
  factory $ClientEventCopyWith(
          ClientEvent value, $Res Function(ClientEvent) then) =
      _$ClientEventCopyWithImpl<$Res, ClientEvent>;
}

/// @nodoc
class _$ClientEventCopyWithImpl<$Res, $Val extends ClientEvent>
    implements $ClientEventCopyWith<$Res> {
  _$ClientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientWantsToEnterRoomImplCopyWith<$Res> {
  factory _$$ClientWantsToEnterRoomImplCopyWith(
          _$ClientWantsToEnterRoomImpl value,
          $Res Function(_$ClientWantsToEnterRoomImpl) then) =
      __$$ClientWantsToEnterRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int roomId, String username});
}

/// @nodoc
class __$$ClientWantsToEnterRoomImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToEnterRoomImpl>
    implements _$$ClientWantsToEnterRoomImplCopyWith<$Res> {
  __$$ClientWantsToEnterRoomImplCopyWithImpl(
      _$ClientWantsToEnterRoomImpl _value,
      $Res Function(_$ClientWantsToEnterRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? username = null,
  }) {
    return _then(_$ClientWantsToEnterRoomImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToEnterRoomImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToEnterRoom {
  const _$ClientWantsToEnterRoomImpl(
      {required this.roomId, required this.username, final String? $type})
      : $type = $type ?? 'ClientWantsToEnterRoom';

  factory _$ClientWantsToEnterRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToEnterRoomImplFromJson(json);

  @override
  final int roomId;
  @override
  final String username;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToEnterRoom(roomId: $roomId, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToEnterRoom'))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToEnterRoomImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomId, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToEnterRoomImplCopyWith<_$ClientWantsToEnterRoomImpl>
      get copyWith => __$$ClientWantsToEnterRoomImplCopyWithImpl<
          _$ClientWantsToEnterRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, String username)
        clientWantsToEnterRoom,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId) clientWantsToLeaveRoom,
    required TResult Function(String quizId, String username, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int quizRoomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToEnterRoom(roomId, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId)? clientWantsToLeaveRoom,
    TResult? Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToEnterRoom?.call(roomId, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId)? clientWantsToLeaveRoom,
    TResult Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToEnterRoom != null) {
      return clientWantsToEnterRoom(roomId, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(ClientWantsToLeaveRoom value)
        clientWantsToLeaveRoom,
    required TResult Function(ClientWantsToSetupQuiz value)
        clientWantsToSetupQuiz,
    required TResult Function(ClientWantsToStartQuiz value)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToEnterRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToEnterRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToEnterRoom != null) {
      return clientWantsToEnterRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToEnterRoomImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToEnterRoom implements ClientEvent {
  const factory ClientWantsToEnterRoom(
      {required final int roomId,
      required final String username}) = _$ClientWantsToEnterRoomImpl;

  factory ClientWantsToEnterRoom.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToEnterRoomImpl.fromJson;

  int get roomId;
  String get username;
  @JsonKey(ignore: true)
  _$$ClientWantsToEnterRoomImplCopyWith<_$ClientWantsToEnterRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToAnswerQuestionImplCopyWith<$Res> {
  factory _$$ClientWantsToAnswerQuestionImplCopyWith(
          _$ClientWantsToAnswerQuestionImpl value,
          $Res Function(_$ClientWantsToAnswerQuestionImpl) then) =
      __$$ClientWantsToAnswerQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int answerId, String username, int roomId});
}

/// @nodoc
class __$$ClientWantsToAnswerQuestionImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToAnswerQuestionImpl>
    implements _$$ClientWantsToAnswerQuestionImplCopyWith<$Res> {
  __$$ClientWantsToAnswerQuestionImplCopyWithImpl(
      _$ClientWantsToAnswerQuestionImpl _value,
      $Res Function(_$ClientWantsToAnswerQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerId = null,
    Object? username = null,
    Object? roomId = null,
  }) {
    return _then(_$ClientWantsToAnswerQuestionImpl(
      answerId: null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToAnswerQuestionImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToAnswerQuestion {
  const _$ClientWantsToAnswerQuestionImpl(
      {required this.answerId,
      required this.username,
      required this.roomId,
      final String? $type})
      : $type = $type ?? 'ClientWantsToAnswerQuestion';

  factory _$ClientWantsToAnswerQuestionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToAnswerQuestionImplFromJson(json);

  @override
  final int answerId;
  @override
  final String username;
  @override
  final int roomId;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToAnswerQuestion(answerId: $answerId, username: $username, roomId: $roomId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ClientEvent.clientWantsToAnswerQuestion'))
      ..add(DiagnosticsProperty('answerId', answerId))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('roomId', roomId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToAnswerQuestionImpl &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answerId, username, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToAnswerQuestionImplCopyWith<_$ClientWantsToAnswerQuestionImpl>
      get copyWith => __$$ClientWantsToAnswerQuestionImplCopyWithImpl<
          _$ClientWantsToAnswerQuestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, String username)
        clientWantsToEnterRoom,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId) clientWantsToLeaveRoom,
    required TResult Function(String quizId, String username, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int quizRoomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToAnswerQuestion(answerId, username, roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId)? clientWantsToLeaveRoom,
    TResult? Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToAnswerQuestion?.call(answerId, username, roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId)? clientWantsToLeaveRoom,
    TResult Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToAnswerQuestion != null) {
      return clientWantsToAnswerQuestion(answerId, username, roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(ClientWantsToLeaveRoom value)
        clientWantsToLeaveRoom,
    required TResult Function(ClientWantsToSetupQuiz value)
        clientWantsToSetupQuiz,
    required TResult Function(ClientWantsToStartQuiz value)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToAnswerQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToAnswerQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToAnswerQuestion != null) {
      return clientWantsToAnswerQuestion(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToAnswerQuestionImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToAnswerQuestion implements ClientEvent {
  const factory ClientWantsToAnswerQuestion(
      {required final int answerId,
      required final String username,
      required final int roomId}) = _$ClientWantsToAnswerQuestionImpl;

  factory ClientWantsToAnswerQuestion.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToAnswerQuestionImpl.fromJson;

  int get answerId;
  String get username;
  int get roomId;
  @JsonKey(ignore: true)
  _$$ClientWantsToAnswerQuestionImplCopyWith<_$ClientWantsToAnswerQuestionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToKickAllUsersImplCopyWith<$Res> {
  factory _$$ClientWantsToKickAllUsersImplCopyWith(
          _$ClientWantsToKickAllUsersImpl value,
          $Res Function(_$ClientWantsToKickAllUsersImpl) then) =
      __$$ClientWantsToKickAllUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int roomId});
}

/// @nodoc
class __$$ClientWantsToKickAllUsersImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToKickAllUsersImpl>
    implements _$$ClientWantsToKickAllUsersImplCopyWith<$Res> {
  __$$ClientWantsToKickAllUsersImplCopyWithImpl(
      _$ClientWantsToKickAllUsersImpl _value,
      $Res Function(_$ClientWantsToKickAllUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$ClientWantsToKickAllUsersImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToKickAllUsersImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToKickAllUsers {
  const _$ClientWantsToKickAllUsersImpl(
      {required this.roomId, final String? $type})
      : $type = $type ?? 'ClientWantsToKickAllUsers';

  factory _$ClientWantsToKickAllUsersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToKickAllUsersImplFromJson(json);

  @override
  final int roomId;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToKickAllUsers(roomId: $roomId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ClientEvent.clientWantsToKickAllUsers'))
      ..add(DiagnosticsProperty('roomId', roomId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToKickAllUsersImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToKickAllUsersImplCopyWith<_$ClientWantsToKickAllUsersImpl>
      get copyWith => __$$ClientWantsToKickAllUsersImplCopyWithImpl<
          _$ClientWantsToKickAllUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, String username)
        clientWantsToEnterRoom,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId) clientWantsToLeaveRoom,
    required TResult Function(String quizId, String username, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int quizRoomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToKickAllUsers(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId)? clientWantsToLeaveRoom,
    TResult? Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToKickAllUsers?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId)? clientWantsToLeaveRoom,
    TResult Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToKickAllUsers != null) {
      return clientWantsToKickAllUsers(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(ClientWantsToLeaveRoom value)
        clientWantsToLeaveRoom,
    required TResult Function(ClientWantsToSetupQuiz value)
        clientWantsToSetupQuiz,
    required TResult Function(ClientWantsToStartQuiz value)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToKickAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToKickAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToKickAllUsers != null) {
      return clientWantsToKickAllUsers(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToKickAllUsersImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToKickAllUsers implements ClientEvent {
  const factory ClientWantsToKickAllUsers({required final int roomId}) =
      _$ClientWantsToKickAllUsersImpl;

  factory ClientWantsToKickAllUsers.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToKickAllUsersImpl.fromJson;

  int get roomId;
  @JsonKey(ignore: true)
  _$$ClientWantsToKickAllUsersImplCopyWith<_$ClientWantsToKickAllUsersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToLeaveRoomImplCopyWith<$Res> {
  factory _$$ClientWantsToLeaveRoomImplCopyWith(
          _$ClientWantsToLeaveRoomImpl value,
          $Res Function(_$ClientWantsToLeaveRoomImpl) then) =
      __$$ClientWantsToLeaveRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int roomId});
}

/// @nodoc
class __$$ClientWantsToLeaveRoomImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToLeaveRoomImpl>
    implements _$$ClientWantsToLeaveRoomImplCopyWith<$Res> {
  __$$ClientWantsToLeaveRoomImplCopyWithImpl(
      _$ClientWantsToLeaveRoomImpl _value,
      $Res Function(_$ClientWantsToLeaveRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$ClientWantsToLeaveRoomImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToLeaveRoomImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToLeaveRoom {
  const _$ClientWantsToLeaveRoomImpl(
      {required this.roomId, final String? $type})
      : $type = $type ?? 'ClientWantsToLeaveRoom';

  factory _$ClientWantsToLeaveRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLeaveRoomImplFromJson(json);

  @override
  final int roomId;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToLeaveRoom(roomId: $roomId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToLeaveRoom'))
      ..add(DiagnosticsProperty('roomId', roomId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLeaveRoomImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLeaveRoomImplCopyWith<_$ClientWantsToLeaveRoomImpl>
      get copyWith => __$$ClientWantsToLeaveRoomImplCopyWithImpl<
          _$ClientWantsToLeaveRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, String username)
        clientWantsToEnterRoom,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId) clientWantsToLeaveRoom,
    required TResult Function(String quizId, String username, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int quizRoomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToLeaveRoom(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId)? clientWantsToLeaveRoom,
    TResult? Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToLeaveRoom?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId)? clientWantsToLeaveRoom,
    TResult Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToLeaveRoom != null) {
      return clientWantsToLeaveRoom(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(ClientWantsToLeaveRoom value)
        clientWantsToLeaveRoom,
    required TResult Function(ClientWantsToSetupQuiz value)
        clientWantsToSetupQuiz,
    required TResult Function(ClientWantsToStartQuiz value)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToLeaveRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToLeaveRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToLeaveRoom != null) {
      return clientWantsToLeaveRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToLeaveRoomImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToLeaveRoom implements ClientEvent {
  const factory ClientWantsToLeaveRoom({required final int roomId}) =
      _$ClientWantsToLeaveRoomImpl;

  factory ClientWantsToLeaveRoom.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLeaveRoomImpl.fromJson;

  int get roomId;
  @JsonKey(ignore: true)
  _$$ClientWantsToLeaveRoomImplCopyWith<_$ClientWantsToLeaveRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToSetupQuizImplCopyWith<$Res> {
  factory _$$ClientWantsToSetupQuizImplCopyWith(
          _$ClientWantsToSetupQuizImpl value,
          $Res Function(_$ClientWantsToSetupQuizImpl) then) =
      __$$ClientWantsToSetupQuizImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String quizId, String username, int setupTimer});
}

/// @nodoc
class __$$ClientWantsToSetupQuizImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToSetupQuizImpl>
    implements _$$ClientWantsToSetupQuizImplCopyWith<$Res> {
  __$$ClientWantsToSetupQuizImplCopyWithImpl(
      _$ClientWantsToSetupQuizImpl _value,
      $Res Function(_$ClientWantsToSetupQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = null,
    Object? username = null,
    Object? setupTimer = null,
  }) {
    return _then(_$ClientWantsToSetupQuizImpl(
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      setupTimer: null == setupTimer
          ? _value.setupTimer
          : setupTimer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToSetupQuizImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToSetupQuiz {
  const _$ClientWantsToSetupQuizImpl(
      {required this.quizId,
      required this.username,
      required this.setupTimer,
      final String? $type})
      : $type = $type ?? 'ClientWantsToSetupQuiz';

  factory _$ClientWantsToSetupQuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToSetupQuizImplFromJson(json);

  @override
  final String quizId;
  @override
  final String username;
  @override
  final int setupTimer;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToSetupQuiz(quizId: $quizId, username: $username, setupTimer: $setupTimer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToSetupQuiz'))
      ..add(DiagnosticsProperty('quizId', quizId))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('setupTimer', setupTimer));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToSetupQuizImpl &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.setupTimer, setupTimer) ||
                other.setupTimer == setupTimer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quizId, username, setupTimer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToSetupQuizImplCopyWith<_$ClientWantsToSetupQuizImpl>
      get copyWith => __$$ClientWantsToSetupQuizImplCopyWithImpl<
          _$ClientWantsToSetupQuizImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, String username)
        clientWantsToEnterRoom,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId) clientWantsToLeaveRoom,
    required TResult Function(String quizId, String username, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int quizRoomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToSetupQuiz(quizId, username, setupTimer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId)? clientWantsToLeaveRoom,
    TResult? Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToSetupQuiz?.call(quizId, username, setupTimer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId)? clientWantsToLeaveRoom,
    TResult Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToSetupQuiz != null) {
      return clientWantsToSetupQuiz(quizId, username, setupTimer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(ClientWantsToLeaveRoom value)
        clientWantsToLeaveRoom,
    required TResult Function(ClientWantsToSetupQuiz value)
        clientWantsToSetupQuiz,
    required TResult Function(ClientWantsToStartQuiz value)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToSetupQuiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToSetupQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToSetupQuiz != null) {
      return clientWantsToSetupQuiz(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToSetupQuizImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToSetupQuiz implements ClientEvent {
  const factory ClientWantsToSetupQuiz(
      {required final String quizId,
      required final String username,
      required final int setupTimer}) = _$ClientWantsToSetupQuizImpl;

  factory ClientWantsToSetupQuiz.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToSetupQuizImpl.fromJson;

  String get quizId;
  String get username;
  int get setupTimer;
  @JsonKey(ignore: true)
  _$$ClientWantsToSetupQuizImplCopyWith<_$ClientWantsToSetupQuizImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToStartQuizImplCopyWith<$Res> {
  factory _$$ClientWantsToStartQuizImplCopyWith(
          _$ClientWantsToStartQuizImpl value,
          $Res Function(_$ClientWantsToStartQuizImpl) then) =
      __$$ClientWantsToStartQuizImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String quizId, int quizRoomId});
}

/// @nodoc
class __$$ClientWantsToStartQuizImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToStartQuizImpl>
    implements _$$ClientWantsToStartQuizImplCopyWith<$Res> {
  __$$ClientWantsToStartQuizImplCopyWithImpl(
      _$ClientWantsToStartQuizImpl _value,
      $Res Function(_$ClientWantsToStartQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? quizId = null,
    Object? quizRoomId = null,
  }) {
    return _then(_$ClientWantsToStartQuizImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      quizRoomId: null == quizRoomId
          ? _value.quizRoomId
          : quizRoomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToStartQuizImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToStartQuiz {
  const _$ClientWantsToStartQuizImpl(
      {required this.username,
      required this.quizId,
      required this.quizRoomId,
      final String? $type})
      : $type = $type ?? 'ClientWantsToStartQuiz';

  factory _$ClientWantsToStartQuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToStartQuizImplFromJson(json);

  @override
  final String username;
  @override
  final String quizId;
  @override
  final int quizRoomId;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToStartQuiz(username: $username, quizId: $quizId, quizRoomId: $quizRoomId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToStartQuiz'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('quizId', quizId))
      ..add(DiagnosticsProperty('quizRoomId', quizRoomId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToStartQuizImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.quizRoomId, quizRoomId) ||
                other.quizRoomId == quizRoomId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, quizId, quizRoomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToStartQuizImplCopyWith<_$ClientWantsToStartQuizImpl>
      get copyWith => __$$ClientWantsToStartQuizImplCopyWithImpl<
          _$ClientWantsToStartQuizImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, String username)
        clientWantsToEnterRoom,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId) clientWantsToLeaveRoom,
    required TResult Function(String quizId, String username, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int quizRoomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToStartQuiz(username, quizId, quizRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId)? clientWantsToLeaveRoom,
    TResult? Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToStartQuiz?.call(username, quizId, quizRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId)? clientWantsToLeaveRoom,
    TResult Function(String quizId, String username, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int quizRoomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToStartQuiz != null) {
      return clientWantsToStartQuiz(username, quizId, quizRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(ClientWantsToLeaveRoom value)
        clientWantsToLeaveRoom,
    required TResult Function(ClientWantsToSetupQuiz value)
        clientWantsToSetupQuiz,
    required TResult Function(ClientWantsToStartQuiz value)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToStartQuiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToStartQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(ClientWantsToLeaveRoom value)? clientWantsToLeaveRoom,
    TResult Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToStartQuiz != null) {
      return clientWantsToStartQuiz(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToStartQuizImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToStartQuiz implements ClientEvent {
  const factory ClientWantsToStartQuiz(
      {required final String username,
      required final String quizId,
      required final int quizRoomId}) = _$ClientWantsToStartQuizImpl;

  factory ClientWantsToStartQuiz.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToStartQuizImpl.fromJson;

  String get username;
  String get quizId;
  int get quizRoomId;
  @JsonKey(ignore: true)
  _$$ClientWantsToStartQuizImplCopyWith<_$ClientWantsToStartQuizImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerEvent _$ServerEventFromJson(Map<String, dynamic> json) {
  switch (json['eventType']) {
    case 'ServerAddsClientToRoom':
      return ServerAddsClientToRoom.fromJson(json);
    case 'ServerRemovesClientFromRoom':
      return ServerRemovesClientFromRoom.fromJson(json);
    case 'ServerStartsQuiz':
      return ServerStartsQuiz.fromJson(json);
    case 'ServerFinishesQuiz':
      return ServerFinishesQuiz.fromJson(json);
    case 'ServerResetsQuiz':
      return ServerResetsQuiz.fromJson(json);
    case 'ServerSetCurrentQuestion':
      return ServerSetCurrentQuestion.fromJson(json);
    case 'ServerTimeRemaining':
      return ServerTimeRemaining.fromJson(json);
    case 'ServerShowScore':
      return ServerShowScore.fromJson(json);
    case 'ServerTellsHowManyPeopleAnswered':
      return ServerTellsHowManyPeopleAnswered.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'eventType', 'ServerEvent',
          'Invalid union type "${json['eventType']}"!');
  }
}

/// @nodoc
mixin _$ServerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(QuizStatus status) serverStartsQuiz,
    required TResult Function(QuizStatus status) serverFinishesQuiz,
    required TResult Function(QuizStatus status) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(QuizStatus status)? serverStartsQuiz,
    TResult? Function(QuizStatus status)? serverFinishesQuiz,
    TResult? Function(QuizStatus status)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(QuizStatus status)? serverStartsQuiz,
    TResult Function(QuizStatus status)? serverFinishesQuiz,
    TResult Function(QuizStatus status)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerStartsQuiz value) serverStartsQuiz,
    required TResult Function(ServerFinishesQuiz value) serverFinishesQuiz,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult? Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerEventCopyWith<$Res> {
  factory $ServerEventCopyWith(
          ServerEvent value, $Res Function(ServerEvent) then) =
      _$ServerEventCopyWithImpl<$Res, ServerEvent>;
}

/// @nodoc
class _$ServerEventCopyWithImpl<$Res, $Val extends ServerEvent>
    implements $ServerEventCopyWith<$Res> {
  _$ServerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerAddsClientToRoomImplCopyWith<$Res> {
  factory _$$ServerAddsClientToRoomImplCopyWith(
          _$ServerAddsClientToRoomImpl value,
          $Res Function(_$ServerAddsClientToRoomImpl) then) =
      __$$ServerAddsClientToRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int roomId, int liveConnections});
}

/// @nodoc
class __$$ServerAddsClientToRoomImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerAddsClientToRoomImpl>
    implements _$$ServerAddsClientToRoomImplCopyWith<$Res> {
  __$$ServerAddsClientToRoomImplCopyWithImpl(
      _$ServerAddsClientToRoomImpl _value,
      $Res Function(_$ServerAddsClientToRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? liveConnections = null,
  }) {
    return _then(_$ServerAddsClientToRoomImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      liveConnections: null == liveConnections
          ? _value.liveConnections
          : liveConnections // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerAddsClientToRoomImpl
    with DiagnosticableTreeMixin
    implements ServerAddsClientToRoom {
  const _$ServerAddsClientToRoomImpl(
      {required this.roomId,
      required this.liveConnections,
      final String? $type})
      : $type = $type ?? 'ServerAddsClientToRoom';

  factory _$ServerAddsClientToRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerAddsClientToRoomImplFromJson(json);

  @override
  final int roomId;
  @override
  final int liveConnections;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverAddsClientToRoom(roomId: $roomId, liveConnections: $liveConnections)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverAddsClientToRoom'))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('liveConnections', liveConnections));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAddsClientToRoomImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.liveConnections, liveConnections) ||
                other.liveConnections == liveConnections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomId, liveConnections);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerAddsClientToRoomImplCopyWith<_$ServerAddsClientToRoomImpl>
      get copyWith => __$$ServerAddsClientToRoomImplCopyWithImpl<
          _$ServerAddsClientToRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(QuizStatus status) serverStartsQuiz,
    required TResult Function(QuizStatus status) serverFinishesQuiz,
    required TResult Function(QuizStatus status) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverAddsClientToRoom(roomId, liveConnections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(QuizStatus status)? serverStartsQuiz,
    TResult? Function(QuizStatus status)? serverFinishesQuiz,
    TResult? Function(QuizStatus status)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
  }) {
    return serverAddsClientToRoom?.call(roomId, liveConnections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(QuizStatus status)? serverStartsQuiz,
    TResult Function(QuizStatus status)? serverFinishesQuiz,
    TResult Function(QuizStatus status)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverAddsClientToRoom != null) {
      return serverAddsClientToRoom(roomId, liveConnections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerStartsQuiz value) serverStartsQuiz,
    required TResult Function(ServerFinishesQuiz value) serverFinishesQuiz,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverAddsClientToRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult? Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverAddsClientToRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverAddsClientToRoom != null) {
      return serverAddsClientToRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerAddsClientToRoomImplToJson(
      this,
    );
  }
}

abstract class ServerAddsClientToRoom implements ServerEvent {
  const factory ServerAddsClientToRoom(
      {required final int roomId,
      required final int liveConnections}) = _$ServerAddsClientToRoomImpl;

  factory ServerAddsClientToRoom.fromJson(Map<String, dynamic> json) =
      _$ServerAddsClientToRoomImpl.fromJson;

  int get roomId;
  int get liveConnections;
  @JsonKey(ignore: true)
  _$$ServerAddsClientToRoomImplCopyWith<_$ServerAddsClientToRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerRemovesClientFromRoomImplCopyWith<$Res> {
  factory _$$ServerRemovesClientFromRoomImplCopyWith(
          _$ServerRemovesClientFromRoomImpl value,
          $Res Function(_$ServerRemovesClientFromRoomImpl) then) =
      __$$ServerRemovesClientFromRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int roomId, int liveConnections});
}

/// @nodoc
class __$$ServerRemovesClientFromRoomImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerRemovesClientFromRoomImpl>
    implements _$$ServerRemovesClientFromRoomImplCopyWith<$Res> {
  __$$ServerRemovesClientFromRoomImplCopyWithImpl(
      _$ServerRemovesClientFromRoomImpl _value,
      $Res Function(_$ServerRemovesClientFromRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? liveConnections = null,
  }) {
    return _then(_$ServerRemovesClientFromRoomImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      liveConnections: null == liveConnections
          ? _value.liveConnections
          : liveConnections // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerRemovesClientFromRoomImpl
    with DiagnosticableTreeMixin
    implements ServerRemovesClientFromRoom {
  const _$ServerRemovesClientFromRoomImpl(
      {required this.roomId,
      required this.liveConnections,
      final String? $type})
      : $type = $type ?? 'ServerRemovesClientFromRoom';

  factory _$ServerRemovesClientFromRoomImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerRemovesClientFromRoomImplFromJson(json);

  @override
  final int roomId;
  @override
  final int liveConnections;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverRemovesClientFromRoom(roomId: $roomId, liveConnections: $liveConnections)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ServerEvent.serverRemovesClientFromRoom'))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('liveConnections', liveConnections));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerRemovesClientFromRoomImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.liveConnections, liveConnections) ||
                other.liveConnections == liveConnections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomId, liveConnections);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerRemovesClientFromRoomImplCopyWith<_$ServerRemovesClientFromRoomImpl>
      get copyWith => __$$ServerRemovesClientFromRoomImplCopyWithImpl<
          _$ServerRemovesClientFromRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(QuizStatus status) serverStartsQuiz,
    required TResult Function(QuizStatus status) serverFinishesQuiz,
    required TResult Function(QuizStatus status) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverRemovesClientFromRoom(roomId, liveConnections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(QuizStatus status)? serverStartsQuiz,
    TResult? Function(QuizStatus status)? serverFinishesQuiz,
    TResult? Function(QuizStatus status)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
  }) {
    return serverRemovesClientFromRoom?.call(roomId, liveConnections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(QuizStatus status)? serverStartsQuiz,
    TResult Function(QuizStatus status)? serverFinishesQuiz,
    TResult Function(QuizStatus status)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverRemovesClientFromRoom != null) {
      return serverRemovesClientFromRoom(roomId, liveConnections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerStartsQuiz value) serverStartsQuiz,
    required TResult Function(ServerFinishesQuiz value) serverFinishesQuiz,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverRemovesClientFromRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult? Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverRemovesClientFromRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverRemovesClientFromRoom != null) {
      return serverRemovesClientFromRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerRemovesClientFromRoomImplToJson(
      this,
    );
  }
}

abstract class ServerRemovesClientFromRoom implements ServerEvent {
  const factory ServerRemovesClientFromRoom(
      {required final int roomId,
      required final int liveConnections}) = _$ServerRemovesClientFromRoomImpl;

  factory ServerRemovesClientFromRoom.fromJson(Map<String, dynamic> json) =
      _$ServerRemovesClientFromRoomImpl.fromJson;

  int get roomId;
  int get liveConnections;
  @JsonKey(ignore: true)
  _$$ServerRemovesClientFromRoomImplCopyWith<_$ServerRemovesClientFromRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerStartsQuizImplCopyWith<$Res> {
  factory _$$ServerStartsQuizImplCopyWith(_$ServerStartsQuizImpl value,
          $Res Function(_$ServerStartsQuizImpl) then) =
      __$$ServerStartsQuizImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuizStatus status});
}

/// @nodoc
class __$$ServerStartsQuizImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerStartsQuizImpl>
    implements _$$ServerStartsQuizImplCopyWith<$Res> {
  __$$ServerStartsQuizImplCopyWithImpl(_$ServerStartsQuizImpl _value,
      $Res Function(_$ServerStartsQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ServerStartsQuizImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerStartsQuizImpl
    with DiagnosticableTreeMixin
    implements ServerStartsQuiz {
  const _$ServerStartsQuizImpl({required this.status, final String? $type})
      : $type = $type ?? 'ServerStartsQuiz';

  factory _$ServerStartsQuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerStartsQuizImplFromJson(json);

  @override
  final QuizStatus status;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverStartsQuiz(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverStartsQuiz'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerStartsQuizImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerStartsQuizImplCopyWith<_$ServerStartsQuizImpl> get copyWith =>
      __$$ServerStartsQuizImplCopyWithImpl<_$ServerStartsQuizImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(QuizStatus status) serverStartsQuiz,
    required TResult Function(QuizStatus status) serverFinishesQuiz,
    required TResult Function(QuizStatus status) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverStartsQuiz(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(QuizStatus status)? serverStartsQuiz,
    TResult? Function(QuizStatus status)? serverFinishesQuiz,
    TResult? Function(QuizStatus status)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
  }) {
    return serverStartsQuiz?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(QuizStatus status)? serverStartsQuiz,
    TResult Function(QuizStatus status)? serverFinishesQuiz,
    TResult Function(QuizStatus status)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverStartsQuiz != null) {
      return serverStartsQuiz(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerStartsQuiz value) serverStartsQuiz,
    required TResult Function(ServerFinishesQuiz value) serverFinishesQuiz,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverStartsQuiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult? Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverStartsQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverStartsQuiz != null) {
      return serverStartsQuiz(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerStartsQuizImplToJson(
      this,
    );
  }
}

abstract class ServerStartsQuiz implements ServerEvent {
  const factory ServerStartsQuiz({required final QuizStatus status}) =
      _$ServerStartsQuizImpl;

  factory ServerStartsQuiz.fromJson(Map<String, dynamic> json) =
      _$ServerStartsQuizImpl.fromJson;

  QuizStatus get status;
  @JsonKey(ignore: true)
  _$$ServerStartsQuizImplCopyWith<_$ServerStartsQuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFinishesQuizImplCopyWith<$Res> {
  factory _$$ServerFinishesQuizImplCopyWith(_$ServerFinishesQuizImpl value,
          $Res Function(_$ServerFinishesQuizImpl) then) =
      __$$ServerFinishesQuizImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuizStatus status});
}

/// @nodoc
class __$$ServerFinishesQuizImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerFinishesQuizImpl>
    implements _$$ServerFinishesQuizImplCopyWith<$Res> {
  __$$ServerFinishesQuizImplCopyWithImpl(_$ServerFinishesQuizImpl _value,
      $Res Function(_$ServerFinishesQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ServerFinishesQuizImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerFinishesQuizImpl
    with DiagnosticableTreeMixin
    implements ServerFinishesQuiz {
  const _$ServerFinishesQuizImpl({required this.status, final String? $type})
      : $type = $type ?? 'ServerFinishesQuiz';

  factory _$ServerFinishesQuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerFinishesQuizImplFromJson(json);

  @override
  final QuizStatus status;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverFinishesQuiz(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverFinishesQuiz'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFinishesQuizImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFinishesQuizImplCopyWith<_$ServerFinishesQuizImpl> get copyWith =>
      __$$ServerFinishesQuizImplCopyWithImpl<_$ServerFinishesQuizImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(QuizStatus status) serverStartsQuiz,
    required TResult Function(QuizStatus status) serverFinishesQuiz,
    required TResult Function(QuizStatus status) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverFinishesQuiz(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(QuizStatus status)? serverStartsQuiz,
    TResult? Function(QuizStatus status)? serverFinishesQuiz,
    TResult? Function(QuizStatus status)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
  }) {
    return serverFinishesQuiz?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(QuizStatus status)? serverStartsQuiz,
    TResult Function(QuizStatus status)? serverFinishesQuiz,
    TResult Function(QuizStatus status)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverFinishesQuiz != null) {
      return serverFinishesQuiz(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerStartsQuiz value) serverStartsQuiz,
    required TResult Function(ServerFinishesQuiz value) serverFinishesQuiz,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverFinishesQuiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult? Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverFinishesQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverFinishesQuiz != null) {
      return serverFinishesQuiz(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerFinishesQuizImplToJson(
      this,
    );
  }
}

abstract class ServerFinishesQuiz implements ServerEvent {
  const factory ServerFinishesQuiz({required final QuizStatus status}) =
      _$ServerFinishesQuizImpl;

  factory ServerFinishesQuiz.fromJson(Map<String, dynamic> json) =
      _$ServerFinishesQuizImpl.fromJson;

  QuizStatus get status;
  @JsonKey(ignore: true)
  _$$ServerFinishesQuizImplCopyWith<_$ServerFinishesQuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerResetsQuizImplCopyWith<$Res> {
  factory _$$ServerResetsQuizImplCopyWith(_$ServerResetsQuizImpl value,
          $Res Function(_$ServerResetsQuizImpl) then) =
      __$$ServerResetsQuizImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuizStatus status});
}

/// @nodoc
class __$$ServerResetsQuizImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerResetsQuizImpl>
    implements _$$ServerResetsQuizImplCopyWith<$Res> {
  __$$ServerResetsQuizImplCopyWithImpl(_$ServerResetsQuizImpl _value,
      $Res Function(_$ServerResetsQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ServerResetsQuizImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerResetsQuizImpl
    with DiagnosticableTreeMixin
    implements ServerResetsQuiz {
  const _$ServerResetsQuizImpl({required this.status, final String? $type})
      : $type = $type ?? 'ServerResetsQuiz';

  factory _$ServerResetsQuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerResetsQuizImplFromJson(json);

  @override
  final QuizStatus status;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverResetsQuiz(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverResetsQuiz'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerResetsQuizImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerResetsQuizImplCopyWith<_$ServerResetsQuizImpl> get copyWith =>
      __$$ServerResetsQuizImplCopyWithImpl<_$ServerResetsQuizImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(QuizStatus status) serverStartsQuiz,
    required TResult Function(QuizStatus status) serverFinishesQuiz,
    required TResult Function(QuizStatus status) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverResetsQuiz(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(QuizStatus status)? serverStartsQuiz,
    TResult? Function(QuizStatus status)? serverFinishesQuiz,
    TResult? Function(QuizStatus status)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
  }) {
    return serverResetsQuiz?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(QuizStatus status)? serverStartsQuiz,
    TResult Function(QuizStatus status)? serverFinishesQuiz,
    TResult Function(QuizStatus status)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverResetsQuiz != null) {
      return serverResetsQuiz(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerStartsQuiz value) serverStartsQuiz,
    required TResult Function(ServerFinishesQuiz value) serverFinishesQuiz,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverResetsQuiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult? Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverResetsQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverResetsQuiz != null) {
      return serverResetsQuiz(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerResetsQuizImplToJson(
      this,
    );
  }
}

abstract class ServerResetsQuiz implements ServerEvent {
  const factory ServerResetsQuiz({required final QuizStatus status}) =
      _$ServerResetsQuizImpl;

  factory ServerResetsQuiz.fromJson(Map<String, dynamic> json) =
      _$ServerResetsQuizImpl.fromJson;

  QuizStatus get status;
  @JsonKey(ignore: true)
  _$$ServerResetsQuizImplCopyWith<_$ServerResetsQuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerSetCurrentQuestionImplCopyWith<$Res> {
  factory _$$ServerSetCurrentQuestionImplCopyWith(
          _$ServerSetCurrentQuestionImpl value,
          $Res Function(_$ServerSetCurrentQuestionImpl) then) =
      __$$ServerSetCurrentQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Question question, List<Answer> answers});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$ServerSetCurrentQuestionImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerSetCurrentQuestionImpl>
    implements _$$ServerSetCurrentQuestionImplCopyWith<$Res> {
  __$$ServerSetCurrentQuestionImplCopyWithImpl(
      _$ServerSetCurrentQuestionImpl _value,
      $Res Function(_$ServerSetCurrentQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answers = null,
  }) {
    return _then(_$ServerSetCurrentQuestionImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSetCurrentQuestionImpl
    with DiagnosticableTreeMixin
    implements ServerSetCurrentQuestion {
  const _$ServerSetCurrentQuestionImpl(
      {required this.question,
      required final List<Answer> answers,
      final String? $type})
      : _answers = answers,
        $type = $type ?? 'ServerSetCurrentQuestion';

  factory _$ServerSetCurrentQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSetCurrentQuestionImplFromJson(json);

  @override
  final Question question;
  final List<Answer> _answers;
  @override
  List<Answer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverSetCurrentQuestion(question: $question, answers: $answers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverSetCurrentQuestion'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('answers', answers));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSetCurrentQuestionImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, question, const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSetCurrentQuestionImplCopyWith<_$ServerSetCurrentQuestionImpl>
      get copyWith => __$$ServerSetCurrentQuestionImplCopyWithImpl<
          _$ServerSetCurrentQuestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(QuizStatus status) serverStartsQuiz,
    required TResult Function(QuizStatus status) serverFinishesQuiz,
    required TResult Function(QuizStatus status) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverSetCurrentQuestion(question, answers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(QuizStatus status)? serverStartsQuiz,
    TResult? Function(QuizStatus status)? serverFinishesQuiz,
    TResult? Function(QuizStatus status)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
  }) {
    return serverSetCurrentQuestion?.call(question, answers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(QuizStatus status)? serverStartsQuiz,
    TResult Function(QuizStatus status)? serverFinishesQuiz,
    TResult Function(QuizStatus status)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverSetCurrentQuestion != null) {
      return serverSetCurrentQuestion(question, answers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerStartsQuiz value) serverStartsQuiz,
    required TResult Function(ServerFinishesQuiz value) serverFinishesQuiz,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverSetCurrentQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult? Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverSetCurrentQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverSetCurrentQuestion != null) {
      return serverSetCurrentQuestion(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSetCurrentQuestionImplToJson(
      this,
    );
  }
}

abstract class ServerSetCurrentQuestion implements ServerEvent {
  const factory ServerSetCurrentQuestion(
      {required final Question question,
      required final List<Answer> answers}) = _$ServerSetCurrentQuestionImpl;

  factory ServerSetCurrentQuestion.fromJson(Map<String, dynamic> json) =
      _$ServerSetCurrentQuestionImpl.fromJson;

  Question get question;
  List<Answer> get answers;
  @JsonKey(ignore: true)
  _$$ServerSetCurrentQuestionImplCopyWith<_$ServerSetCurrentQuestionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerTimeRemainingImplCopyWith<$Res> {
  factory _$$ServerTimeRemainingImplCopyWith(_$ServerTimeRemainingImpl value,
          $Res Function(_$ServerTimeRemainingImpl) then) =
      __$$ServerTimeRemainingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int timeRemaining});
}

/// @nodoc
class __$$ServerTimeRemainingImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerTimeRemainingImpl>
    implements _$$ServerTimeRemainingImplCopyWith<$Res> {
  __$$ServerTimeRemainingImplCopyWithImpl(_$ServerTimeRemainingImpl _value,
      $Res Function(_$ServerTimeRemainingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeRemaining = null,
  }) {
    return _then(_$ServerTimeRemainingImpl(
      timeRemaining: null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerTimeRemainingImpl
    with DiagnosticableTreeMixin
    implements ServerTimeRemaining {
  const _$ServerTimeRemainingImpl(
      {required this.timeRemaining, final String? $type})
      : $type = $type ?? 'ServerTimeRemaining';

  factory _$ServerTimeRemainingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerTimeRemainingImplFromJson(json);

  @override
  final int timeRemaining;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverTimeRemaining(timeRemaining: $timeRemaining)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverTimeRemaining'))
      ..add(DiagnosticsProperty('timeRemaining', timeRemaining));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerTimeRemainingImpl &&
            (identical(other.timeRemaining, timeRemaining) ||
                other.timeRemaining == timeRemaining));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timeRemaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerTimeRemainingImplCopyWith<_$ServerTimeRemainingImpl> get copyWith =>
      __$$ServerTimeRemainingImplCopyWithImpl<_$ServerTimeRemainingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(QuizStatus status) serverStartsQuiz,
    required TResult Function(QuizStatus status) serverFinishesQuiz,
    required TResult Function(QuizStatus status) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverTimeRemaining(timeRemaining);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(QuizStatus status)? serverStartsQuiz,
    TResult? Function(QuizStatus status)? serverFinishesQuiz,
    TResult? Function(QuizStatus status)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
  }) {
    return serverTimeRemaining?.call(timeRemaining);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(QuizStatus status)? serverStartsQuiz,
    TResult Function(QuizStatus status)? serverFinishesQuiz,
    TResult Function(QuizStatus status)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverTimeRemaining != null) {
      return serverTimeRemaining(timeRemaining);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerStartsQuiz value) serverStartsQuiz,
    required TResult Function(ServerFinishesQuiz value) serverFinishesQuiz,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverTimeRemaining(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult? Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverTimeRemaining?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverTimeRemaining != null) {
      return serverTimeRemaining(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerTimeRemainingImplToJson(
      this,
    );
  }
}

abstract class ServerTimeRemaining implements ServerEvent {
  const factory ServerTimeRemaining({required final int timeRemaining}) =
      _$ServerTimeRemainingImpl;

  factory ServerTimeRemaining.fromJson(Map<String, dynamic> json) =
      _$ServerTimeRemainingImpl.fromJson;

  int get timeRemaining;
  @JsonKey(ignore: true)
  _$$ServerTimeRemainingImplCopyWith<_$ServerTimeRemainingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerShowScoreImplCopyWith<$Res> {
  factory _$$ServerShowScoreImplCopyWith(_$ServerShowScoreImpl value,
          $Res Function(_$ServerShowScoreImpl) then) =
      __$$ServerShowScoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, int> scores});
}

/// @nodoc
class __$$ServerShowScoreImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerShowScoreImpl>
    implements _$$ServerShowScoreImplCopyWith<$Res> {
  __$$ServerShowScoreImplCopyWithImpl(
      _$ServerShowScoreImpl _value, $Res Function(_$ServerShowScoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scores = null,
  }) {
    return _then(_$ServerShowScoreImpl(
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerShowScoreImpl
    with DiagnosticableTreeMixin
    implements ServerShowScore {
  const _$ServerShowScoreImpl(
      {required final Map<String, int> scores, final String? $type})
      : _scores = scores,
        $type = $type ?? 'ServerShowScore';

  factory _$ServerShowScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerShowScoreImplFromJson(json);

  final Map<String, int> _scores;
  @override
  Map<String, int> get scores {
    if (_scores is EqualUnmodifiableMapView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_scores);
  }

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverShowScore(scores: $scores)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverShowScore'))
      ..add(DiagnosticsProperty('scores', scores));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerShowScoreImpl &&
            const DeepCollectionEquality().equals(other._scores, _scores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerShowScoreImplCopyWith<_$ServerShowScoreImpl> get copyWith =>
      __$$ServerShowScoreImplCopyWithImpl<_$ServerShowScoreImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(QuizStatus status) serverStartsQuiz,
    required TResult Function(QuizStatus status) serverFinishesQuiz,
    required TResult Function(QuizStatus status) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverShowScore(scores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(QuizStatus status)? serverStartsQuiz,
    TResult? Function(QuizStatus status)? serverFinishesQuiz,
    TResult? Function(QuizStatus status)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
  }) {
    return serverShowScore?.call(scores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(QuizStatus status)? serverStartsQuiz,
    TResult Function(QuizStatus status)? serverFinishesQuiz,
    TResult Function(QuizStatus status)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverShowScore != null) {
      return serverShowScore(scores);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerStartsQuiz value) serverStartsQuiz,
    required TResult Function(ServerFinishesQuiz value) serverFinishesQuiz,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverShowScore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult? Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverShowScore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverShowScore != null) {
      return serverShowScore(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerShowScoreImplToJson(
      this,
    );
  }
}

abstract class ServerShowScore implements ServerEvent {
  const factory ServerShowScore({required final Map<String, int> scores}) =
      _$ServerShowScoreImpl;

  factory ServerShowScore.fromJson(Map<String, dynamic> json) =
      _$ServerShowScoreImpl.fromJson;

  Map<String, int> get scores;
  @JsonKey(ignore: true)
  _$$ServerShowScoreImplCopyWith<_$ServerShowScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerTellsHowManyPeopleAnsweredImplCopyWith<$Res> {
  factory _$$ServerTellsHowManyPeopleAnsweredImplCopyWith(
          _$ServerTellsHowManyPeopleAnsweredImpl value,
          $Res Function(_$ServerTellsHowManyPeopleAnsweredImpl) then) =
      __$$ServerTellsHowManyPeopleAnsweredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int peopleAnswered});
}

/// @nodoc
class __$$ServerTellsHowManyPeopleAnsweredImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res,
        _$ServerTellsHowManyPeopleAnsweredImpl>
    implements _$$ServerTellsHowManyPeopleAnsweredImplCopyWith<$Res> {
  __$$ServerTellsHowManyPeopleAnsweredImplCopyWithImpl(
      _$ServerTellsHowManyPeopleAnsweredImpl _value,
      $Res Function(_$ServerTellsHowManyPeopleAnsweredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peopleAnswered = null,
  }) {
    return _then(_$ServerTellsHowManyPeopleAnsweredImpl(
      peopleAnswered: null == peopleAnswered
          ? _value.peopleAnswered
          : peopleAnswered // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerTellsHowManyPeopleAnsweredImpl
    with DiagnosticableTreeMixin
    implements ServerTellsHowManyPeopleAnswered {
  const _$ServerTellsHowManyPeopleAnsweredImpl(
      {required this.peopleAnswered, final String? $type})
      : $type = $type ?? 'ServerTellsHowManyPeopleAnswered';

  factory _$ServerTellsHowManyPeopleAnsweredImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerTellsHowManyPeopleAnsweredImplFromJson(json);

  @override
  final int peopleAnswered;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverTellsHowManyPeopleAnswered(peopleAnswered: $peopleAnswered)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ServerEvent.serverTellsHowManyPeopleAnswered'))
      ..add(DiagnosticsProperty('peopleAnswered', peopleAnswered));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerTellsHowManyPeopleAnsweredImpl &&
            (identical(other.peopleAnswered, peopleAnswered) ||
                other.peopleAnswered == peopleAnswered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, peopleAnswered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerTellsHowManyPeopleAnsweredImplCopyWith<
          _$ServerTellsHowManyPeopleAnsweredImpl>
      get copyWith => __$$ServerTellsHowManyPeopleAnsweredImplCopyWithImpl<
          _$ServerTellsHowManyPeopleAnsweredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(QuizStatus status) serverStartsQuiz,
    required TResult Function(QuizStatus status) serverFinishesQuiz,
    required TResult Function(QuizStatus status) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverTellsHowManyPeopleAnswered(peopleAnswered);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(QuizStatus status)? serverStartsQuiz,
    TResult? Function(QuizStatus status)? serverFinishesQuiz,
    TResult? Function(QuizStatus status)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
  }) {
    return serverTellsHowManyPeopleAnswered?.call(peopleAnswered);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(QuizStatus status)? serverStartsQuiz,
    TResult Function(QuizStatus status)? serverFinishesQuiz,
    TResult Function(QuizStatus status)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverTellsHowManyPeopleAnswered != null) {
      return serverTellsHowManyPeopleAnswered(peopleAnswered);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerStartsQuiz value) serverStartsQuiz,
    required TResult Function(ServerFinishesQuiz value) serverFinishesQuiz,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverTellsHowManyPeopleAnswered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult? Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
  }) {
    return serverTellsHowManyPeopleAnswered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerStartsQuiz value)? serverStartsQuiz,
    TResult Function(ServerFinishesQuiz value)? serverFinishesQuiz,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    required TResult orElse(),
  }) {
    if (serverTellsHowManyPeopleAnswered != null) {
      return serverTellsHowManyPeopleAnswered(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerTellsHowManyPeopleAnsweredImplToJson(
      this,
    );
  }
}

abstract class ServerTellsHowManyPeopleAnswered implements ServerEvent {
  const factory ServerTellsHowManyPeopleAnswered(
          {required final int peopleAnswered}) =
      _$ServerTellsHowManyPeopleAnsweredImpl;

  factory ServerTellsHowManyPeopleAnswered.fromJson(Map<String, dynamic> json) =
      _$ServerTellsHowManyPeopleAnsweredImpl.fromJson;

  int get peopleAnswered;
  @JsonKey(ignore: true)
  _$$ServerTellsHowManyPeopleAnsweredImplCopyWith<
          _$ServerTellsHowManyPeopleAnsweredImpl>
      get copyWith => throw _privateConstructorUsedError;
}

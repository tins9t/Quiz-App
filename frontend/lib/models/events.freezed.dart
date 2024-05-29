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
    case 'ClientWantsToResetQuiz':
      return ClientWantsToResetQuiz.fromJson(json);
    case 'ClientWantsToAnswerQuestion':
      return ClientWantsToAnswerQuestion.fromJson(json);
    case 'ClientWantsToKickAllUsers':
      return ClientWantsToKickAllUsers.fromJson(json);
    case 'ClientWantsToKickUserFromRoom':
      return clientWantsToKickUserFromRoom.fromJson(json);
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
  int get roomId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, String username)
        clientWantsToEnterRoom,
    required TResult Function(int roomId) clientWantsToResetQuiz,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId, String username)
        clientWantsToKickUserFromRoom,
    required TResult Function(
            String quizId, String username, int roomId, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int roomId)
        clientWantsToStartQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int roomId)? clientWantsToResetQuiz,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult? Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int roomId)? clientWantsToResetQuiz,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToResetQuiz value)
        clientWantsToResetQuiz,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(clientWantsToKickUserFromRoom value)
        clientWantsToKickUserFromRoom,
    required TResult Function(ClientWantsToSetupQuiz value)
        clientWantsToSetupQuiz,
    required TResult Function(ClientWantsToStartQuiz value)
        clientWantsToStartQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult? Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientEventCopyWith<ClientEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientEventCopyWith<$Res> {
  factory $ClientEventCopyWith(
          ClientEvent value, $Res Function(ClientEvent) then) =
      _$ClientEventCopyWithImpl<$Res, ClientEvent>;
  @useResult
  $Res call({int roomId});
}

/// @nodoc
class _$ClientEventCopyWithImpl<$Res, $Val extends ClientEvent>
    implements $ClientEventCopyWith<$Res> {
  _$ClientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToEnterRoomImplCopyWith<$Res>
    implements $ClientEventCopyWith<$Res> {
  factory _$$ClientWantsToEnterRoomImplCopyWith(
          _$ClientWantsToEnterRoomImpl value,
          $Res Function(_$ClientWantsToEnterRoomImpl) then) =
      __$$ClientWantsToEnterRoomImplCopyWithImpl<$Res>;
  @override
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
    required TResult Function(int roomId) clientWantsToResetQuiz,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId, String username)
        clientWantsToKickUserFromRoom,
    required TResult Function(
            String quizId, String username, int roomId, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int roomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToEnterRoom(roomId, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int roomId)? clientWantsToResetQuiz,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult? Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToEnterRoom?.call(roomId, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int roomId)? clientWantsToResetQuiz,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int roomId)?
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
    required TResult Function(ClientWantsToResetQuiz value)
        clientWantsToResetQuiz,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(clientWantsToKickUserFromRoom value)
        clientWantsToKickUserFromRoom,
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
    TResult? Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToEnterRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
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

  @override
  int get roomId;
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToEnterRoomImplCopyWith<_$ClientWantsToEnterRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToResetQuizImplCopyWith<$Res>
    implements $ClientEventCopyWith<$Res> {
  factory _$$ClientWantsToResetQuizImplCopyWith(
          _$ClientWantsToResetQuizImpl value,
          $Res Function(_$ClientWantsToResetQuizImpl) then) =
      __$$ClientWantsToResetQuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int roomId});
}

/// @nodoc
class __$$ClientWantsToResetQuizImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToResetQuizImpl>
    implements _$$ClientWantsToResetQuizImplCopyWith<$Res> {
  __$$ClientWantsToResetQuizImplCopyWithImpl(
      _$ClientWantsToResetQuizImpl _value,
      $Res Function(_$ClientWantsToResetQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$ClientWantsToResetQuizImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToResetQuizImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToResetQuiz {
  const _$ClientWantsToResetQuizImpl(
      {required this.roomId, final String? $type})
      : $type = $type ?? 'ClientWantsToResetQuiz';

  factory _$ClientWantsToResetQuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToResetQuizImplFromJson(json);

  @override
  final int roomId;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToResetQuiz(roomId: $roomId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToResetQuiz'))
      ..add(DiagnosticsProperty('roomId', roomId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToResetQuizImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToResetQuizImplCopyWith<_$ClientWantsToResetQuizImpl>
      get copyWith => __$$ClientWantsToResetQuizImplCopyWithImpl<
          _$ClientWantsToResetQuizImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, String username)
        clientWantsToEnterRoom,
    required TResult Function(int roomId) clientWantsToResetQuiz,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId, String username)
        clientWantsToKickUserFromRoom,
    required TResult Function(
            String quizId, String username, int roomId, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int roomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToResetQuiz(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int roomId)? clientWantsToResetQuiz,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult? Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToResetQuiz?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int roomId)? clientWantsToResetQuiz,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToResetQuiz != null) {
      return clientWantsToResetQuiz(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToResetQuiz value)
        clientWantsToResetQuiz,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(clientWantsToKickUserFromRoom value)
        clientWantsToKickUserFromRoom,
    required TResult Function(ClientWantsToSetupQuiz value)
        clientWantsToSetupQuiz,
    required TResult Function(ClientWantsToStartQuiz value)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToResetQuiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult? Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToResetQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToResetQuiz != null) {
      return clientWantsToResetQuiz(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToResetQuizImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToResetQuiz implements ClientEvent {
  const factory ClientWantsToResetQuiz({required final int roomId}) =
      _$ClientWantsToResetQuizImpl;

  factory ClientWantsToResetQuiz.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToResetQuizImpl.fromJson;

  @override
  int get roomId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToResetQuizImplCopyWith<_$ClientWantsToResetQuizImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToAnswerQuestionImplCopyWith<$Res>
    implements $ClientEventCopyWith<$Res> {
  factory _$$ClientWantsToAnswerQuestionImplCopyWith(
          _$ClientWantsToAnswerQuestionImpl value,
          $Res Function(_$ClientWantsToAnswerQuestionImpl) then) =
      __$$ClientWantsToAnswerQuestionImplCopyWithImpl<$Res>;
  @override
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
    required TResult Function(int roomId) clientWantsToResetQuiz,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId, String username)
        clientWantsToKickUserFromRoom,
    required TResult Function(
            String quizId, String username, int roomId, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int roomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToAnswerQuestion(answerId, username, roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int roomId)? clientWantsToResetQuiz,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult? Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToAnswerQuestion?.call(answerId, username, roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int roomId)? clientWantsToResetQuiz,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int roomId)?
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
    required TResult Function(ClientWantsToResetQuiz value)
        clientWantsToResetQuiz,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(clientWantsToKickUserFromRoom value)
        clientWantsToKickUserFromRoom,
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
    TResult? Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToAnswerQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
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
  @override
  int get roomId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToAnswerQuestionImplCopyWith<_$ClientWantsToAnswerQuestionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToKickAllUsersImplCopyWith<$Res>
    implements $ClientEventCopyWith<$Res> {
  factory _$$ClientWantsToKickAllUsersImplCopyWith(
          _$ClientWantsToKickAllUsersImpl value,
          $Res Function(_$ClientWantsToKickAllUsersImpl) then) =
      __$$ClientWantsToKickAllUsersImplCopyWithImpl<$Res>;
  @override
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
    required TResult Function(int roomId) clientWantsToResetQuiz,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId, String username)
        clientWantsToKickUserFromRoom,
    required TResult Function(
            String quizId, String username, int roomId, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int roomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToKickAllUsers(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int roomId)? clientWantsToResetQuiz,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult? Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToKickAllUsers?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int roomId)? clientWantsToResetQuiz,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int roomId)?
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
    required TResult Function(ClientWantsToResetQuiz value)
        clientWantsToResetQuiz,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(clientWantsToKickUserFromRoom value)
        clientWantsToKickUserFromRoom,
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
    TResult? Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToKickAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
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

  @override
  int get roomId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToKickAllUsersImplCopyWith<_$ClientWantsToKickAllUsersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$clientWantsToKickUserFromRoomImplCopyWith<$Res>
    implements $ClientEventCopyWith<$Res> {
  factory _$$clientWantsToKickUserFromRoomImplCopyWith(
          _$clientWantsToKickUserFromRoomImpl value,
          $Res Function(_$clientWantsToKickUserFromRoomImpl) then) =
      __$$clientWantsToKickUserFromRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int roomId, String username});
}

/// @nodoc
class __$$clientWantsToKickUserFromRoomImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$clientWantsToKickUserFromRoomImpl>
    implements _$$clientWantsToKickUserFromRoomImplCopyWith<$Res> {
  __$$clientWantsToKickUserFromRoomImplCopyWithImpl(
      _$clientWantsToKickUserFromRoomImpl _value,
      $Res Function(_$clientWantsToKickUserFromRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? username = null,
  }) {
    return _then(_$clientWantsToKickUserFromRoomImpl(
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
class _$clientWantsToKickUserFromRoomImpl
    with DiagnosticableTreeMixin
    implements clientWantsToKickUserFromRoom {
  const _$clientWantsToKickUserFromRoomImpl(
      {required this.roomId, required this.username, final String? $type})
      : $type = $type ?? 'ClientWantsToKickUserFromRoom';

  factory _$clientWantsToKickUserFromRoomImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$clientWantsToKickUserFromRoomImplFromJson(json);

  @override
  final int roomId;
  @override
  final String username;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToKickUserFromRoom(roomId: $roomId, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ClientEvent.clientWantsToKickUserFromRoom'))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$clientWantsToKickUserFromRoomImpl &&
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
  _$$clientWantsToKickUserFromRoomImplCopyWith<
          _$clientWantsToKickUserFromRoomImpl>
      get copyWith => __$$clientWantsToKickUserFromRoomImplCopyWithImpl<
          _$clientWantsToKickUserFromRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, String username)
        clientWantsToEnterRoom,
    required TResult Function(int roomId) clientWantsToResetQuiz,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId, String username)
        clientWantsToKickUserFromRoom,
    required TResult Function(
            String quizId, String username, int roomId, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int roomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToKickUserFromRoom(roomId, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int roomId)? clientWantsToResetQuiz,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult? Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToKickUserFromRoom?.call(roomId, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int roomId)? clientWantsToResetQuiz,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToKickUserFromRoom != null) {
      return clientWantsToKickUserFromRoom(roomId, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToResetQuiz value)
        clientWantsToResetQuiz,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(clientWantsToKickUserFromRoom value)
        clientWantsToKickUserFromRoom,
    required TResult Function(ClientWantsToSetupQuiz value)
        clientWantsToSetupQuiz,
    required TResult Function(ClientWantsToStartQuiz value)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToKickUserFromRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult? Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToKickUserFromRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToKickUserFromRoom != null) {
      return clientWantsToKickUserFromRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$clientWantsToKickUserFromRoomImplToJson(
      this,
    );
  }
}

abstract class clientWantsToKickUserFromRoom implements ClientEvent {
  const factory clientWantsToKickUserFromRoom(
      {required final int roomId,
      required final String username}) = _$clientWantsToKickUserFromRoomImpl;

  factory clientWantsToKickUserFromRoom.fromJson(Map<String, dynamic> json) =
      _$clientWantsToKickUserFromRoomImpl.fromJson;

  @override
  int get roomId;
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$clientWantsToKickUserFromRoomImplCopyWith<
          _$clientWantsToKickUserFromRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToSetupQuizImplCopyWith<$Res>
    implements $ClientEventCopyWith<$Res> {
  factory _$$ClientWantsToSetupQuizImplCopyWith(
          _$ClientWantsToSetupQuizImpl value,
          $Res Function(_$ClientWantsToSetupQuizImpl) then) =
      __$$ClientWantsToSetupQuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String quizId, String username, int roomId, int setupTimer});
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
    Object? roomId = null,
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
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
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
      required this.roomId,
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
  final int roomId;
  @override
  final int setupTimer;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToSetupQuiz(quizId: $quizId, username: $username, roomId: $roomId, setupTimer: $setupTimer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToSetupQuiz'))
      ..add(DiagnosticsProperty('quizId', quizId))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('roomId', roomId))
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
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.setupTimer, setupTimer) ||
                other.setupTimer == setupTimer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, quizId, username, roomId, setupTimer);

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
    required TResult Function(int roomId) clientWantsToResetQuiz,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId, String username)
        clientWantsToKickUserFromRoom,
    required TResult Function(
            String quizId, String username, int roomId, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int roomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToSetupQuiz(quizId, username, roomId, setupTimer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int roomId)? clientWantsToResetQuiz,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult? Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToSetupQuiz?.call(quizId, username, roomId, setupTimer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int roomId)? clientWantsToResetQuiz,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToSetupQuiz != null) {
      return clientWantsToSetupQuiz(quizId, username, roomId, setupTimer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToResetQuiz value)
        clientWantsToResetQuiz,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(clientWantsToKickUserFromRoom value)
        clientWantsToKickUserFromRoom,
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
    TResult? Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToSetupQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
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
      required final int roomId,
      required final int setupTimer}) = _$ClientWantsToSetupQuizImpl;

  factory ClientWantsToSetupQuiz.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToSetupQuizImpl.fromJson;

  String get quizId;
  String get username;
  @override
  int get roomId;
  int get setupTimer;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToSetupQuizImplCopyWith<_$ClientWantsToSetupQuizImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToStartQuizImplCopyWith<$Res>
    implements $ClientEventCopyWith<$Res> {
  factory _$$ClientWantsToStartQuizImplCopyWith(
          _$ClientWantsToStartQuizImpl value,
          $Res Function(_$ClientWantsToStartQuizImpl) then) =
      __$$ClientWantsToStartQuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String quizId, int roomId});
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
    Object? roomId = null,
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
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
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
      required this.roomId,
      final String? $type})
      : $type = $type ?? 'ClientWantsToStartQuiz';

  factory _$ClientWantsToStartQuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToStartQuizImplFromJson(json);

  @override
  final String username;
  @override
  final String quizId;
  @override
  final int roomId;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToStartQuiz(username: $username, quizId: $quizId, roomId: $roomId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToStartQuiz'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('quizId', quizId))
      ..add(DiagnosticsProperty('roomId', roomId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToStartQuizImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, quizId, roomId);

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
    required TResult Function(int roomId) clientWantsToResetQuiz,
    required TResult Function(int answerId, String username, int roomId)
        clientWantsToAnswerQuestion,
    required TResult Function(int roomId) clientWantsToKickAllUsers,
    required TResult Function(int roomId, String username)
        clientWantsToKickUserFromRoom,
    required TResult Function(
            String quizId, String username, int roomId, int setupTimer)
        clientWantsToSetupQuiz,
    required TResult Function(String username, String quizId, int roomId)
        clientWantsToStartQuiz,
  }) {
    return clientWantsToStartQuiz(username, quizId, roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult? Function(int roomId)? clientWantsToResetQuiz,
    TResult? Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult? Function(int roomId)? clientWantsToKickAllUsers,
    TResult? Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult? Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult? Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
  }) {
    return clientWantsToStartQuiz?.call(username, quizId, roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, String username)? clientWantsToEnterRoom,
    TResult Function(int roomId)? clientWantsToResetQuiz,
    TResult Function(int answerId, String username, int roomId)?
        clientWantsToAnswerQuestion,
    TResult Function(int roomId)? clientWantsToKickAllUsers,
    TResult Function(int roomId, String username)?
        clientWantsToKickUserFromRoom,
    TResult Function(
            String quizId, String username, int roomId, int setupTimer)?
        clientWantsToSetupQuiz,
    TResult Function(String username, String quizId, int roomId)?
        clientWantsToStartQuiz,
    required TResult orElse(),
  }) {
    if (clientWantsToStartQuiz != null) {
      return clientWantsToStartQuiz(username, quizId, roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToEnterRoom value)
        clientWantsToEnterRoom,
    required TResult Function(ClientWantsToResetQuiz value)
        clientWantsToResetQuiz,
    required TResult Function(ClientWantsToAnswerQuestion value)
        clientWantsToAnswerQuestion,
    required TResult Function(ClientWantsToKickAllUsers value)
        clientWantsToKickAllUsers,
    required TResult Function(clientWantsToKickUserFromRoom value)
        clientWantsToKickUserFromRoom,
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
    TResult? Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult? Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult? Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult? Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
    TResult? Function(ClientWantsToSetupQuiz value)? clientWantsToSetupQuiz,
    TResult? Function(ClientWantsToStartQuiz value)? clientWantsToStartQuiz,
  }) {
    return clientWantsToStartQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToEnterRoom value)? clientWantsToEnterRoom,
    TResult Function(ClientWantsToResetQuiz value)? clientWantsToResetQuiz,
    TResult Function(ClientWantsToAnswerQuestion value)?
        clientWantsToAnswerQuestion,
    TResult Function(ClientWantsToKickAllUsers value)?
        clientWantsToKickAllUsers,
    TResult Function(clientWantsToKickUserFromRoom value)?
        clientWantsToKickUserFromRoom,
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
      required final int roomId}) = _$ClientWantsToStartQuizImpl;

  factory ClientWantsToStartQuiz.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToStartQuizImpl.fromJson;

  String get username;
  String get quizId;
  @override
  int get roomId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToStartQuizImplCopyWith<_$ClientWantsToStartQuizImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerEvent _$ServerEventFromJson(Map<String, dynamic> json) {
  switch (json['eventType']) {
    case 'ServerAddsClientToRoom':
      return ServerAddsClientToRoom.fromJson(json);
    case 'ServerUserLeftRoom':
      return ServerUserLeftRoom.fromJson(json);
    case 'ServerRemovesClientFromRoom':
      return ServerRemovesClientFromRoom.fromJson(json);
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
    case 'ServerTellsUserJoinedRoom':
      return ServerTellsUserJoinedRoom.fromJson(json);
    case 'ServerCurrentQuestionInfo':
      return ServerCurrentQuestionInfo.fromJson(json);

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
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
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
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) {
    return serverAddsClientToRoom(roomId, liveConnections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) {
    return serverAddsClientToRoom?.call(roomId, liveConnections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
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
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) {
    return serverAddsClientToRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) {
    return serverAddsClientToRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
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
abstract class _$$ServerUserLeftRoomImplCopyWith<$Res> {
  factory _$$ServerUserLeftRoomImplCopyWith(_$ServerUserLeftRoomImpl value,
          $Res Function(_$ServerUserLeftRoomImpl) then) =
      __$$ServerUserLeftRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int roomId, String username});
}

/// @nodoc
class __$$ServerUserLeftRoomImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerUserLeftRoomImpl>
    implements _$$ServerUserLeftRoomImplCopyWith<$Res> {
  __$$ServerUserLeftRoomImplCopyWithImpl(_$ServerUserLeftRoomImpl _value,
      $Res Function(_$ServerUserLeftRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? username = null,
  }) {
    return _then(_$ServerUserLeftRoomImpl(
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
class _$ServerUserLeftRoomImpl
    with DiagnosticableTreeMixin
    implements ServerUserLeftRoom {
  const _$ServerUserLeftRoomImpl(
      {required this.roomId, required this.username, final String? $type})
      : $type = $type ?? 'ServerUserLeftRoom';

  factory _$ServerUserLeftRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerUserLeftRoomImplFromJson(json);

  @override
  final int roomId;
  @override
  final String username;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverUserLeftRoom(roomId: $roomId, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverUserLeftRoom'))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerUserLeftRoomImpl &&
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
  _$$ServerUserLeftRoomImplCopyWith<_$ServerUserLeftRoomImpl> get copyWith =>
      __$$ServerUserLeftRoomImplCopyWithImpl<_$ServerUserLeftRoomImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) {
    return serverUserLeftRoom(roomId, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) {
    return serverUserLeftRoom?.call(roomId, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
    required TResult orElse(),
  }) {
    if (serverUserLeftRoom != null) {
      return serverUserLeftRoom(roomId, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) {
    return serverUserLeftRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) {
    return serverUserLeftRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
    required TResult orElse(),
  }) {
    if (serverUserLeftRoom != null) {
      return serverUserLeftRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerUserLeftRoomImplToJson(
      this,
    );
  }
}

abstract class ServerUserLeftRoom implements ServerEvent {
  const factory ServerUserLeftRoom(
      {required final int roomId,
      required final String username}) = _$ServerUserLeftRoomImpl;

  factory ServerUserLeftRoom.fromJson(Map<String, dynamic> json) =
      _$ServerUserLeftRoomImpl.fromJson;

  int get roomId;
  String get username;
  @JsonKey(ignore: true)
  _$$ServerUserLeftRoomImplCopyWith<_$ServerUserLeftRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerRemovesClientFromRoomImplCopyWith<$Res> {
  factory _$$ServerRemovesClientFromRoomImplCopyWith(
          _$ServerRemovesClientFromRoomImpl value,
          $Res Function(_$ServerRemovesClientFromRoomImpl) then) =
      __$$ServerRemovesClientFromRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int roomId, String username, int liveConnections});
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
    Object? username = null,
    Object? liveConnections = null,
  }) {
    return _then(_$ServerRemovesClientFromRoomImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.username,
      required this.liveConnections,
      final String? $type})
      : $type = $type ?? 'ServerRemovesClientFromRoom';

  factory _$ServerRemovesClientFromRoomImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerRemovesClientFromRoomImplFromJson(json);

  @override
  final int roomId;
  @override
  final String username;
  @override
  final int liveConnections;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverRemovesClientFromRoom(roomId: $roomId, username: $username, liveConnections: $liveConnections)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ServerEvent.serverRemovesClientFromRoom'))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('liveConnections', liveConnections));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerRemovesClientFromRoomImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.liveConnections, liveConnections) ||
                other.liveConnections == liveConnections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, roomId, username, liveConnections);

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
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) {
    return serverRemovesClientFromRoom(roomId, username, liveConnections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) {
    return serverRemovesClientFromRoom?.call(roomId, username, liveConnections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
    required TResult orElse(),
  }) {
    if (serverRemovesClientFromRoom != null) {
      return serverRemovesClientFromRoom(roomId, username, liveConnections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) {
    return serverRemovesClientFromRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) {
    return serverRemovesClientFromRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
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
      required final String username,
      required final int liveConnections}) = _$ServerRemovesClientFromRoomImpl;

  factory ServerRemovesClientFromRoom.fromJson(Map<String, dynamic> json) =
      _$ServerRemovesClientFromRoomImpl.fromJson;

  int get roomId;
  String get username;
  int get liveConnections;
  @JsonKey(ignore: true)
  _$$ServerRemovesClientFromRoomImplCopyWith<_$ServerRemovesClientFromRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerResetsQuizImplCopyWith<$Res> {
  factory _$$ServerResetsQuizImplCopyWith(_$ServerResetsQuizImpl value,
          $Res Function(_$ServerResetsQuizImpl) then) =
      __$$ServerResetsQuizImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String quizId});
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
    Object? quizId = null,
  }) {
    return _then(_$ServerResetsQuizImpl(
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerResetsQuizImpl
    with DiagnosticableTreeMixin
    implements ServerResetsQuiz {
  const _$ServerResetsQuizImpl({required this.quizId, final String? $type})
      : $type = $type ?? 'ServerResetsQuiz';

  factory _$ServerResetsQuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerResetsQuizImplFromJson(json);

  @override
  final String quizId;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverResetsQuiz(quizId: $quizId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverResetsQuiz'))
      ..add(DiagnosticsProperty('quizId', quizId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerResetsQuizImpl &&
            (identical(other.quizId, quizId) || other.quizId == quizId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quizId);

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
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) {
    return serverResetsQuiz(quizId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) {
    return serverResetsQuiz?.call(quizId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
    required TResult orElse(),
  }) {
    if (serverResetsQuiz != null) {
      return serverResetsQuiz(quizId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) {
    return serverResetsQuiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) {
    return serverResetsQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
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
  const factory ServerResetsQuiz({required final String quizId}) =
      _$ServerResetsQuizImpl;

  factory ServerResetsQuiz.fromJson(Map<String, dynamic> json) =
      _$ServerResetsQuizImpl.fromJson;

  String get quizId;
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
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) {
    return serverSetCurrentQuestion(question, answers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) {
    return serverSetCurrentQuestion?.call(question, answers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
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
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) {
    return serverSetCurrentQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) {
    return serverSetCurrentQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
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
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) {
    return serverTimeRemaining(timeRemaining);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) {
    return serverTimeRemaining?.call(timeRemaining);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
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
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) {
    return serverTimeRemaining(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) {
    return serverTimeRemaining?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
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
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) {
    return serverShowScore(scores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) {
    return serverShowScore?.call(scores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
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
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) {
    return serverShowScore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) {
    return serverShowScore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
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
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) {
    return serverTellsHowManyPeopleAnswered(peopleAnswered);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) {
    return serverTellsHowManyPeopleAnswered?.call(peopleAnswered);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
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
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) {
    return serverTellsHowManyPeopleAnswered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) {
    return serverTellsHowManyPeopleAnswered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
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

/// @nodoc
abstract class _$$ServerTellsUserJoinedRoomImplCopyWith<$Res> {
  factory _$$ServerTellsUserJoinedRoomImplCopyWith(
          _$ServerTellsUserJoinedRoomImpl value,
          $Res Function(_$ServerTellsUserJoinedRoomImpl) then) =
      __$$ServerTellsUserJoinedRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> Usernames});
}

/// @nodoc
class __$$ServerTellsUserJoinedRoomImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerTellsUserJoinedRoomImpl>
    implements _$$ServerTellsUserJoinedRoomImplCopyWith<$Res> {
  __$$ServerTellsUserJoinedRoomImplCopyWithImpl(
      _$ServerTellsUserJoinedRoomImpl _value,
      $Res Function(_$ServerTellsUserJoinedRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Usernames = null,
  }) {
    return _then(_$ServerTellsUserJoinedRoomImpl(
      Usernames: null == Usernames
          ? _value._Usernames
          : Usernames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerTellsUserJoinedRoomImpl
    with DiagnosticableTreeMixin
    implements ServerTellsUserJoinedRoom {
  const _$ServerTellsUserJoinedRoomImpl(
      {required final List<String> Usernames, final String? $type})
      : _Usernames = Usernames,
        $type = $type ?? 'ServerTellsUserJoinedRoom';

  factory _$ServerTellsUserJoinedRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerTellsUserJoinedRoomImplFromJson(json);

  final List<String> _Usernames;
  @override
  List<String> get Usernames {
    if (_Usernames is EqualUnmodifiableListView) return _Usernames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Usernames);
  }

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverTellsUserJoinedRoom(Usernames: $Usernames)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ServerEvent.serverTellsUserJoinedRoom'))
      ..add(DiagnosticsProperty('Usernames', Usernames));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerTellsUserJoinedRoomImpl &&
            const DeepCollectionEquality()
                .equals(other._Usernames, _Usernames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_Usernames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerTellsUserJoinedRoomImplCopyWith<_$ServerTellsUserJoinedRoomImpl>
      get copyWith => __$$ServerTellsUserJoinedRoomImplCopyWithImpl<
          _$ServerTellsUserJoinedRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) {
    return serverTellsUserJoinedRoom(Usernames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) {
    return serverTellsUserJoinedRoom?.call(Usernames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
    required TResult orElse(),
  }) {
    if (serverTellsUserJoinedRoom != null) {
      return serverTellsUserJoinedRoom(Usernames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) {
    return serverTellsUserJoinedRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) {
    return serverTellsUserJoinedRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
    required TResult orElse(),
  }) {
    if (serverTellsUserJoinedRoom != null) {
      return serverTellsUserJoinedRoom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerTellsUserJoinedRoomImplToJson(
      this,
    );
  }
}

abstract class ServerTellsUserJoinedRoom implements ServerEvent {
  const factory ServerTellsUserJoinedRoom(
          {required final List<String> Usernames}) =
      _$ServerTellsUserJoinedRoomImpl;

  factory ServerTellsUserJoinedRoom.fromJson(Map<String, dynamic> json) =
      _$ServerTellsUserJoinedRoomImpl.fromJson;

  List<String> get Usernames;
  @JsonKey(ignore: true)
  _$$ServerTellsUserJoinedRoomImplCopyWith<_$ServerTellsUserJoinedRoomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerCurrentQuestionInfoImplCopyWith<$Res> {
  factory _$$ServerCurrentQuestionInfoImplCopyWith(
          _$ServerCurrentQuestionInfoImpl value,
          $Res Function(_$ServerCurrentQuestionInfoImpl) then) =
      __$$ServerCurrentQuestionInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentQuestionIndex, int totalQuestions});
}

/// @nodoc
class __$$ServerCurrentQuestionInfoImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerCurrentQuestionInfoImpl>
    implements _$$ServerCurrentQuestionInfoImplCopyWith<$Res> {
  __$$ServerCurrentQuestionInfoImplCopyWithImpl(
      _$ServerCurrentQuestionInfoImpl _value,
      $Res Function(_$ServerCurrentQuestionInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentQuestionIndex = null,
    Object? totalQuestions = null,
  }) {
    return _then(_$ServerCurrentQuestionInfoImpl(
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerCurrentQuestionInfoImpl
    with DiagnosticableTreeMixin
    implements ServerCurrentQuestionInfo {
  const _$ServerCurrentQuestionInfoImpl(
      {required this.currentQuestionIndex,
      required this.totalQuestions,
      final String? $type})
      : $type = $type ?? 'ServerCurrentQuestionInfo';

  factory _$ServerCurrentQuestionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerCurrentQuestionInfoImplFromJson(json);

  @override
  final int currentQuestionIndex;
  @override
  final int totalQuestions;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverCurrentQuestionInfo(currentQuestionIndex: $currentQuestionIndex, totalQuestions: $totalQuestions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ServerEvent.serverCurrentQuestionInfo'))
      ..add(DiagnosticsProperty('currentQuestionIndex', currentQuestionIndex))
      ..add(DiagnosticsProperty('totalQuestions', totalQuestions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerCurrentQuestionInfoImpl &&
            (identical(other.currentQuestionIndex, currentQuestionIndex) ||
                other.currentQuestionIndex == currentQuestionIndex) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentQuestionIndex, totalQuestions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerCurrentQuestionInfoImplCopyWith<_$ServerCurrentQuestionInfoImpl>
      get copyWith => __$$ServerCurrentQuestionInfoImplCopyWithImpl<
          _$ServerCurrentQuestionInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int roomId, int liveConnections)
        serverAddsClientToRoom,
    required TResult Function(int roomId, String username) serverUserLeftRoom,
    required TResult Function(int roomId, String username, int liveConnections)
        serverRemovesClientFromRoom,
    required TResult Function(String quizId) serverResetsQuiz,
    required TResult Function(Question question, List<Answer> answers)
        serverSetCurrentQuestion,
    required TResult Function(int timeRemaining) serverTimeRemaining,
    required TResult Function(Map<String, int> scores) serverShowScore,
    required TResult Function(int peopleAnswered)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(List<String> Usernames) serverTellsUserJoinedRoom,
    required TResult Function(int currentQuestionIndex, int totalQuestions)
        serverCurrentQuestionInfo,
  }) {
    return serverCurrentQuestionInfo(currentQuestionIndex, totalQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult? Function(int roomId, String username)? serverUserLeftRoom,
    TResult? Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult? Function(String quizId)? serverResetsQuiz,
    TResult? Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult? Function(int timeRemaining)? serverTimeRemaining,
    TResult? Function(Map<String, int> scores)? serverShowScore,
    TResult? Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult? Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult? Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
  }) {
    return serverCurrentQuestionInfo?.call(
        currentQuestionIndex, totalQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int roomId, int liveConnections)? serverAddsClientToRoom,
    TResult Function(int roomId, String username)? serverUserLeftRoom,
    TResult Function(int roomId, String username, int liveConnections)?
        serverRemovesClientFromRoom,
    TResult Function(String quizId)? serverResetsQuiz,
    TResult Function(Question question, List<Answer> answers)?
        serverSetCurrentQuestion,
    TResult Function(int timeRemaining)? serverTimeRemaining,
    TResult Function(Map<String, int> scores)? serverShowScore,
    TResult Function(int peopleAnswered)? serverTellsHowManyPeopleAnswered,
    TResult Function(List<String> Usernames)? serverTellsUserJoinedRoom,
    TResult Function(int currentQuestionIndex, int totalQuestions)?
        serverCurrentQuestionInfo,
    required TResult orElse(),
  }) {
    if (serverCurrentQuestionInfo != null) {
      return serverCurrentQuestionInfo(currentQuestionIndex, totalQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAddsClientToRoom value)
        serverAddsClientToRoom,
    required TResult Function(ServerUserLeftRoom value) serverUserLeftRoom,
    required TResult Function(ServerRemovesClientFromRoom value)
        serverRemovesClientFromRoom,
    required TResult Function(ServerResetsQuiz value) serverResetsQuiz,
    required TResult Function(ServerSetCurrentQuestion value)
        serverSetCurrentQuestion,
    required TResult Function(ServerTimeRemaining value) serverTimeRemaining,
    required TResult Function(ServerShowScore value) serverShowScore,
    required TResult Function(ServerTellsHowManyPeopleAnswered value)
        serverTellsHowManyPeopleAnswered,
    required TResult Function(ServerTellsUserJoinedRoom value)
        serverTellsUserJoinedRoom,
    required TResult Function(ServerCurrentQuestionInfo value)
        serverCurrentQuestionInfo,
  }) {
    return serverCurrentQuestionInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult? Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult? Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult? Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult? Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult? Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult? Function(ServerShowScore value)? serverShowScore,
    TResult? Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult? Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult? Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
  }) {
    return serverCurrentQuestionInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAddsClientToRoom value)? serverAddsClientToRoom,
    TResult Function(ServerUserLeftRoom value)? serverUserLeftRoom,
    TResult Function(ServerRemovesClientFromRoom value)?
        serverRemovesClientFromRoom,
    TResult Function(ServerResetsQuiz value)? serverResetsQuiz,
    TResult Function(ServerSetCurrentQuestion value)? serverSetCurrentQuestion,
    TResult Function(ServerTimeRemaining value)? serverTimeRemaining,
    TResult Function(ServerShowScore value)? serverShowScore,
    TResult Function(ServerTellsHowManyPeopleAnswered value)?
        serverTellsHowManyPeopleAnswered,
    TResult Function(ServerTellsUserJoinedRoom value)?
        serverTellsUserJoinedRoom,
    TResult Function(ServerCurrentQuestionInfo value)?
        serverCurrentQuestionInfo,
    required TResult orElse(),
  }) {
    if (serverCurrentQuestionInfo != null) {
      return serverCurrentQuestionInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerCurrentQuestionInfoImplToJson(
      this,
    );
  }
}

abstract class ServerCurrentQuestionInfo implements ServerEvent {
  const factory ServerCurrentQuestionInfo(
      {required final int currentQuestionIndex,
      required final int totalQuestions}) = _$ServerCurrentQuestionInfoImpl;

  factory ServerCurrentQuestionInfo.fromJson(Map<String, dynamic> json) =
      _$ServerCurrentQuestionInfoImpl.fromJson;

  int get currentQuestionIndex;
  int get totalQuestions;
  @JsonKey(ignore: true)
  _$$ServerCurrentQuestionInfoImplCopyWith<_$ServerCurrentQuestionInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

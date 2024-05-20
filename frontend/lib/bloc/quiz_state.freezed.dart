// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectedRoom {
  int get roomId => throw _privateConstructorUsedError;
  int get numberOfConnections => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectedRoomCopyWith<ConnectedRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectedRoomCopyWith<$Res> {
  factory $ConnectedRoomCopyWith(
          ConnectedRoom value, $Res Function(ConnectedRoom) then) =
      _$ConnectedRoomCopyWithImpl<$Res, ConnectedRoom>;
  @useResult
  $Res call({int roomId, int numberOfConnections});
}

/// @nodoc
class _$ConnectedRoomCopyWithImpl<$Res, $Val extends ConnectedRoom>
    implements $ConnectedRoomCopyWith<$Res> {
  _$ConnectedRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? numberOfConnections = null,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfConnections: null == numberOfConnections
          ? _value.numberOfConnections
          : numberOfConnections // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectedRoomImplCopyWith<$Res>
    implements $ConnectedRoomCopyWith<$Res> {
  factory _$$ConnectedRoomImplCopyWith(
          _$ConnectedRoomImpl value, $Res Function(_$ConnectedRoomImpl) then) =
      __$$ConnectedRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int roomId, int numberOfConnections});
}

/// @nodoc
class __$$ConnectedRoomImplCopyWithImpl<$Res>
    extends _$ConnectedRoomCopyWithImpl<$Res, _$ConnectedRoomImpl>
    implements _$$ConnectedRoomImplCopyWith<$Res> {
  __$$ConnectedRoomImplCopyWithImpl(
      _$ConnectedRoomImpl _value, $Res Function(_$ConnectedRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? numberOfConnections = null,
  }) {
    return _then(_$ConnectedRoomImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfConnections: null == numberOfConnections
          ? _value.numberOfConnections
          : numberOfConnections // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ConnectedRoomImpl implements _ConnectedRoom {
  const _$ConnectedRoomImpl(
      {required this.roomId, required this.numberOfConnections});

  @override
  final int roomId;
  @override
  final int numberOfConnections;

  @override
  String toString() {
    return 'ConnectedRoom(roomId: $roomId, numberOfConnections: $numberOfConnections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectedRoomImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.numberOfConnections, numberOfConnections) ||
                other.numberOfConnections == numberOfConnections));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, numberOfConnections);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectedRoomImplCopyWith<_$ConnectedRoomImpl> get copyWith =>
      __$$ConnectedRoomImplCopyWithImpl<_$ConnectedRoomImpl>(this, _$identity);
}

abstract class _ConnectedRoom implements ConnectedRoom {
  const factory _ConnectedRoom(
      {required final int roomId,
      required final int numberOfConnections}) = _$ConnectedRoomImpl;

  @override
  int get roomId;
  @override
  int get numberOfConnections;
  @override
  @JsonKey(ignore: true)
  _$$ConnectedRoomImplCopyWith<_$ConnectedRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizState {
  List<ConnectedRoom> get connectedRooms => throw _privateConstructorUsedError;
  Question get currentQuestion => throw _privateConstructorUsedError;
  List<Answer> get selectedAnswers => throw _privateConstructorUsedError;
  List<Answer> get answersForCurrentQuestion =>
      throw _privateConstructorUsedError;
  QuizStatus get status => throw _privateConstructorUsedError;
  int get timeRemaining => throw _privateConstructorUsedError;
  Map<String, int> get scores =>
      throw _privateConstructorUsedError; // Changed from int score to Map<String, int> scores
  int get peopleAnswered => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call(
      {List<ConnectedRoom> connectedRooms,
      Question currentQuestion,
      List<Answer> selectedAnswers,
      List<Answer> answersForCurrentQuestion,
      QuizStatus status,
      int timeRemaining,
      Map<String, int> scores,
      int peopleAnswered});

  $QuestionCopyWith<$Res> get currentQuestion;
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectedRooms = null,
    Object? currentQuestion = null,
    Object? selectedAnswers = null,
    Object? answersForCurrentQuestion = null,
    Object? status = null,
    Object? timeRemaining = null,
    Object? scores = null,
    Object? peopleAnswered = null,
  }) {
    return _then(_value.copyWith(
      connectedRooms: null == connectedRooms
          ? _value.connectedRooms
          : connectedRooms // ignore: cast_nullable_to_non_nullable
              as List<ConnectedRoom>,
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as Question,
      selectedAnswers: null == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      answersForCurrentQuestion: null == answersForCurrentQuestion
          ? _value.answersForCurrentQuestion
          : answersForCurrentQuestion // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
      timeRemaining: null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      peopleAnswered: null == peopleAnswered
          ? _value.peopleAnswered
          : peopleAnswered // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res> get currentQuestion {
    return $QuestionCopyWith<$Res>(_value.currentQuestion, (value) {
      return _then(_value.copyWith(currentQuestion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuizStateImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$QuizStateImplCopyWith(
          _$QuizStateImpl value, $Res Function(_$QuizStateImpl) then) =
      __$$QuizStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ConnectedRoom> connectedRooms,
      Question currentQuestion,
      List<Answer> selectedAnswers,
      List<Answer> answersForCurrentQuestion,
      QuizStatus status,
      int timeRemaining,
      Map<String, int> scores,
      int peopleAnswered});

  @override
  $QuestionCopyWith<$Res> get currentQuestion;
}

/// @nodoc
class __$$QuizStateImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateImpl>
    implements _$$QuizStateImplCopyWith<$Res> {
  __$$QuizStateImplCopyWithImpl(
      _$QuizStateImpl _value, $Res Function(_$QuizStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectedRooms = null,
    Object? currentQuestion = null,
    Object? selectedAnswers = null,
    Object? answersForCurrentQuestion = null,
    Object? status = null,
    Object? timeRemaining = null,
    Object? scores = null,
    Object? peopleAnswered = null,
  }) {
    return _then(_$QuizStateImpl(
      connectedRooms: null == connectedRooms
          ? _value._connectedRooms
          : connectedRooms // ignore: cast_nullable_to_non_nullable
              as List<ConnectedRoom>,
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as Question,
      selectedAnswers: null == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      answersForCurrentQuestion: null == answersForCurrentQuestion
          ? _value._answersForCurrentQuestion
          : answersForCurrentQuestion // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
      timeRemaining: null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      peopleAnswered: null == peopleAnswered
          ? _value.peopleAnswered
          : peopleAnswered // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuizStateImpl implements _QuizState {
  const _$QuizStateImpl(
      {required final List<ConnectedRoom> connectedRooms,
      required this.currentQuestion,
      required final List<Answer> selectedAnswers,
      required final List<Answer> answersForCurrentQuestion,
      required this.status,
      required this.timeRemaining,
      required final Map<String, int> scores,
      required this.peopleAnswered})
      : _connectedRooms = connectedRooms,
        _selectedAnswers = selectedAnswers,
        _answersForCurrentQuestion = answersForCurrentQuestion,
        _scores = scores;

  final List<ConnectedRoom> _connectedRooms;
  @override
  List<ConnectedRoom> get connectedRooms {
    if (_connectedRooms is EqualUnmodifiableListView) return _connectedRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectedRooms);
  }

  @override
  final Question currentQuestion;
  final List<Answer> _selectedAnswers;
  @override
  List<Answer> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableListView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedAnswers);
  }

  final List<Answer> _answersForCurrentQuestion;
  @override
  List<Answer> get answersForCurrentQuestion {
    if (_answersForCurrentQuestion is EqualUnmodifiableListView)
      return _answersForCurrentQuestion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answersForCurrentQuestion);
  }

  @override
  final QuizStatus status;
  @override
  final int timeRemaining;
  final Map<String, int> _scores;
  @override
  Map<String, int> get scores {
    if (_scores is EqualUnmodifiableMapView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_scores);
  }

// Changed from int score to Map<String, int> scores
  @override
  final int peopleAnswered;

  @override
  String toString() {
    return 'QuizState(connectedRooms: $connectedRooms, currentQuestion: $currentQuestion, selectedAnswers: $selectedAnswers, answersForCurrentQuestion: $answersForCurrentQuestion, status: $status, timeRemaining: $timeRemaining, scores: $scores, peopleAnswered: $peopleAnswered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateImpl &&
            const DeepCollectionEquality()
                .equals(other._connectedRooms, _connectedRooms) &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers) &&
            const DeepCollectionEquality().equals(
                other._answersForCurrentQuestion, _answersForCurrentQuestion) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timeRemaining, timeRemaining) ||
                other.timeRemaining == timeRemaining) &&
            const DeepCollectionEquality().equals(other._scores, _scores) &&
            (identical(other.peopleAnswered, peopleAnswered) ||
                other.peopleAnswered == peopleAnswered));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_connectedRooms),
      currentQuestion,
      const DeepCollectionEquality().hash(_selectedAnswers),
      const DeepCollectionEquality().hash(_answersForCurrentQuestion),
      status,
      timeRemaining,
      const DeepCollectionEquality().hash(_scores),
      peopleAnswered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      __$$QuizStateImplCopyWithImpl<_$QuizStateImpl>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState(
      {required final List<ConnectedRoom> connectedRooms,
      required final Question currentQuestion,
      required final List<Answer> selectedAnswers,
      required final List<Answer> answersForCurrentQuestion,
      required final QuizStatus status,
      required final int timeRemaining,
      required final Map<String, int> scores,
      required final int peopleAnswered}) = _$QuizStateImpl;

  @override
  List<ConnectedRoom> get connectedRooms;
  @override
  Question get currentQuestion;
  @override
  List<Answer> get selectedAnswers;
  @override
  List<Answer> get answersForCurrentQuestion;
  @override
  QuizStatus get status;
  @override
  int get timeRemaining;
  @override
  Map<String, int> get scores;
  @override // Changed from int score to Map<String, int> scores
  int get peopleAnswered;
  @override
  @JsonKey(ignore: true)
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

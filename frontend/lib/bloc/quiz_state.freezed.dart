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
  List<Answer> get answersForCurrentQuestion =>
      throw _privateConstructorUsedError;
  List<Answer> get selectedAnswers => throw _privateConstructorUsedError;
  List<String> get users => throw _privateConstructorUsedError;
  Map<String, int> get scores => throw _privateConstructorUsedError;
  Question get currentQuestion => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get timeRemaining => throw _privateConstructorUsedError;
  int get peopleAnswered => throw _privateConstructorUsedError;
  int get roomId => throw _privateConstructorUsedError;
  bool get showScore => throw _privateConstructorUsedError;
  bool get answerButtonPressed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ConnectedRoom> connectedRooms,
            List<Answer> answersForCurrentQuestion,
            List<Answer> selectedAnswers,
            List<String> users,
            Map<String, int> scores,
            Question currentQuestion,
            String username,
            int timeRemaining,
            int peopleAnswered,
            int roomId,
            bool showScore,
            bool answerButtonPressed)
        quizScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ConnectedRoom> connectedRooms,
            List<Answer> answersForCurrentQuestion,
            List<Answer> selectedAnswers,
            List<String> users,
            Map<String, int> scores,
            Question currentQuestion,
            String username,
            int timeRemaining,
            int peopleAnswered,
            int roomId,
            bool showScore,
            bool answerButtonPressed)?
        quizScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ConnectedRoom> connectedRooms,
            List<Answer> answersForCurrentQuestion,
            List<Answer> selectedAnswers,
            List<String> users,
            Map<String, int> scores,
            Question currentQuestion,
            String username,
            int timeRemaining,
            int peopleAnswered,
            int roomId,
            bool showScore,
            bool answerButtonPressed)?
        quizScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizScreenState value) quizScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizScreenState value)? quizScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizScreenState value)? quizScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
      List<Answer> answersForCurrentQuestion,
      List<Answer> selectedAnswers,
      List<String> users,
      Map<String, int> scores,
      Question currentQuestion,
      String username,
      int timeRemaining,
      int peopleAnswered,
      int roomId,
      bool showScore,
      bool answerButtonPressed});

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
    Object? answersForCurrentQuestion = null,
    Object? selectedAnswers = null,
    Object? users = null,
    Object? scores = null,
    Object? currentQuestion = null,
    Object? username = null,
    Object? timeRemaining = null,
    Object? peopleAnswered = null,
    Object? roomId = null,
    Object? showScore = null,
    Object? answerButtonPressed = null,
  }) {
    return _then(_value.copyWith(
      connectedRooms: null == connectedRooms
          ? _value.connectedRooms
          : connectedRooms // ignore: cast_nullable_to_non_nullable
              as List<ConnectedRoom>,
      answersForCurrentQuestion: null == answersForCurrentQuestion
          ? _value.answersForCurrentQuestion
          : answersForCurrentQuestion // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      selectedAnswers: null == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as Question,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      timeRemaining: null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
      peopleAnswered: null == peopleAnswered
          ? _value.peopleAnswered
          : peopleAnswered // ignore: cast_nullable_to_non_nullable
              as int,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      showScore: null == showScore
          ? _value.showScore
          : showScore // ignore: cast_nullable_to_non_nullable
              as bool,
      answerButtonPressed: null == answerButtonPressed
          ? _value.answerButtonPressed
          : answerButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$QuizScreenStateImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$QuizScreenStateImplCopyWith(_$QuizScreenStateImpl value,
          $Res Function(_$QuizScreenStateImpl) then) =
      __$$QuizScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ConnectedRoom> connectedRooms,
      List<Answer> answersForCurrentQuestion,
      List<Answer> selectedAnswers,
      List<String> users,
      Map<String, int> scores,
      Question currentQuestion,
      String username,
      int timeRemaining,
      int peopleAnswered,
      int roomId,
      bool showScore,
      bool answerButtonPressed});

  @override
  $QuestionCopyWith<$Res> get currentQuestion;
}

/// @nodoc
class __$$QuizScreenStateImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizScreenStateImpl>
    implements _$$QuizScreenStateImplCopyWith<$Res> {
  __$$QuizScreenStateImplCopyWithImpl(
      _$QuizScreenStateImpl _value, $Res Function(_$QuizScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectedRooms = null,
    Object? answersForCurrentQuestion = null,
    Object? selectedAnswers = null,
    Object? users = null,
    Object? scores = null,
    Object? currentQuestion = null,
    Object? username = null,
    Object? timeRemaining = null,
    Object? peopleAnswered = null,
    Object? roomId = null,
    Object? showScore = null,
    Object? answerButtonPressed = null,
  }) {
    return _then(_$QuizScreenStateImpl(
      connectedRooms: null == connectedRooms
          ? _value._connectedRooms
          : connectedRooms // ignore: cast_nullable_to_non_nullable
              as List<ConnectedRoom>,
      answersForCurrentQuestion: null == answersForCurrentQuestion
          ? _value._answersForCurrentQuestion
          : answersForCurrentQuestion // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      selectedAnswers: null == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as Question,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      timeRemaining: null == timeRemaining
          ? _value.timeRemaining
          : timeRemaining // ignore: cast_nullable_to_non_nullable
              as int,
      peopleAnswered: null == peopleAnswered
          ? _value.peopleAnswered
          : peopleAnswered // ignore: cast_nullable_to_non_nullable
              as int,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      showScore: null == showScore
          ? _value.showScore
          : showScore // ignore: cast_nullable_to_non_nullable
              as bool,
      answerButtonPressed: null == answerButtonPressed
          ? _value.answerButtonPressed
          : answerButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuizScreenStateImpl implements QuizScreenState {
  const _$QuizScreenStateImpl(
      {required final List<ConnectedRoom> connectedRooms,
      required final List<Answer> answersForCurrentQuestion,
      required final List<Answer> selectedAnswers,
      required final List<String> users,
      required final Map<String, int> scores,
      required this.currentQuestion,
      required this.username,
      required this.timeRemaining,
      required this.peopleAnswered,
      required this.roomId,
      required this.showScore,
      required this.answerButtonPressed})
      : _connectedRooms = connectedRooms,
        _answersForCurrentQuestion = answersForCurrentQuestion,
        _selectedAnswers = selectedAnswers,
        _users = users,
        _scores = scores;

  final List<ConnectedRoom> _connectedRooms;
  @override
  List<ConnectedRoom> get connectedRooms {
    if (_connectedRooms is EqualUnmodifiableListView) return _connectedRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectedRooms);
  }

  final List<Answer> _answersForCurrentQuestion;
  @override
  List<Answer> get answersForCurrentQuestion {
    if (_answersForCurrentQuestion is EqualUnmodifiableListView)
      return _answersForCurrentQuestion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answersForCurrentQuestion);
  }

  final List<Answer> _selectedAnswers;
  @override
  List<Answer> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableListView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedAnswers);
  }

  final List<String> _users;
  @override
  List<String> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final Map<String, int> _scores;
  @override
  Map<String, int> get scores {
    if (_scores is EqualUnmodifiableMapView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_scores);
  }

  @override
  final Question currentQuestion;
  @override
  final String username;
  @override
  final int timeRemaining;
  @override
  final int peopleAnswered;
  @override
  final int roomId;
  @override
  final bool showScore;
  @override
  final bool answerButtonPressed;

  @override
  String toString() {
    return 'QuizState.quizScreen(connectedRooms: $connectedRooms, answersForCurrentQuestion: $answersForCurrentQuestion, selectedAnswers: $selectedAnswers, users: $users, scores: $scores, currentQuestion: $currentQuestion, username: $username, timeRemaining: $timeRemaining, peopleAnswered: $peopleAnswered, roomId: $roomId, showScore: $showScore, answerButtonPressed: $answerButtonPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._connectedRooms, _connectedRooms) &&
            const DeepCollectionEquality().equals(
                other._answersForCurrentQuestion, _answersForCurrentQuestion) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._scores, _scores) &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.timeRemaining, timeRemaining) ||
                other.timeRemaining == timeRemaining) &&
            (identical(other.peopleAnswered, peopleAnswered) ||
                other.peopleAnswered == peopleAnswered) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.showScore, showScore) ||
                other.showScore == showScore) &&
            (identical(other.answerButtonPressed, answerButtonPressed) ||
                other.answerButtonPressed == answerButtonPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_connectedRooms),
      const DeepCollectionEquality().hash(_answersForCurrentQuestion),
      const DeepCollectionEquality().hash(_selectedAnswers),
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_scores),
      currentQuestion,
      username,
      timeRemaining,
      peopleAnswered,
      roomId,
      showScore,
      answerButtonPressed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizScreenStateImplCopyWith<_$QuizScreenStateImpl> get copyWith =>
      __$$QuizScreenStateImplCopyWithImpl<_$QuizScreenStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ConnectedRoom> connectedRooms,
            List<Answer> answersForCurrentQuestion,
            List<Answer> selectedAnswers,
            List<String> users,
            Map<String, int> scores,
            Question currentQuestion,
            String username,
            int timeRemaining,
            int peopleAnswered,
            int roomId,
            bool showScore,
            bool answerButtonPressed)
        quizScreen,
  }) {
    return quizScreen(
        connectedRooms,
        answersForCurrentQuestion,
        selectedAnswers,
        users,
        scores,
        currentQuestion,
        username,
        timeRemaining,
        peopleAnswered,
        roomId,
        showScore,
        answerButtonPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ConnectedRoom> connectedRooms,
            List<Answer> answersForCurrentQuestion,
            List<Answer> selectedAnswers,
            List<String> users,
            Map<String, int> scores,
            Question currentQuestion,
            String username,
            int timeRemaining,
            int peopleAnswered,
            int roomId,
            bool showScore,
            bool answerButtonPressed)?
        quizScreen,
  }) {
    return quizScreen?.call(
        connectedRooms,
        answersForCurrentQuestion,
        selectedAnswers,
        users,
        scores,
        currentQuestion,
        username,
        timeRemaining,
        peopleAnswered,
        roomId,
        showScore,
        answerButtonPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ConnectedRoom> connectedRooms,
            List<Answer> answersForCurrentQuestion,
            List<Answer> selectedAnswers,
            List<String> users,
            Map<String, int> scores,
            Question currentQuestion,
            String username,
            int timeRemaining,
            int peopleAnswered,
            int roomId,
            bool showScore,
            bool answerButtonPressed)?
        quizScreen,
    required TResult orElse(),
  }) {
    if (quizScreen != null) {
      return quizScreen(
          connectedRooms,
          answersForCurrentQuestion,
          selectedAnswers,
          users,
          scores,
          currentQuestion,
          username,
          timeRemaining,
          peopleAnswered,
          roomId,
          showScore,
          answerButtonPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizScreenState value) quizScreen,
  }) {
    return quizScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizScreenState value)? quizScreen,
  }) {
    return quizScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizScreenState value)? quizScreen,
    required TResult orElse(),
  }) {
    if (quizScreen != null) {
      return quizScreen(this);
    }
    return orElse();
  }
}

abstract class QuizScreenState implements QuizState {
  const factory QuizScreenState(
      {required final List<ConnectedRoom> connectedRooms,
      required final List<Answer> answersForCurrentQuestion,
      required final List<Answer> selectedAnswers,
      required final List<String> users,
      required final Map<String, int> scores,
      required final Question currentQuestion,
      required final String username,
      required final int timeRemaining,
      required final int peopleAnswered,
      required final int roomId,
      required final bool showScore,
      required final bool answerButtonPressed}) = _$QuizScreenStateImpl;

  @override
  List<ConnectedRoom> get connectedRooms;
  @override
  List<Answer> get answersForCurrentQuestion;
  @override
  List<Answer> get selectedAnswers;
  @override
  List<String> get users;
  @override
  Map<String, int> get scores;
  @override
  Question get currentQuestion;
  @override
  String get username;
  @override
  int get timeRemaining;
  @override
  int get peopleAnswered;
  @override
  int get roomId;
  @override
  bool get showScore;
  @override
  bool get answerButtonPressed;
  @override
  @JsonKey(ignore: true)
  _$$QuizScreenStateImplCopyWith<_$QuizScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

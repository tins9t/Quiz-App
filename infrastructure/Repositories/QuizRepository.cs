﻿using Dapper;
using infrastructure.QueryModels;

namespace infrastructure.Repositories;

public class QuizRepository
{
    public Quiz CreateQuiz(Quiz quiz)
    {
        var sql = $@"INSERT INTO quiz(id, name, description, time_created, user_id, is_private)
        VALUES (@id, @name, @description, @time_created, @user_id, @is_private) RETURNING *;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<Quiz>(sql, new
            {
                id = Guid.NewGuid().ToString(),
                name = quiz.Name,
                description = quiz.Description,
                time_created = DateTime.Today,
                user_id = quiz.UserId,
                is_private = quiz.IsPrivate 
            });
        }
    }

    public Quiz UpdateQuiz(Quiz quiz)
    {
        DateTime.TryParse(quiz.TimeCreated, out DateTime parsedDate);
        var sql = $@"UPDATE quiz SET
    {nameof(Quiz.Name)} = @name,
    {nameof(Quiz.Description)} = @description,
    is_private = @is_private
    WHERE {nameof(Quiz.Id)} = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            conn.Execute(sql, new
            {
                name = quiz.Name,
                description = quiz.Description,
                time_created = parsedDate.Date,
                user_id = quiz.UserId,
                is_private = quiz.IsPrivate,
                id = quiz.Id
            });
        }
        return GetQuizById(quiz.Id);
    }

    public bool DeleteQuizById(string quizId)
    {
        var sql = $@"DELETE FROM quiz WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Execute(sql, new { id = quizId }) == 1;
        }
    }

    public Quiz GetQuizById(string id)
    {
        var sql = $@"SELECT id as {nameof(Quiz.Id)},
        name as {nameof(Quiz.Name)},
        description as {nameof(Quiz.Description)},
        time_created as {nameof(Quiz.TimeCreated)},
        user_id as {nameof(Quiz.UserId)},
        is_private as {nameof(Quiz.IsPrivate)} FROM quiz WHERE id = @id;"; 
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirstOrDefault<Quiz>(sql, new { id });
        }
    }

    public List<Question> GetQuestionsByQuizId(string quizId)
    {
        var sql = $@"SELECT * FROM question WHERE quiz_id = @quiz_id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Query<Question>(sql, new { quiz_id = quizId }).ToList();
        }
    }

    public List<Answer> GetAnswersByQuestionId(int questionId)
    {
        var sql = $@"SELECT * FROM answer WHERE question_id = @question_id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Query<Answer>(sql, new { question_id = questionId }).ToList();
        }
    }
}
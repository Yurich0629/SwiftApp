//
//  Lessons.swift
//  SwiftApp
//
//  Created by Геник Мурадян on 31.08.2023.
//

struct Lesson {
    let title: String
    let text: String
    let images: [String]
    let question: Question
    
    static func getLessons() -> [Lesson] {
        [
            Lesson(
                title: "Введение",
                text: "",
                images: ["image1", "image2"],
                question: Question.getQuestions()[0]
            ),
            Lesson(
                title: "Свойства: переменные и константы.",
                text: "",
                images: ["image3"],
                question: Question.getQuestions()[1]
            ),
            Lesson(
                title: "Операторы Swift",
                text: "",
                images: ["image4", "image5"],
                question: Question.getQuestions()[2])
        ]
    }
    
}

struct Question {
    let title: String
    let answers: [Answer]
    
    static func getQuestions () -> [Question] {
        [
            Question(
                title: "Вопрос вводного урока",
                answers: [
                    Answer(text: "Ответ 1", correctAnswer: true),
                    Answer(text: "Ответ 2", correctAnswer: false),
                    Answer(text: "Ответ 3", correctAnswer: false),
                    Answer(text: "Ответ 4", correctAnswer: false)
                ]
            ),
            Question(
                title: "Вопрос 1го урока",
                answers: [
                    Answer(text: "Ответ 1", correctAnswer: false),
                    Answer(text: "Ответ 2", correctAnswer: false),
                    Answer(text: "Ответ 3", correctAnswer: true),
                    Answer(text: "Ответ 4", correctAnswer: false),
                ]
            ),
            Question(
                title: "Вопрос 2го урока",
                answers: [
                    Answer(text: "Ответ 1", correctAnswer: false),
                    Answer(text: "Ответ 2", correctAnswer: false),
                    Answer(text: "Ответ 3", correctAnswer: false),
                    Answer(text: "Ответ 4", correctAnswer: true),
                ]
            )
            
        ]
    }
}

struct Answer {
    let text: String
    let correctAnswer: Bool
}

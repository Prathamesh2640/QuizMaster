# QuizMaster

A command-line quiz application built in Swift, featuring multiple categories and a menu-driven interface.

## Features
- Four quiz categories: General Knowledge, Logical Reasoning, Swift Programming, iOS Development
- 10 MCQ questions per category
- User input for name and course
- Score tracking and result display
- Option to play again
- Input validation and error handling

## Project Structure
```
QuizApp/
├── main.swift
├── Models/
│   ├── Question.swift
│   ├── QuizCategory.swift
│   ├── User.swift
├── Services/
│   ├── QuizService.swift
│   ├── QuestionBank.swift
├── Utilities/
│   └── InputValidator.swift
```

## Usage
- Run the app and select a quiz category (1-4).
- Enter your name and course.
- Answer 10 multiple-choice questions.
- View your results and choose to play again.

## Requirements
- Swift 5.0 or later
- macOS or Linux with Swift installed

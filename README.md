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

## Output
- Enter User details and select category
- <img width="1280" alt="Enter-user-detail" src="https://github.com/user-attachments/assets/c1d7ab97-5500-41cb-8627-dd82d0163169" />

- Showing status of correct and incorrect answers
- <img width="1280" alt="showing-answer-status" src="https://github.com/user-attachments/assets/2255b8fa-d8ec-45ae-a167-cf8755530bb6" />

- Result after completing quiz
-<img width="1280" alt="Result-after-completing-quiz" src="https://github.com/user-attachments/assets/fa91cd4b-a6aa-478f-a90b-4282eb4f9dda" />

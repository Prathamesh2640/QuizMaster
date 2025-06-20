import Foundation

// MARK: - Quiz Error
enum QuizError: Error {
    case invalidInput(String)
    case invalidAnswer
}

// MARK: - Quiz Result
struct QuizResult {
    let user: User
    let category: QuizCategory
    let score: Int
    let totalQuestions: Int
    
    var percentage: Double {
        Double(score) / Double(totalQuestions) * 100
    }
}

// MARK: - Quiz Service
class QuizService {
    private let category: QuizCategory
    private let user: User
    private let questions: [Question]
    private var score: Int = 0
    
    init(category: QuizCategory, user: User) {
        self.category = category
        self.user = user
        self.questions = QuestionBank.getQuestions(for: category)
    }
    
    func startQuiz() throws {
        print("\nStarting \(category.displayName) Quiz for \(user.name)...")
        
        for (index, question) in questions.enumerated() {
            print("\nQuestion \(index + 1): \(question.text)")
            for (i, option) in question.options.enumerated() {
                print("\(i + 1). \(option)")
            }
            
            print("Enter your answer (1-\(question.options.count)): ")
            guard let answer = readLine(),
                  let answerIndex = Int(answer),
                  (1...question.options.count).contains(answerIndex) else {
                throw QuizError.invalidAnswer
            }
            
            if answerIndex - 1 == question.correctAnswerIndex {
                score += 1
                print("✅ Correct!")
            } else {
                print("❌ Incorrect. Correct answer: \(question.correctAnswer)")
            }
        }
    }
    
    func getResult() -> QuizResult {
        QuizResult(user: user, category: category, score: score, totalQuestions: questions.count)
    }
}

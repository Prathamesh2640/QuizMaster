import Foundation

// MARK: - Question Model
struct Question {
    let text: String
    let options: [String]
    let correctAnswerIndex: Int
    
    // Computed property to check if an answer is correct
    var correctAnswer: String {
        options[correctAnswerIndex]
    }
}

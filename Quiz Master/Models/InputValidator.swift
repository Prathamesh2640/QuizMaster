import Foundation

// MARK: - Input Validator
struct InputValidator {
    static func validateChoice(_ input: String, range: ClosedRange<Int>) throws -> Int {
        guard let number = Int(input), range.contains(number) else {
            throw QuizError.invalidInput("Please enter a number between \(range.lowerBound) and \(range.upperBound)")
        }
        return number
    }
    
    static func validateNonEmpty(_ input: String, field: String) throws {
        if input.isEmpty {
            throw QuizError.invalidInput("\(field) cannot be empty")
        }
    }
}

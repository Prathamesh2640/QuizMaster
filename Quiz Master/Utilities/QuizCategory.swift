import Foundation

// MARK: - Quiz Category Enum
enum QuizCategory: Int, CaseIterable {
    case generalKnowledge = 1
    case logicalReasoning
    case swiftProgramming
    case iOSDevelopment
    
    var displayName: String {
        switch self {
        case .generalKnowledge: return "General Knowledge"
        case .logicalReasoning: return "Logical Reasoning"
        case .swiftProgramming: return "Swift Programming"
        case .iOSDevelopment: return "iOS Development"
        }
    }
}

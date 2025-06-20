import Foundation

// MARK: - Question Bank
struct QuestionBank {
    static func getQuestions(for category: QuizCategory) -> [Question] {
        switch category {
        case .generalKnowledge:
            return [
                Question(text: "What is the capital of France?", options: ["Paris", "London", "Berlin", "Madrid"], correctAnswerIndex: 0),
                Question(text: "Which planet is known as the Red Planet?", options: ["Venus", "Mars", "Jupiter", "Saturn"], correctAnswerIndex: 1),
                Question(text: "Who painted the Mona Lisa?", options: ["Van Gogh", "Picasso", "Da Vinci", "Monet"], correctAnswerIndex: 2),
                // Add 7 more questions to make it 10
                Question(text: "What is the largest ocean?", options: ["Atlantic", "Indian", "Arctic", "Pacific"], correctAnswerIndex: 3),
                Question(text: "Which element has atomic number 1?", options: ["Helium", "Hydrogen", "Oxygen", "Carbon"], correctAnswerIndex: 1),
                Question(text: "Who wrote 'Pride and Prejudice'?", options: ["Jane Austen", "Emily Bronte", "Charles Dickens", "William Shakespeare"], correctAnswerIndex: 0),
                Question(text: "What is the currency of Japan?", options: ["Yuan", "Yen", "Won", "Dollar"], correctAnswerIndex: 1),
                Question(text: "Which country hosted the 2016 Olympics?", options: ["China", "Brazil", "Russia", "UK"], correctAnswerIndex: 1),
                Question(text: "What is the tallest mountain?", options: ["K2", "Kangchenjunga", "Everest", "Lhotse"], correctAnswerIndex: 2),
                Question(text: "Who discovered penicillin?", options: ["Fleming", "Curie", "Edison", "Tesla"], correctAnswerIndex: 0)
            ]
        case .logicalReasoning:
            return [
                Question(text: "If all cats are mammals, and some mammals are black, are some cats black?", options: ["Yes", "No", "Maybe", "Cannot determine"], correctAnswerIndex: 2),
                Question(text: "What comes next: 2, 4, 8, 16, ?", options: ["24", "32", "28", "20"], correctAnswerIndex: 1),
                Question(text: "If A is B's brother and C is A's sister, who is C to B?", options: ["Brother", "Sister", "Mother", "Father"], correctAnswerIndex: 1),
                // Add 7 more questions
                Question(text: "What day follows Tuesday?", options: ["Monday", "Wednesday", "Thursday", "Friday"], correctAnswerIndex: 1),
                Question(text: "If 3x = 12, what is x?", options: ["2", "3", "4", "5"], correctAnswerIndex: 2),
                Question(text: "Which number is odd?", options: ["2", "4", "6", "7"], correctAnswerIndex: 3),
                Question(text: "If all roses are flowers, are all flowers roses?", options: ["Yes", "No", "Maybe", "Cannot determine"], correctAnswerIndex: 1),
                Question(text: "What is 15% of 200?", options: ["20", "25", "30", "35"], correctAnswerIndex: 2),
                Question(text: "If today is Monday, what day is it in 3 days?", options: ["Tuesday", "Wednesday", "Thursday", "Friday"], correctAnswerIndex: 2),
                Question(text: "Which shape has 4 equal sides?", options: ["Rectangle", "Square", "Triangle", "Circle"], correctAnswerIndex: 1)
            ]
        case .swiftProgramming:
            return [
                Question(text: "What keyword declares a constant in Swift?", options: ["var", "let", "const", "static"], correctAnswerIndex: 1),
                Question(text: "What is used for optional binding?", options: ["if let", "guard", "switch", "try"], correctAnswerIndex: 0),
                Question(text: "Which is a value type in Swift?", options: ["Class", "Struct", "Protocol", "Extension"], correctAnswerIndex: 1),
                // Add 7 more questions
                Question(text: "What denotes an optional type?", options: ["!", "?", "&", "@"], correctAnswerIndex: 1),
                Question(text: "Which loop is used for collections?", options: ["while", "for-in", "repeat-while", "do-while"], correctAnswerIndex: 1),
                Question(text: "What is Swift's type inference?", options: ["Dynamic typing", "Static typing", "No typing", "Weak typing"], correctAnswerIndex: 1),
                Question(text: "What protocol ensures type safety?", options: ["Equatable", "Comparable", "Codable", "Hashable"], correctAnswerIndex: 0),
                Question(text: "What is used for error handling?", options: ["try-catch", "do-catch", "if-else", "guard-else"], correctAnswerIndex: 1),
                Question(text: "What is a closure in Swift?", options: ["Class", "Function", "Protocol", "Self-contained block"], correctAnswerIndex: 3),
                Question(text: "What keyword extends functionality?", options: ["extension", "protocol", "class", "struct"], correctAnswerIndex: 0)
            ]
        case .iOSDevelopment:
            return [
                Question(text: "What is UIKit?", options: ["Database", "UI Framework", "Testing Tool", "Build System"], correctAnswerIndex: 1),
                Question(text: "What manages view controllers?", options: ["UIView", "UINavigationController", "UITableView", "UICollectionView"], correctAnswerIndex: 1),
                Question(text: "What is Auto Layout?", options: ["Design Pattern", "Layout System", "Animation Framework", "Data Model"], correctAnswerIndex: 1),
                // Add 7 more questions
                Question(text: "What is the iOS app delegate?", options: ["UI Component", "App Lifecycle Manager", "Data Model", "Network Layer"], correctAnswerIndex: 1),
                Question(text: "Which is used for table views?", options: ["UITableView", "UICollectionView", "UIScrollView", "UIView"], correctAnswerIndex: 0),
                Question(text: "What is SwiftUI?", options: ["Testing Framework", "UI Framework", "Build Tool", "Database"], correctAnswerIndex: 1),
                Question(text: "What handles user gestures?", options: ["UIGestureRecognizer", "UIViewController", "UIResponder", "UIApplication"], correctAnswerIndex: 0),
                Question(text: "What is Core Data?", options: ["UI Framework", "Networking", "Persistence Framework", "Animation"], correctAnswerIndex: 2),
                Question(text: "What is a .xib file?", options: ["Code File", "Interface File", "Configuration", "Test File"], correctAnswerIndex: 1),
                Question(text: "What manages app navigation?", options: ["UIView", "UINavigationController", "UITableView", "UIStackView"], correctAnswerIndex: 1)
            ]
        }
    }
}

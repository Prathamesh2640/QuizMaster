import Foundation

// MARK: - Main Program
func startQuizApp() {
    print("""
    🎉 Welcome to the QuizMaster Application! 🎉
    Test your knowledge and challenge yourself!
    """)
    
    while true {
        displayMainMenu()
        guard let choice = readLine(), let option = Int(choice) else {
            print("❌ Invalid input. Please enter a number.")
            continue
        }
        
        guard let category = QuizCategory(rawValue: option) else {
            print("❌ Invalid option. Please choose between 1-4.")
            continue
        }
        
        do {
            let user = try getUserDetails()
            let quizService = QuizService(category: category, user: user)
            try quizService.startQuiz()
            displayResults(quizService: quizService)
        } catch {
            print("❌ Error: \(error.localizedDescription)")
        }
        
        if !playAgain() {
            print("👋 Thanks for playing QuizMaster! Goodbye!")
            break
        }
    }
}

// MARK: - Helper Functions
func displayMainMenu() {
    print("""
    
    📋 Select a Quiz Category:
    1. General Knowledge
    2. Logical Reasoning
    3. Swift Programming
    4. iOS Development
    Enter your choice (1-4):
    """)
}

func getUserDetails() throws -> User {
    print("\n👤 Please enter your name: ")
    guard let name = readLine(), !name.isEmpty else {
        throw QuizError.invalidInput("Name cannot be empty")
    }
    
    print("🎓 Please enter your course: ")
    guard let course = readLine(), !course.isEmpty else {
        throw QuizError.invalidInput("Course cannot be empty")
    }
    
    return User(name: name, course: course)
}

func displayResults(quizService: QuizService) {
    let result = quizService.getResult()
    print("""
    \n📊 Quiz Results
    Name: \(result.user.name)
    Course: \(result.user.course)
    Category: \(result.category.displayName)
    Score: \(result.score)/\(result.totalQuestions)
    Percentage: \(String(format: "%.2f", result.percentage))%
    Status: \(result.score >= 7 ? "✅ Passed" : "❌ Needs Improvement")
    """)
}

func playAgain() -> Bool {
    print("\n🔄 Would you like to play again? (y/n): ")
    return readLine()?.lowercased() == "y"
}

// MARK: - Program Entry Point
startQuizApp()

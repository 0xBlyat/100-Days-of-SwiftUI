import UIKit

// Ternary operator
let age = 18
let canVote = age >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names: [String] = [] //["Jimmy", "Timmy", "Limmy"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

// Throwing errors
// Do -> Try -> Catch
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "432"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.obvious {
    print("Your password is very obvious")
} catch PasswordError.short {
    print("Your password is very short!")
} catch {
    print("There was an error: \(error.localizedDescription)")
}


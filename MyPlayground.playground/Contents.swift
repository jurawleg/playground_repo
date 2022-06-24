import Foundation

enum ThrowedError: Error {
    case someError
}

func first(shouldThrow: Bool) throws -> String {
    if shouldThrow {
        print("FIRST ERROR")
        throw ThrowedError.someError
    } else {
        return "FIRST"
    }
}

func second(shouldThrow: Bool) throws -> String {
    try first(shouldThrow: true)
    if shouldThrow {
        print("SECOND ERROR")
        throw ThrowedError.someError
    } else {
        return "SECOND"
    }
}

func third(shouldThrow: Bool) throws -> String {
    try second(shouldThrow: false)
    if shouldThrow {
        print("THIRD ERROR")
        throw ThrowedError.someError
    } else {
        return "THIRD"
    }
}

do {
    print("DO")
    _ = try third(shouldThrow: false)
} catch {
    print("ERROR CATCHED")
}

//print(test)

//import Foundation
//
//enum TestError: Error {
//    case first
//    case second
//    case third
//}
//
//enum AnotherError : Error {
//    case defaultError
//}
//
//func testThrow(code: Int) throws {
//    switch code {
//    case 1:
//        throw TestError.first
//    case 2:
//        throw TestError.second
//    case 3:
//        throw TestError.third
//    default:
//        throw AnotherError.defaultError
//    }
//
//}
//
//func tryCatchTest(code: Int) {
//    do {
//        try testThrow(code: code)
//    } catch {
//        if let error = error as? TestError {
//            print("Another error")
//        }
//    }
//    print("Finished func")
//}

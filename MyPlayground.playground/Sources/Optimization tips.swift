// SWIFT CODE OPTIMIZATION WAYS

// Set optimization level in build settings
// Swift compiler - code generation -> Optimization Level.

// Use FINAL and PRIVATE (FILEPRIVATE) for methods, var and classes. To avoid unnecessary searching in virtual table.

// Avoid print() in code, or make MACRO for it

// Inline code and not hide one func into another without necessarity.
// Try avoid smth like this
// func doSmth(){
//   anotherFunc()
// }

// Working with array - if iterate trough array, better to use "withUnsafeBufferPointer" to take a pointers to array`s elements

let arr = [1,2,3,4,5];
//arr.withUnsafeBufferPointer{ unsafedArray -> () in
//    unsafedArray // make needed with unsafedArray
//}

// OR!!!

//Use ManagedBuffer instead of UnsafeMutableBufferPointer.

// In some cases you can use ContiguousArray, elements are placed Contiguously, but inserting and appending are more heavier than in regular array.
let ca : ContiguousArray<Int> = [1,2,3]

// Holding structs in array is more efficient than holding classes (or another reference types)

// Use LinkedList instead of Array if possible, or if you need to sort or lookup smth in this data structure.

// If you can - Limit Protocols to Class if Possible

protocol SomeProt : AnyObject {
    // it is better for ARC and make your code run faster
}

//Whole Module Optimizations (WMO) Swift Compiler -> Code Generation -> Compilation Mode
// It compiles longer but MAY run faster

// Reduce Dynamic Dispatch by using final, private, fileprivate, internal

// указывать тип данных при возможности.
var myStrings: Array<String> = [""]
let singleString = myStrings.joined(separator: ";") /* takes around 200ms to compile */
let singleTypedString: String = myStrings.joined(separator: ";") /* Takes just 1ms to compile */

// swift Compiler Custom Flags - Swift Other Flags ADD THOSE String

//-Xfrontend -warn-long-function-bodies=<limit int in ms>
//-Xfrontend -warn-long-expression-type-checking=<limit int in ms>

///
//1. Go to ‘Build Options’ in Xcode Build settings
//
//2. Under ‘Debug Information Format’, set the value to ‘DWARF’ for debug scheme and ‘DWARF with dSYM File’ for release scheme:

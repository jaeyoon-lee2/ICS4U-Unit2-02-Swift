/*
This program uses the MrCoxallStack class.
author  Jay Lee
version 1.0
since   2020-05-18
*/

enum InvalidInputError : Error {
  case invalidInput
}

let aStack = MrCoxallStack()
var toPop: String

while(true) {
  print("Enter the number to push on the stack: ", terminator:"")
  do {
    guard let inputNumber = Int(readLine()!) else {
      throw InvalidInputError.invalidInput
    }
    aStack.Push(pushNumber: inputNumber)
    repeat {
      print("\nDo you want to pop (the top element : \(aStack.Peek()))? ", terminator:"")
      toPop = String(readLine()!).uppercased()
      if (toPop == "Y" || toPop == "YES") {
        print("\nThe top element : \(aStack.Pop()) is popped.")
      }
    } while toPop == "Y" || toPop == "YES"
    print("")
  } catch {
    break
  }
}
print("\nThe Stack: ")
aStack.ShowStack()
print("\nDone.")

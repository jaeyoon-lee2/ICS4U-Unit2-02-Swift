/*
This class creates an integer stack.
author  Jay Lee
version 1.0
since   2020-05-18
*/

class MrCoxallStack {
  private var stack:[Int] = []

  // This method push an integer to the stack.
  func Push(pushNumber: Int) {
    self.stack.append(pushNumber) 
  }

  func Peek() -> Int {
    return self.stack.last!
  }

  func Pop() -> Int {
    return self.stack.popLast()!
  }

  // This method prints out the list of items in the stack.
  func ShowStack() {
    for index in 0..<self.stack.count {
      print(self.stack[index])
    }
  }
}

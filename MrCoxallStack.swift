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

  // This method returns the last integer in the stack.
  func Peek() -> Int {
    return self.stack[self.stack.count - 1]
  }

  // This method pops the top integer from the stack.
  func Pop() -> Int {
    let element = self.Peek()
    self.stack.remove(at: self.stack.count - 1)
    return element
  }

  // This method prints out the list of items in the stack.
  func ShowStack() {
    for index in 0..<self.stack.count {
      print(self.stack[index])
    }
  }
}

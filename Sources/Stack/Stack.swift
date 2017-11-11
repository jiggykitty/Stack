import LinkedList

public class Stack<T: Equatable> {
  let list: LinkedList<T>
  var stackSize: Int = 0

  public init() {
    self.list = LinkedList<T> ()
  }

  public func push(item: T) throws {
    do {
      try self.list.insert(item: item, atIndex: 0)
      self.stackSize += 1
    }
    catch {
      throw error
    }
  }

  public func pop() throws -> T {
    let value = self.list[0]
    do {
      try self.list.remove(atIndex: 0)
      self.stackSize -= 1
    }
    catch {
      throw error
    }
    return value!
  }

  public func peek() -> T? {
    return self.list[0]
  }

  public func isEmpty() -> Bool {
    return self.stackSize == 0
  }

  public func size() -> Int {
    return self.stackSize
  }
}

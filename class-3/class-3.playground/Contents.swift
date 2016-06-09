//class 3

import UIKit

protocol Identity
{
    var id: String { get set }
}


class ToDo: Identity
{
    let taskItem: String
    let date: NSDate
    var id: String
    
    init(taskItem: String)
    {
        self.taskItem = taskItem
        self.date = NSDate()
        self.id = NSUUID().UUIDString
    }
    func describe() -> String
    {
        return "Priority: \(self.taskItem), Created At: \(self.date), PriorityId: \(self.id)"
    }
}

protocol ObjectStoreProtocol: class
{
    associatedtype Object: Identity
    var objects: [Object] { get set }
    
    func add(object: Object)
    func remove(object: Object)
    func removeAllObjs()
    func count() -> Int
    func objAtIndex(index: Int) -> Object
    func allObjs() -> [Object]
}

extension ObjectStoreProtocol
{
    func add(object: Object)
    {
        self.objects.append(object)
    }
    func remove(inputObject: Object)
    {
        self.objects = self.objects.filter({ (targetObject) -> Bool in
            return inputObject.id != targetObject.id
        })
    }
    func removeAllObjs()
    {
        self.objects.removeAll()
    }
    func count() -> Int
    {
        return self.objects.count
    }
    func objAtIndex(index: Int) -> Object
    {
        return self.objects[index]
    }
    func allObjs() -> [Object]
    {
        return self.objects
    }
}

class Store: ObjectStoreProtocol
{
    static let shared = Store()
    private init() {}
    typealias Object = ToDo
    var objects = [Object]()
}

let toDo = ToDo(taskItem: "Watch the playoff game")
let toDos = ToDo(taskItem: "Miss the playoff game")

Store.shared.add(toDo)
Store.shared.add(toDos)

for task in Store.shared.allObjs()
{
    print(task.describe())
}

Store.shared.remove(toDo)

for task in Store.shared.allObjs()
{
    print(task.describe())
}

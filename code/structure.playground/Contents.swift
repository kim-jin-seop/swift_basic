import UIKit

//structure
var name = ["Park","Choi","Kim","Lee"]
var age = [3,4,5,6]
var height = [40,50,60,70]

struct Student{
    var name: String
    var age: Int
    var height: Int
}

var student1 = Student(name: "Park", age: 3, height: 40)
var student2 = Student(name: "Choi", age: 4, height: 50)

print(student1.name, student1.age, student1.height)

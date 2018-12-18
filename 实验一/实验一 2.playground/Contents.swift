import Foundation
import UIKit

enum Gender:Int{
    case male=0,female
}
class Person{
    var firstName:String
    var lastName:String
    var age:Int
    var gender:Gender
    var fullName:String{
        return firstName+" "+lastName
    }
    init(firstName:String, lastName:String, age:Int,gender:Gender){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
    }
    convenience init(name:String){
        self.init(firstName:name, lastName:"", age:13, gender:Gender.male)
    }
    static func ==(p1:Person, p2:Person) -> Bool{
        return p1.firstName == p2.firstName && p1.lastName == p2.lastName && p1.age == p2.age && p1.gender == p2.gender
    }
    static func !=(p1:Person, p2:Person) -> Bool{
        return !(p1.firstName == p2.firstName && p1.lastName == p2.lastName && p1.age == p2.age && p1.gender == p2.gender)
    }
    var description:String{
        return "fullName:\(fullName), age:\(age), gender:\(gender)"
    }
}

class Teacher:Person{
    var title:String
    
    init(firstName:String, lastName:String, age:Int, gender:Gender, title:String){
        self.title = title
        super.init(firstName:firstName, lastName:lastName, age:age, gender:gender)
    }
    convenience init(name:String){
        self.init(firstName:name, lastName:"", age:13, gender:Gender.male, title:"")
    }
    override var description:String{
        return super.description+" title:\(title)"
    }
}

class Student:Person{
    var stuNo:String
    
    init(firstName:String, lastName:String, age:Int, gender:Gender, stuNo:String){
        self.stuNo = stuNo
        super.init(firstName:firstName, lastName:lastName, age:age, gender:gender)
    }
    convenience init(name:String){
        self.init(firstName:name, lastName:"", age:13, gender:Gender.male, stuNo:"")
    }
    override var description:String{
        return super.description+" stuNo:\(stuNo)"
    }
}

var people = [Person]()
var p1 = Person(firstName:"张", lastName:"平", age:15, gender:Gender.female)
var p2 = Person(name:"李")
people.append(p1)
people.append(p2)

var t1 = Teacher(firstName:"王", lastName:"易", age:12, gender:Gender.male, title:"语文")
var t2 = Teacher(name:"刘")
var t3 = Teacher(firstName:"王", lastName:"耳", age:18, gender:Gender.female, title:"语文")
people.append(t1)
people.append(t2)
people.append(t3)

var s1 = Student(firstName:"李", lastName:"毅", age:15, gender:Gender.female, stuNo:"201601")
var s2 = Student(name:"李")
people.append(s1)
people.append(s2)

var dictionary = ["person":0, "teacher":0, "student":0]
for i in people{
    if i is Student{
        dictionary["student"]!  += 1
    }
    else if i is Teacher{
        dictionary["teacher"]!  += 1
    }
    else {
        dictionary["person"]!  += 1
    }
}
for (key,value) in dictionary{
    print("\(key) : \(value)")
}

print("-------------------------------")
print("按照age排列：")
people.sort{ return $0.age < $1.age }
for i in people{
    print(i.description)
}
print("-------------------------------")
print("按照fullName排列：")
people.sort{ return $0.fullName < $1.fullName }
for i in people{
    print(i.description)
}
print("-------------------------------")
print("按照gender+age排列：")
people.sort{ return ($0.gender.rawValue < $1.gender.rawValue) && ($0.age < $1.age) }
for i in people{
    print(i.description)
}


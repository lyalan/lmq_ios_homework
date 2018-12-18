import UIKit

//（1）    给定一个Dictionary，Dictionary包含key值name和age，用map函数返回age字符串数组;
let dictionary = [["name":"李一", "age":"13"],["name":"王一","age":"11"]]
let ages = dictionary.map{($0["age"])!}
print(ages)

//（2）    给定一个String数组，用filter函数选出能被转成Int的字符串
let arr = ["H","e","2","3","l","2"]
let newArr = arr.filter{ Int($0) != nil}
print(newArr)

//（3）    用reduce函数把String数组中元素连接成一个字符串，以逗号分隔
var arrs = ["H","e","l","l","o"]
var newArrs = arrs.reduce("",{$0+","+$1})
newArrs.remove(at:newArrs.startIndex)
print(newArrs)

//（4）    用 reduce 方法一次求出整数数组的最大值、最小值、总数和
var str = [1,45,92,36,45,86,9,17]
let arr1 = str.reduce((max:str[0],min:str[0],sum:0), { (max: max($0.max, $1), min: min($0.min, $1), $0.sum + $1) })
print(arr1)

//（5）    新建一个函数数组，函数数组里面保存了不同函数类型的函数，要求从数组里找出参数为一个整数，返回值为一个整数的所有函数；
func One(a:Int) -> Int{
    return a
}

func Two(a:Int,b:Int) -> Int{
    return a+b
}
func Three(a:Int) -> Int{
    return a+1
}
func Four(a:Double) -> Double{
    return a
}
func Five(a:String) -> String{
    return a
}

let arr2:[Any] = [One,Two,Three,Four,Five]
print("参数为一个整数，返回值为一个整数的函数有：")
for(i,function) in arr2.enumerated(){
    if function is (Int) -> Int{
        print("第\(i+1)个函数")
    }
}

//（6）    扩展Int，增加sqrt方法，可以计算Int的Sqrt值并返回浮点数，进行验证；
extension Int{
    func sqrt(num:Int) ->Double{
        return Darwin.sqrt(Double(num))
    }
}
print(sqrt(9))

//（7）    实现一个支持泛型的函数，该函数接受任意个变量并返回最大和最小值，分别传入整数值、浮点数值、字符串进行验证。
func compare<T:Comparable>(a:[T]) -> (T,T){
    var max = a[0];
    var min = a[0];
    for i in a{
        if max < i{
            max = i
        }
    }
    for i in a{
        if min > i{
            min = i
        }
    }
    return (min,max)
}
print(compare(a:[1,4,8,5,6]))

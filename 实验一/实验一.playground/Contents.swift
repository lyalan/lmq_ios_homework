import UIKit

var str = "Hello, playground"
var prime = [Int]()
var isPrime = true;
for i in 2...10000{
    isPrime = true
    for j in 2..<i{
        if i%j == 0{
            isPrime = false
        }
    }
    if isPrime{
        prime.append(i)
    }
}
print(prime)

//方法一
func compare(x:Int, y:Int)->Bool{
    return x > y
}
prime.sort(by:compare)
print(prime)

//方法二
prime.sort(by:{
    (x:Int, y:Int) ->Bool in
    return x>y
})
print(prime)

//方法三
prime.sort(by:{
    (x, y) in
    x>y
})
print(prime)

//方法四
prime.sort(by:{
    ($0 > $1)
})
print(prime)

//方法五
prime.sort(by:>)
print(prime)



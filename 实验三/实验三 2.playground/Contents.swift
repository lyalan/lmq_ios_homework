import UIKit

// 2.处理字符串
// a)新建字符串：“Swift is a powerful and intuitive programming language for iOS, OS X, tvOS, and watchOS.”；
// b)返回字符串从第6个字符到第20个字符的子串；
// c)删除其中所有的OS字符；

let str="Swift is a powerful and intuitive programming language for iOS, OS X, tvOS, and watchOS."
print("原字符串为：\(str)")
let new_str=str[str.index(str.startIndex,offsetBy:5)...str.index(str.startIndex,offsetBy:20)]
print("截取后的字符串为：\(new_str)")
let str1=str.replacingOccurrences(of:"OS",with:"")
print("删除“OS”后的字符串为：\(str1)")


import UIKit

//5.    从网上查找访问一个JSon接口文件，并采用JSONSerialization和字典对其进行简单解析；

enum MyError:Error{
    case Zero
    case NoURL
}
guard let weatherUrl = URL(string: "http://www.weather.com.cn/data/sk/101010300.html")
    else{
        throw MyError.NoURL
}

let jsonDate = try! Data(contentsOf: weatherUrl)
let json = try! JSONSerialization.jsonObject(with: jsonDate, options: .allowFragments)
//解析json数据
if let dic = json as? [String: Any] {
    if let weather = dic["weatherinfo"] as? [String: Any] {
        let city = weather["city"]!
        let temp = weather["temp"]!
        let wd = weather["WD"]!
        let ws = weather["WS"]!
        print("城市: \(city), 温度: \(temp), 风向: \(wd), 风力: \(ws)")
    }
}


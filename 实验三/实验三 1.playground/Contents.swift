import UIKit

//1.    显示当前准确的中文时间，包括北京、东京、纽约、伦敦，格式为（2016年9月28日星期三 上午10:25）
//a)    显示中文需要设置locale

let currentDate = Date()
var formatter = DateFormatter()
formatter.dateFormat = "yyyy年M月dd日EEEE aa KK:mm"
formatter.locale = Locale(identifier: "zh_CN")

formatter.timeZone = TimeZone(abbreviation: "UTC+8:00")
let beijing = formatter.string(from: currentDate)
print("Beijing:"+beijing)

formatter.timeZone = TimeZone(abbreviation: "UTC+9:00")
let tokyo = formatter.string(from: currentDate)
print("Tokyo:"+tokyo)

formatter.timeZone = TimeZone(abbreviation: "UTC-5:00")
let newyork = formatter.string(from: currentDate)
print("NewYork:"+newyork)
formatter.timeZone = TimeZone(abbreviation: "UTC+0:00")
let london = formatter.string(from: currentDate)
print("London:"+london)


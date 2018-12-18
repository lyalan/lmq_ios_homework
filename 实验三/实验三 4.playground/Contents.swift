import UIKit

//4.    从网上下载一张照片并保存到本地沙盒的Document的某文件中；

let image = URL(string: "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2369240232,1690328365&fm=26&gp=0.jpg")

let urlData = try Data(contentsOf:image!)    //将json数据转换为二进制数据

let fileManager = FileManager.default

var path = fileManager.urls(for: .documentDirectory, in:.userDomainMask).first!

path.appendPathComponent("zyx.jpg")
print(path)
try urlData.write(to: path)

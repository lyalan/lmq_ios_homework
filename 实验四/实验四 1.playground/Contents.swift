import UIKit

import UIKit


let fileManager = FileManager.default
let docPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first?.path

var file = docPath?.appending("/liuminqi")
if fileManager.fileExists(atPath: file!) {
    let image = file?.appending("/yyqx.jpg")
    if fileManager.fileExists(atPath: image!){
        print("存在")
    }
    else{
        let url = URL(string:"http://img4.imgtn.bdimg.com/it/u=2841585855,3857796371&fm=11&gp=0.jpg")
        let data = try Data(contentsOf: url!)
        try data.write(to:URL(fileURLWithPath: image!),options: .atomicWrite)
    }
}
else{
    try fileManager.createDirectory(atPath: file!, withIntermediateDirectories: true, attributes: nil)
    print("文件不存在，创建文件")
}



//
//  ViewController.swift
//  实验四 2
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 刘敏琦. All rights reserved.
//

import UIKit

class MyView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        
        UIColor.yellow.setFill()
        path.fill()
    }
}
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let oval = MyView(frame:  CGRect(x: 150, y: 300, width: 100, height: 150))
        oval.backgroundColor = UIColor.clear
        self.view.addSubview(oval)
    }
}


//
//  ViewController.swift
//  SwiftLecture02
//
//  Created by stu1 on 2018/7/21.
//  Copyright © 2018年 stu1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbName:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello Swift!")
        let name : String = "liddle"
        let fullName = name + "Fang"
        //print(fullName)
        lbName?.text=fullName
        let english = ["A","B","C"]
        var ints : [Int] = [2,1,3]
        var floats :Array<Float> = Array(repeating: 0, count: 5)
        ints.sort()
//        for index in 0..<3{
//            print("\(ints[index])")
//        }
//
//        for str in english{
//            print(str)
//        }
       //Dictionary
        let dic  = [1:"A",2:"C",3:"B"]
        for(a,b) in dic {
            print("\(a):\(b)")
        }
        let dicsorted = dic.sorted(by: {$0.value<$1.value})//以什么方式（key或value））排序
        for(a,b) in dicsorted {
            print("\(a):\(b)")
        }
        var times : Int = 0
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats:true, block: {smalltimer in
            times = times + 1
            print("timer:\(smalltimer.isValid)")})
        
        _ = self.add(first: 1, second: 2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func add(first:Int,second:Int) -> Int {
        return first + second
    }

    
}


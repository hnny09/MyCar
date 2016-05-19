//
//  ViewController.swift
//  MyCar
//
//  Created by _MyComputer_ on 16/5/17.
//  Copyright © 2016年 _MyComputer_. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var Name: String {
        set{
            print("zhangsan")
        }
        get {
            return "lisi"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(self.Name)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


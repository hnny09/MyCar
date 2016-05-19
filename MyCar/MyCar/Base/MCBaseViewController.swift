//
//  MCBaseViewController.swift
//  MyCar
//
//  Created by _MyComputer_ on 16/5/19.
//  Copyright © 2016年 _MyComputer_. All rights reserved.
//

import UIKit

class MCBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = MCViewControllerBackGroundColor
        self.navigationController!.navigationBar.barTintColor =  MCNavgationBarBackGroundColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

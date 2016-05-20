//
//  MCBrandListViewController.swift
//  MyCar
//
//  Created by _MyComputer_ on 16/5/20.
//  Copyright © 2016年 _MyComputer_. All rights reserved.
//

import UIKit

class MCBrandListViewController: MCBaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        // Do any additional setup after loading the view.
    }

    func setNavigationBar(){
        self.title = MCLocalizedStringForKey("ViewController_BrandList_Title")
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

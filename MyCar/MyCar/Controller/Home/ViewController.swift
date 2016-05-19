//
//  ViewController.swift
//  MyCar
//
//  Created by _MyComputer_ on 16/5/17.
//  Copyright © 2016年 _MyComputer_. All rights reserved.
//

let Key_Identifier_HomeCell = "Home_Cell"


import UIKit

class ViewController: MCBaseViewController ,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataSourceArray :NSMutableArray!
    
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
        self.setNavigationBar()
        self.creatDataSourceArray()
//        self.tableView.rowHeight = 50
    }
    
    func creatDataSourceArray(){
//        self.dataSourceArray = ["",""]
    }
    
    func setNavigationBar(){
        self.title = MCLocalizedStringForKey("ViewController_Home_Title");
    }

    
//MARK: UITableViewDataSource && UITableViewDelegate
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCellWithIdentifier(Key_Identifier_HomeCell)
        
        return tableViewCell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
//MARK: Action
    
    @IBAction func respondsToRightBarButtonItem(sender: AnyObject) {
        if self.tableView != nil {
             self.tableView.reloadData();
        } else{
            print(self.view.subviews)
        }
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


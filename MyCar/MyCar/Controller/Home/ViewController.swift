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
    
    private let newsListSegueID = "MCNewsListVC"
    
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
        self.dataSourceArray = [MCLocalizedStringForKey("HomeViewController_TableView_Car"),MCLocalizedStringForKey("HomeViewController_TableView_ScienceTechnology")]
    }
    
    func setNavigationBar(){
        self.title = MCLocalizedStringForKey("ViewController_Home_Title");
    }

    
//MARK: UITableViewDataSource && UITableViewDelegate
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let tableViewCell = tableView.dequeueReusableCellWithIdentifier(Key_Identifier_HomeCell)
        let title:String = self.dataSourceArray[indexPath.row] as! String
        tableViewCell?.textLabel?.text = title
        tableViewCell?.detailTextLabel?.text = "Welcome " + title
        if tableViewCell?.textLabel?.text == self.dataSourceArray[0] as? String {
            tableViewCell?.imageView?.image = MCImageWithString("Home_Car")
        } else if tableViewCell?.textLabel?.text == self.dataSourceArray[1] as? String {
            tableViewCell?.imageView?.image = MCImageWithString("Home_IT")
        }
        return tableViewCell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSourceArray.count
    }
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return .Delete
    }
    
    
    func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAtIndexPath indexPath: NSIndexPath) -> String? {
        return MCLocalizedStringForKey("HomeViewController_TableView_DeleteTitle")
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if  editingStyle == .Delete {
            deleteDataSourceObject(indexPath)
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.performSegueWithIdentifier(newsListSegueID, sender:dataSourceArray[indexPath.row] )
    }
    
    func deleteDataSourceObject(indexPath :NSIndexPath){
        self.dataSourceArray.removeObjectAtIndex(indexPath.row)
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        
        print("deleteDataSourceObject")
    }
    
//MARK: Action
    
    @IBAction func respondsToRightBarButtonItem(sender: AnyObject) {
        if self.tableView != nil {
             self.tableView.reloadData();
        } else{
            print(self.view.subviews)
        }
       
    }
    
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.destinationViewController.classForCoder === MCNewsListTableViewController.self {
            let newsListTableViewController : MCNewsListTableViewController = segue.destinationViewController as! MCNewsListTableViewController
            newsListTableViewController.searchKey = sender! as! String
        }
    }

}


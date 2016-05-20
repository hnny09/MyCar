//
//  MCNewsListTableViewController.swift
//  MyCar
//
//  Created by _MyComputer_ on 16/5/20.
//  Copyright © 2016年 _MyComputer_. All rights reserved.
//

import UIKit
import Alamofire

class MCNewsListTableViewController: MCBaseTableViewController {
    
    var  searchKey : String!
    private var newsArray : NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getDataSource()
    
    }
    
    func getDataSource() {
        print(searchKey)
        let parameters = ["key":MCJuHeNewAppKey,"q":searchKey]
        Alamofire.request(.GET, MCJuHeNewBaseURL, parameters: parameters).responseJSON { response in
            print(response.result)
        }
    }
    
    
// MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


}

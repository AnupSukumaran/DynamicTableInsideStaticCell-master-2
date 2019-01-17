//
//  ViewsTableViewController.swift
//  AppTest1
//
//  Created by Abraham VG on 03/08/18.
//  Copyright © 2018 Web India Solutions. All rights reserved.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
   
    
    
    var items : [String] = ["GRE Test Structure ","GRE Score "]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
      //cell.customCell01.text = items[indexPath.row]
        return cell
    }
    
}


class ViewsTableViewController: UITableViewController {
    
    @IBOutlet weak var insideTableView: UITableView!
    var dataSource = DataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        insideTableView.delegate = dataSource
        insideTableView.dataSource = dataSource
        //insideTableView.isScrollEnabled = false
      
    }
    
    override func viewDidLayoutSubviews() {
        var frame = tableView.frame
        frame.size.height = tableView.contentSize.height
        tableView.frame = frame
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        
        if indexPath.row == 0 {
              print("insdietable = \(insideTableView.contentSize.height)")
            return insideTableView.contentSize.height
        }
       return tableView.frame.size.height - insideTableView.contentSize.height
    }

   
    
}



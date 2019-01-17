//
//  TestViewController.swift
//  AppTest1
//
//  Created by Abraham VG on 03/08/18.
//  Copyright © 2018 Web India Solutions. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    
    @IBOutlet weak var tableViewData: UITableView!
    
    @IBOutlet weak var tableHeightConstraints: NSLayoutConstraint! // have not used
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
    }

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        makeCellHeightVary()
        
    }
    
    func makeCellHeightVary() {
//        var frame = tableViewData.frame
//        frame.size.height = tableViewData.contentSize.height
//
//        tableViewData.frame = frame
        
        tableHeightConstraints.constant = tableViewData.contentSize.height
        
         print("table Content height = \(tableViewData.contentSize.height)")
    }
    

}

extension TestViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
    
}

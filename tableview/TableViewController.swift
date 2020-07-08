//
//  TableViewController.swift
//  tableview
//
//  Created by Sinergy on 7/8/20.
//  Copyright © 2020 Sinergy. All rights reserved.
//

import UIKit

let dataLabel = [
    "Data 1",
    "Data 2",
    "Data 3",
    "Data 4",
    "Data 5",
    "Data 6",
    "Data 7",
    "Data 8",
    "Data 9",
    "Data 10"
]

let dataImage = [
    "android",
    "backend",
    "frontend",
    "network",
    "security",
    "utility",
    "android",
    "backend",
    "network",
    "security"
]

var indexData = 0

class TableViewController: UIViewController {
    
    @IBOutlet var tableview: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Table View"
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: "TableViewCell")
        tableview.delegate = self
        tableview.dataSource = self
    }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//        print("Selecte ")
        indexData = indexPath.row
        print("Selected " + dataLabel[indexPath.row])
        performSegue(withIdentifier: "toDetail", sender: self)
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.myTextLabel?.text = dataLabel[indexPath.row]
        cell.myImageView.image = UIImage(named: dataImage[indexPath.row])
        
        return cell
    }
}

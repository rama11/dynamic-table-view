//
//  DetailViewController.swift
//  tableview
//
//  Created by Sinergy on 7/8/20.
//  Copyright © 2020 Sinergy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = dataLabel[indexData]

        // Do any additional setup after loading the view.
    }
    

}

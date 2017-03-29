//
//  DetailViewController.swift
//  NJ
//
//  Created by Josh Ntwari on 3/29/17.
//  Copyright © 2017 Josh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var Navtitle: String?
    var Details: String?
    @IBOutlet weak var DetailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let titleLabel = UILabel(frame: CGRect(x: 0,y: 0,width: 100, height: 32))
        titleLabel.text = Navtitle
        self.navigationItem.titleView = titleLabel
        DetailLabel.text = Details
        // Do any additional setup after loading the view.
    }


}

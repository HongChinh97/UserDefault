//
//  DetailViewController.swift
//  UserDefault
//
//  Created by admin on 8/23/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let data = UserDefaults.standard.object(forKey: "savename") as? String {
            detailTextField.text = data
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

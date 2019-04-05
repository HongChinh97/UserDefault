//
//  ViewController.swift
//  UserDefault
//
//  Created by admin on 8/23/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
   let arrayString = ["HanNoi", "Thanh Hoa", "Ninh Binh"]
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func button(_ sender: Any) {
        UserDefaults.standard.set(textField.text, forKey: "savename")
//        UserDefaults.standard.set(23, forKey: "Age")
//        UserDefaults.standard.set(arrayString, forKey: "saveArrayString")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = UserDefaults.standard.object(forKey: "savename") as? String {
            textField.text = data
//        if let age = UserDefaults.standard.object(forKey: "Age") as? Int {
//            textField.text = String(age)
//        }
//        if let array = UserDefaults.standard.object(forKey: "SaveArrayString") as? [Any] {
//            print(array)
        }

        func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}
    }

}


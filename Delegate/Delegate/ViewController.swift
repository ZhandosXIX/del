//
//  ViewController.swift
//  Delegate
//
//  Created by zhandos on 25.02.2024.
//

import UIKit

class ViewController: UIViewController {
 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func pass(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
}


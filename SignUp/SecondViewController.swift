//
//  SecondViewController.swift
//  SignUp
//
//  Created by David Yoon on 2021/11/28.
//

import UIKit

class SecondViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func popToPrev() {
        self.navigationController?.popViewController(animated: true)
    }

}

//
//  ViewController.swift
//  Firstapp
//
//  Created by 奈木野諭吉 on 2023/07/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mylabel: UILabel!
    
    @IBAction func buttonTapped(sender: UIButton){
        mylabel.text = "Hello World!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


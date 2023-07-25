//
//  ViewController.swift
//  Browzer
//
//  Created by 奈木野諭吉 on 2023/07/26.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let url = URL(string: "http://www.google.com"){
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }


}


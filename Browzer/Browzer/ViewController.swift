//
//  ViewController.swift
//  Browzer
//
//  Created by 奈木野諭吉 on 2023/07/26.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let url = URL(string: "http://www.google.com"){
            let request = URLRequest(url: url)
            webView.load(request)
        }
        webView.navigationDelegate = self
    }
    
    @IBAction func reloadTapped(sender: UIButton) {
        webView.reload()
    }
    
    @IBAction func backTapped(sender: UIButton){
        webView.goBack()
    }
    
    @IBAction func forwardTapped(sender: UIButton){
        webView.goForward()
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!){
        print("Start!")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Finish!")
    }


}


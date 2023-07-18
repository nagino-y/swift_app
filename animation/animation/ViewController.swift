//
//  ViewController.swift
//  animation
//
//  Created by 奈木野諭吉 on 2023/07/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(sender: UIButton) {
        
//        上に移動のみ
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }
//        上に移動後下に下がる
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        } completion: { (_) in
//            self.imageView.transform = CGAffineTransform.identity
//        }
//        上に移動後上下する
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        } completion: { (_) in
//            UIView.animate(withDuration: 1.0) {
//                self.imageView.transform = CGAffineTransform.identity
//            }
//        }

        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .curveLinear) {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: 100)
        } completion: { (_) in
            UIView.animate(withDuration: 1.0) {
                self.imageView.transform = CGAffineTransform.identity
            }
        }

    }

}


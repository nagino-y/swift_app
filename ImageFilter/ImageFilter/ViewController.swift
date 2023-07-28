//
//  ViewController.swift
//  ImageFilter
//
//  Created by 奈木野諭吉 on 2023/07/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let ciImage = CIImage(image: imageView.image!)
        
//        モノクロフィルター
//        let filter = CIFilter(name: "CIPhotoEffectMono")!
        let filter = CIFilter(name: "CIBoxBlur")!
        
        filter.setDefaults()
        filter.setValue(ciImage, forKey: kCIInputImageKey)
        filter.setValue(30, forKey: kCIInputRadiusKey)
        
        let outputImage = filter.outputImage
//        ciimage型をUIimage型に変更
        imageView.image = UIImage(ciImage: outputImage!)
        
    }


}


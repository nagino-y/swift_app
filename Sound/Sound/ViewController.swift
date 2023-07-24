//
//  ViewController.swift
//  Sound
//
//  Created by 奈木野諭吉 on 2023/07/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(sender: UIButton){
        let url = URL(fileURLWithPath: Bundle.main.bundlePath).appendingPathComponent("sampli.mp3")
        do {
            player = try AVAudioPlayer(contentsOF: url)
            player.play()
        }catch {
            print("Failed!")
        }
    }

}


//
//  ViewController.swift
//  Sound
//
//  Created by 奈木野諭吉 on 2023/07/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttonTapped(sender: UIButton){
        let url = URL(fileURLWithPath: Bundle.main.bundlePath).appendingPathComponent("sample.mp3")
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.delegate = self
            player.play()
        }catch {
            print("Failed!")
        }
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        print("Finshed!")
    }
    
}


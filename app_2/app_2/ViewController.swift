//
//  ViewController.swift
//  app_2
//
//  Created by APPLE on 13/10/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()

    @IBAction func play(_ sender: UIButton) {
        player.play()
        
    }
    @IBAction func pause(_ sender: UIButton) {
        player.pause()
        
    }
    @IBAction func rePlay(_ sender: UIButton) {
        player.currentTime = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            let audioPath = Bundle.main.path(forResource: "beep-08b", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!)as URL)
        }
        catch{
            
        }
      
    }


}


//
//  ViewController.swift
//  video_player
//
//  Created by Marcello Gonzatto Birkan on 01/01/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "bf1c654745a04bac979fc11d547408e6", ofType: "mov") else {
            
            debugPrint("video.mov not found")
            
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
   /*
    private func findVideo(){
        
       guard let path = Bundle.main.path(forResource: "bf1c654745a04bac979fc11d547408e6.mov", ofType: "mov") else {
            
            debugPrint("video.mov not found")
            
            return
        }
        
    }
    */
}

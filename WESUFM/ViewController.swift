//
//  ViewController.swift
//  WESUFM
//
//  Created by Miriam Lester on 9/29/15.
//  Copyright (c) 2015 WESUFM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var titleImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //playButton.setTitle("Play", forState: UIControlState.Normal)
        titleImage.image = UIImage(named: "radioCroped")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        toggle()
    }

    func toggle() {
        if RadioPlayer.sharedInstance.currentlyPlaying() {
            pauseRadio()
        } else {
            playRadio()
        }
    }
    
    func playRadio() {
        RadioPlayer.sharedInstance.play()
        //playButton.setTitle("Pause", forState: UIControlState.Normal)
        playButton.setBackgroundImage(UIImage(named: "pauseRound"), forState: UIControlState.Normal)
    }
    
    func pauseRadio() {
        RadioPlayer.sharedInstance.pause()
        //playButton.setTitle("Play", forState: UIControlState.Normal)
        playButton.setBackgroundImage(UIImage(named: "playRound"), forState: UIControlState.Normal)
        
    }

}


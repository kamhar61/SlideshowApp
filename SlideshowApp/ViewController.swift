//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Kamioka Harufumi on 2017/12/12.
//  Copyright © 2017年 Kamioka Harufumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slideImageView: UIImageView!
    
    @IBAction func onTapImage(_ sender: Any) {
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    var timer : Timer!
    var timer_sec :Double = 0
    
    var imageNumber = 0
    
    
        let photos = ["IMG_6658.jpg", "IMG_6671.jpg", "IMG_6675.jpg", "IMG_6680.jpg", "IMG_6716.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        timer_sec +=  2.0
    }
    
    @IBAction func slideGo(_ sender: Any) {
        if slideImageView.image == nil {
        slideImageView.image = UIImage(named: photos[0])
        }
        else if slideImageView.image == UIImage(named: photos[0]){
            slideImageView.image = UIImage(named: photos[1])
        }
        else if slideImageView.image == UIImage(named: photos[1]){
            slideImageView.image = UIImage(named: photos[2])
        }
        else if slideImageView.image == UIImage(named: photos[2]){
            slideImageView.image = UIImage(named: photos[3])
        }
        else if slideImageView.image == UIImage(named: photos[3]){
            slideImageView.image = UIImage(named: photos[4])
        }
    }
    
    
    @IBAction func slideBack(_ sender: Any) {
        if slideImageView.image == nil {
        slideImageView.image = UIImage(named: photos[4])
        }
        else if slideImageView.image == UIImage(named: photos[4]){
            slideImageView.image = UIImage(named: photos[3])
        }
        else if slideImageView.image == UIImage(named: photos[3]){
            slideImageView.image = UIImage(named: photos[2])
        }
        else if slideImageView.image == UIImage(named: photos[2]){
            slideImageView.image = UIImage(named: photos[1])
        }
        else if slideImageView.image == UIImage(named: photos[1]){
            slideImageView.image = UIImage(named: photos[0])
        }
    }
    
    

    
    @IBAction func slideStartStop(_ sender: Any) {
       updateTimer()
        if timer == nil {
            slideImageView.image = UIImage(named: photos[0])
        } else if timer != nil {
            imageNumber += 1
            slideImageView.image = UIImage(named: photos[imageNumber])
        }
        
    }
    
}


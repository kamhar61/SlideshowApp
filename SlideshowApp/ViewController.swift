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
    
    let photos = ["IMG_6658.jpg", "IMG_6671.jpg", "IMG_6675.jpg", "IMG_6680.jpg", "IMG_6716.jpg"]
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func slideGo(_ sender: Any) {
        slideImageView.image = UIImage(named: photos[0])
    }
    
    
    @IBAction func slideBack(_ sender: Any) {
        slideImageView.image = UIImage(named: photos[4])
    }
    
    @IBAction func slideStartStop(_ sender: Any) {
    }
    
}


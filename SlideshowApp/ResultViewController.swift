//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by Kamioka Harufumi on 2017/12/17.
//  Copyright © 2017年 Kamioka Harufumi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var largedImage: UIImageView!
    

    var showImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        largedImage.image = showImage
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

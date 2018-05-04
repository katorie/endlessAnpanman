//
//  ViewController.swift
//  endlessAnpanman
//
//  Created by 唐澤 on 2018/05/02.
//  Copyright © 2018年 katorie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var timer: Timer?
    var displayImageNo = 0
    
    func displayImage() {
        
        // TODO xcassetsに要素が増えても大丈夫な書き方に修正
        let displayImagesArray = [
            "anpanman01",
            "anpanman02",
            "anpanman03",
            "anpanman04",
        ]
        
        // TODO displayImagesArray の要素数に依存しているので修正
        if displayImageNo < 0 {
            displayImageNo = 3
        }
        
        if displayImageNo > 3 {
            displayImageNo = 0
        }
        
        let name = displayImagesArray[displayImageNo]
        let image = UIImage(named: name)
        imageView.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO assetesのなかからランダムにとってくることはできる？
        let image = UIImage(named: "anpanman01")
        imageView.image = image
        
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector (ViewController.onTimer(timer:)), userInfo: nil, repeats: true)
    }
    
    @objc func onTimer(timer: Timer) {
        displayImageNo += 1
        displayImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


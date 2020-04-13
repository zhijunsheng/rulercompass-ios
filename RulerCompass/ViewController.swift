//
//  ViewController.swift
//  RulerCompass
//
//  Created by Peter Shi on 2020/3/31.
//  Copyright © 2020 Peter Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var paperView: PaperView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func switchSolution(_ sender: UISlider) {
        let num = Int(sender.value * 10) % 10 < 5 ? floor(sender.value) : ceil(sender.value)
        print(num)
        paperView.pageNumber = Int(num)
        paperView.setNeedsDisplay()
    }
    
}

//
//  ViewController.swift
//  RulerCompass
//
//  Created by Grace Huang on 4/2/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func lineBisector(_ sender: Any) {
        canvasView.flag = .lineBisector
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func angleBisector(_ sender: Any) {
        canvasView.flag = .angleBisector
        canvasView.setNeedsDisplay()
    }
}


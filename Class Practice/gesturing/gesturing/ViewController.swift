//
//  ViewController.swift
//  gesturing
//
//  Created by Kateryna Tserkus on 8/7/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewBox: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleDragGestures(recognizer:UIPanGestureRecognizer){
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }
    @IBAction func handleTapGesture(recognizer:UITapGestureRecognizer){
        let colorRed = CGFloat.random(in: 0...1)
        let colorGreen = CGFloat.random(in: 0...1)
        let colorBlue = CGFloat.random(in: 0...1)
        self.viewBox.backgroundColor = UIColor(red: colorRed, green: colorGreen, blue: colorBlue, alpha: 1.0)
    }
}


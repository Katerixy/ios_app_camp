//
//  ViewController.swift
//  stackview_practice
//
//  Created by Kateryna Tserkus on 8/6/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    let imageCount = 6          //number of images
    var current = 0             // current image
    override func viewDidLoad() {
        super.viewDidLoad()
        showImage(index:current)
    }
    
    func showImage(index:Int) {
        label.text = "Image \(index)"
        imageView.image = UIImage(named: "image\(index)")
    }
    
    @IBAction func onPrevButtonPressed(_ sender: Any) {
        if current == 0 {
            current = imageCount - 1
            
        } else {
            current -= 1
        }
        showImage(index: current)
    }
    
    @IBAction func onResetButtonPressed(_ sender: Any) {
        current = 0
        showImage(index: current)
    }
    
    @IBAction func onNextButtonPresed(_ sender: Any) {
        current = (current + 1) % imageCount
        showImage(index: current)
    }
    
}


//
//  ViewController.swift
//  Segue
//
//  Created by Kateryna Tserkus on 8/5/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel1: UILabel!
    @IBOutlet weak var textField1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel1.text = "undefined"
    }
    var user_input = "not given yet"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueIdentifier",
           let nextVC = segue.destination as? ViewController2 {
                nextVC.delegate = self
                nextVC.vc2NewName = textField1.text!
        }
    }
}


//
//  ViewController2.swift
//  Segue
//
//  Created by Kateryna Tserkus on 8/5/25.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var textField2: UITextField!
    
    var vc2NewName = ""
    var delegate: UIViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel2.text = vc2NewName

    }
    
    @IBAction func button2Pressed(_ sender: Any) {
        let otherVC = delegate as! ViewController
        otherVC.nameLabel1.text = textField2.text
        self.dismiss(animated:true)
    }
    
}

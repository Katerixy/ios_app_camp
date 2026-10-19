//
//  CharData.swift
//  TableView
//
//  Created by Kateryna Tserkus on 8/5/25.
//

import UIKit

class CharData: UIViewController {

    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var charName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Learning about \(charName)"
        let charIndex = people.firstIndex(of: charName)
        typeLabel.text = desc[charIndex!]
    }
    

}

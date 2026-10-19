//
//  ViewController.swift
//  Alerting
//
//  Created by Kateryna Tserkus on 8/8/25.
//

import UIKit

let choices = [
    "Simple UIAlertViewController",
    "UIAlertController with TextField",
    "UI AlertViewController with Multiple Buttons",
    "Standard UIActionSheet"
    
]

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    

    @IBOutlet weak var tableView: UITableView!
    
    let textCellIdentifier = "TextCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath)
        cell.textLabel?.text = choices[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let rowValue = choices[indexPath.row]
        
        switch indexPath.row {
        case 0:
            let controller = UIAlertController(
                title: "Alert Controller",
                message: rowValue,
                preferredStyle: .alert)
            controller.addAction(UIAlertAction(title: "OK", style: .default))
            controller.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        case 1:
            let controller = UIAlertController(
                title: "Alert Controller",
                message: rowValue,
                preferredStyle: .alert)
            controller.addAction(UIAlertAction(title: "1", style: .default))
            controller.addAction(UIAlertAction(title: "2", style: .default))
            controller.addAction(UIAlertAction(title: "3", style: .default))
            controller.addAction(UIAlertAction(title: "4", style: .default))
            controller.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        case 2:
            let controller = UIAlertController(
                title: "Alert Controller",
                message: rowValue,
                preferredStyle: .actionSheet)
            controller.addAction(UIAlertAction(title: "OK", style: .default) {
                (action) in
                print("OK Action")
            } )
            
            controller.addAction(UIAlertAction(title: "Delete", style: .destructive) {
                (action) in
                print("Delete Action")
            } )
            controller.addAction(UIAlertAction(title: "Cancel", style: .cancel) {
                (action) in
                print("Canncler Action")
            } )
                                

            self.present(controller, animated: true, completion: nil)
            
        case 3:
            break
        default:
            break
        }
    }
    
}


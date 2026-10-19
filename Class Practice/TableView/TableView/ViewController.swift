//
//  ViewController.swift
//  TableView
//
//  Created by Kateryna Tserkus on 8/5/25.
//

import UIKit
public let people = ["Six", "Mono", "Thin Man", "Twin Chefs", "Janitor", "The Lady", "Runaway Kid", "Nomes", "Leeches", "Hunter", "Teacher", "Mirror Man"]
public let quick_desc = ["MC1", "MC2", "Boss2", "Enemy1", "Enemy1", "Boss1", "SC1", "NPC1", "NPC1", "Enemy2", "Enemy2", "Boss3"]
public let desc = ["A child stuck in The Maw", "An unfortunate traveller who wandered into Pale City", "The mysterious radio figure with control over Pale City", "The conjoined twins who work in the kitchen, under the watchful eyes of the Lady", "Enemy1", "Boss1", "SC1", "NPC1", "NPC1", "Enemy2", "Enemy2", "Boss3"]

let textCellIdentifier = "TextCell"
let segueIdentifier = "CharSegue"
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = people[row]
        cell.detailTextLabel?.text = quick_desc[row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        print(people[row])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier, let destination = segue.destination as? CharData, let charIndex = tableView.indexPathForSelectedRow?.row {
                destination.charName = people[charIndex]
            }
        }
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath.row > 4 ? nil : indexPath
    }
}


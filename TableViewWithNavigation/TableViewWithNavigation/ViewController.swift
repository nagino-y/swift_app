//
//  ViewController.swift
//  TableViewWithNavigation
//
//  Created by 奈木野諭吉 on 2023/07/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let animals = ["Dog 🐶", "Cat 😺", "Panda 🐼", "Lion 🦁", "Snake 🐍"]
    
    @IBOulet var animalTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animalTableView.detaSource = self
        animalTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        retrun animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        let label = cell.viewWithTag(1) as? UILabel
        label?.text = animals[indexPath.row]
        
        return cell
    }


}


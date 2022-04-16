//
//  ViewController.swift
//  TableViews
//
//  Created by AntonChen on 2022/4/13.
//

import UIKit

class SectionAndRowViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        11
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionAndRow", for: indexPath)
        let task = Task(section: "This is section \(indexPath.section), ", row: "row \(indexPath.row)")
        cell.textLabel?.text = task.section + task.row
        return cell
    }
}


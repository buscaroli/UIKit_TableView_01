//
//  ViewController.swift
//  UIKit_TableView_01
//
//  Created by Matteo on 01/08/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let tableView = UITableView()
    
    let phrases = [
        "Hi there",
        "Hello",
        "Good Day",
        "Good Morning",
        "How are you doing today?",
        "What's Up buddy?",
        "Cheers!"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        
        // function tableView that takes as a parameter cellForRowAt (last function down here)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        
        tableView.dataSource = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // giving the tableView the same size as the view
        tableView.frame = view.bounds
    }
    
    // how many rows in the table view? usually you count the elements
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phrases.count
    }
    
    // what to put into each row?
    // you need to register the cell identifier with tableView.register within viewDidLoad()
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = "Phrase number \(indexPath.row): \(phrases[indexPath.row])"
        
        return cell
    }
    

}


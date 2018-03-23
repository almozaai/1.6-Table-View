//
//  TableViewController.swift
//  TableViewDemo
//
//  Created by Saleh Almozaai on 21/03/2018.
//  Copyright © 2018 Saleh Saeed. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    var items = [DataItem]()
    
    for i in 1...12 {
    if i > 9 {
    items.append(DataItem(title:"Title #\(i)", subtitle: "This is subtitle #\(i)", imageName: "img\(i).jpg"))
    } else {
    items.append(DataItem(title: "Title #0\(i)", subtitle: "This is subtitle #0\(i)", imgeName: "img0\(i).jpg"))
    }
    }
    
    // The tableView(_: numberOfRowsInSection:) method returns an integer which will be used to determine the number of rows that a table view will contain (in our case, the number of items in the items array).
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    //This determines how many sections will be in the table view. You'll only have one section here and later you'll see how to create a table view with multiple sections.
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: IndexPath)
        let item = items[indexPath.row]
        
        cell.textLablel?.text = item.tiltle
        cell.detailTextLabel?.text = item.subtitle
        
        if let imageView = cell.imageView, let itemImage = item.image{
            imageView.image = itemImage
        } else {
            cell.imageView?.image = nil
        }
        return cell
    }
    
}

extension TableViewController: UITextFieldDelegate {
    
}
















































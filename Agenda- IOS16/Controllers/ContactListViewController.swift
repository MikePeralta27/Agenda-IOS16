//
//  ViewController.swift
//  Agenda- IOS16
//
//  Created by Michael Peralta on 7/12/23.
//

import UIKit
import CoreData

class ContactListViewController: UITableViewController {
    
    let contacts = [Contact]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        cell.textLabel?.text = contacts[indexPath.row].name
        
        return cell
    }

    //MARK: - Tableview Delegate Methods
    
    
    
    
    
    
    //MARK: - Add New contact
    


}


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
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

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
    
    
    
    //MARK: - Data Manipulation Methods
    
    
    
    
    //MARK: - Add New contact
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var nameTextField = UITextField()
        var lastNameTextField = UITextField()
        var phoneTextField = UITextField()
        
        let alert = UIAlertController(title: "Add new contact", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Category", style: .default){ (action) in
            
            let newContact = Contact(context: self.context)
            newContact.name = nameTextField.text!
            newContact.lastName = lastNameTextField.text!
            newContact.phone = phoneTextField.text!
            
            // call save category method
            
            
        }
        
        alert.addAction(action)
        alert.addTextField{ (nameField) in
            nameTextField = nameField
            nameTextField.placeholder = "New contact name"
        }
        alert.addTextField{ (lastNameField) in
            lastNameTextField = lastNameField
            lastNameField.placeholder = "New contact last name"
        }
        alert.addTextField{ (phoneField) in
            phoneTextField = phoneField
            phoneTextField.placeholder = "New contact phone number"
        }
        
        present(alert, animated: true, completion: nil)
    }
    
}


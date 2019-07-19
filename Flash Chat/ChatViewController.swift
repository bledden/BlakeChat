//
//  ViewController.swift
//  Flash Chat
//
//  Created by Blake Ledden on 07/12/2019.
//  Copyright (c) 2019 Blake Ledden. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    

    
    //
    
    @IBOutlet var heightConstraint: NSLayoutConstraint!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var messageTextfield: UITextField!
    @IBOutlet var messageTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set yourself as the delegate and datasource here:
        messageTableView.delegate = self
        messageTableView.dataSource = self
        
        
        //Set yourself as the delegate of the text field here:
        messageTextfield.delegate = self
        
        
        //Set the tapGesture here:
        
        

        //Register your MessageCell.xib file here:
        messageTableView.register(UINib(nibName: "Message Cell", bundle: nil), forCellReuseIdentifier: "customMessageCell")
        
        configureTableView()
        
    }

    ///////////////////////////////////////////
    
    //TableView DataSource Methods
    
    
    
    //Declare cellForRowAtIndexPath here:
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customerMessageCell", for: indexPath) as! CustomMessageCell
        
        let messageArray = ["First Message", "Second Message", "Third Message"]
        
        cell.messageBody.text = messageArray[indexPath.row]
        
        return cell
    }
    
    
    //Declare numberOfRowsInSection here:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
        
    }
    
    //Declare tableViewTapped here:
    
    
    
    //Declare configureTableView here:
    func configureTableView() {
        
        messageTableView.rowHeight = UITableView.automaticDimension
        messageTableView.estimatedRowHeight = 120.0
        
    }
    
    
    ///////////////////////////////////////////
    
    //MARK:- TextField Delegate Methods
    
    

    
    //TODO: Declare textFieldDidBeginEditing here:
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        heightConstraint.constant = 308
        view.layoutIfNeeded()
    }
    
    
    //TODO: Declare textFieldDidEndEditing here:
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    ///////////////////////////////////////////
    
    
    //MARK: - Send & Recieve from Firebase
    
    
    
    
    
    @IBAction func sendPressed(_ sender: AnyObject) {
        
        
        //TODO: Send the message to Firebase and save it in our database
        
        
    }
    
    //TODO: Create the retrieveMessages method here:
    
    

    
    
    
    @IBAction func logOutPressed(_ sender: AnyObject) {
        
        //Tog out the user and send them back to WelcomeViewController
        
        do {
            try Auth.auth().signOut()
            
            navigationController?.popToRootViewController(animated: true)
        }
        catch {
            print("ERROR, there was a problem signing out.")
        }
    }
    


}

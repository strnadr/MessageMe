//
//  MessagingViewController.swift
//  MessageMe
//
//  Created by Radek on 17/10/2019.
//  Copyright © 2019 Radek. All rights reserved.
//

import UIKit

class MessagingViewController: UIViewController {

     var myself: Person?
    
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblname.text = myself?.name
      
    }
    
    

    @IBAction func closeAction() {
        dismiss(animated: true)
    }
    
    @IBAction func sendAction () {
        
        if let text = textInput.text {
            
            //send message
            print(text)
            
            //clear input
            textInput.text = ""
    
        }
    }
}

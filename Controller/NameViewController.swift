//
//  NameViewController.swift
//  MessageMe
//
//  Created by Radek on 17/10/2019.
//  Copyright © 2019 Radek. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
    
    
    // RST: - Variables - oddělení sekcí komentářemi

    @IBOutlet weak var TextInput: UITextField!
    
    
    // RST: - Object Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print ("YES")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goAction () {
        
        // zahajeni chatu
        //print("GO") postupne ladeni
        
        if let jmeno = TextInput.text,
            jmeno.count >= 3 {
            
            let myself = Person(name: jmeno)
            startChat(myself)
        }
        else {
            displayError()
        }
    }
    
    func startChat(_ myself: Person) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        if let vc: MessagingViewController = storyboard.instantiateViewController(withIdentifier: "MessagingViewController") as? MessagingViewController {
        
        vc.myself = myself
        
        self.present(vc, animated: true, completion: nil)
        }
    }
    
    
    
    func displayError() {
    // create the alert
        let alert = UIAlertController(title: "Chybička", message: "Chybné jméno", preferredStyle: UIAlertController.Style.alert)

           // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

           // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
}



//
//  Message.swift
//  MessageMe
//
//  Created by Radek on 18/10/2019.
//  Copyright © 2019 Radek. All rights reserved.
//

import Foundation

class Message {
    
    var text:String
    var date: Date
    var sender: Person
    var dateString: String {
              get {
                  
                  let dateFormatter = DateFormatter ()
                  dateFormatter.dateFormat = "HH:mm"
                  return dateFormatter.string(from: date)
                  
              
              }
          }
    
    init(text: String, date: Date, sender: Person) {
        self.text = text
        self.date = date
        self.sender = sender
        
      
         //
        
        // Object LifeCycle
        
        
    }
    
    
}

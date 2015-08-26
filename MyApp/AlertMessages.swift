//
//  SocialNetworkSender.swift
//  MyApp
//
//  Created by Trey Hope on 7/10/15.
//  Copyright (c) 2015 Trey Hope. All rights reserved.
//

import UIKit

class AlertMessages: UIViewController{
    
    var alert = UIAlertView()    //Default alert message.
    
    //Social Network App not installed message.
    internal func AppNotInstalledMessage(){
        alert.title = "Sorry :("
        alert.message = "This app must be installed first."
        alert.addButtonWithTitle("OK")
        alert.show()
    }
    
    //Successful submission message.
    internal func SuccessfulSubmissionMessage(){
        alert.title = "Sent!"
        alert.message = "I will respond shortly."
        alert.addButtonWithTitle("OK")
        alert.show()
    }
    
    //Unsuccessful submission message.
    internal func UnsuccessfulSubmissionMessage(){
        alert.title = "Sorry :("
        alert.message = "Your submission wasn't successful, please try again."
        alert.addButtonWithTitle("OK")
        alert.show()
    }

    
        
}
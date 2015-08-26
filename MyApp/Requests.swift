//
//  AboutMe.swift
//  MyApp
//
//  Created by Trey Hope on 3/27/15.
//  Copyright (c) 2015 Trey Hope. All rights reserved.
//

import UIKit

class Requests: UITableViewController{
    
    let transitionManager = TransitionManager()
    
    var firstName: UITextField!
    var lastName: UITextField!
    var phone: UITextField!
    var email: UITextField!
    var designType: UITextField!
    var designDate: UITextField!
    
    var alert = AlertMessages()
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstName.placeholder = "First Name"
        lastName.placeholder = "Last Name"
        phone.placeholder = "Phone Number"
        email.placeholder = "E-Mail"
        designType.placeholder = "Type of Design"
        designDate.placeholder = "Date Needed"
        
        submitButton.addTarget(self, action: "submit:", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        self.transitionManager.presenting = false
        
        // this gets a reference to the screen that we're about to transition to
        let toViewController = segue.destinationViewController as! UIViewController
        
        // instead of using the default transition animation, we'll ask
        // the segue to use our custom TransitionManager object to manage the transition animation
        toViewController.transitioningDelegate = self.transitionManager
    }
    
    func submit(sender: UIButton!){
        alert.SuccessfulSubmissionMessage()
    }
}
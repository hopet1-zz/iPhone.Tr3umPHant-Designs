//
//  GraphicWork.swift
//  MyApp
//
//  Created by Trey Hope on 3/25/15.
//  Copyright (c) 2015 Trey Hope. All rights reserved.
//

import UIKit

class GraphicWork: UITabBarController{
    
    let transitionManager = TransitionManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
}
//
//  AboutMe.swift
//  MyApp
//
//  Created by Trey Hope on 3/27/15.
//  Copyright (c) 2015 Trey Hope. All rights reserved.
//

import UIKit

class AboutMe: UIViewController{
    
    //Segue object.
    let transitionManager = TransitionManager()
    
    //Return button.
    var back: UIButton!
    
//    //Social network buttons.
//    var button_googlePlus, button_instagram, button_facebook, button_twitter, button_linkedin: UIButton!
    
    //Alert message object.
    var alert = AlertMessages()
    
    //Social Network Urls
    var socialNetworkUrls = SocialNetworkURL()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        //Google Plus Button
//        button_googlePlus.addTarget(self, action: "googlePlus:", forControlEvents: UIControlEvents.TouchUpInside)
//        
//        //Instagram Button
//        button_instagram.addTarget(self, action: "instagram:", forControlEvents: UIControlEvents.TouchUpInside)
//        
//        //Facebook Button
//        button_facebook.addTarget(self, action: "facebook:", forControlEvents: UIControlEvents.TouchUpInside)
//        
//        //Twitter Button
//        button_twitter.addTarget(self, action: "twitter:", forControlEvents: UIControlEvents.TouchUpInside)
//        
//        //LinkedIn Button
//        button_linkedin.addTarget(self, action: "linkedin:", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Back Button
        back.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 20)
        
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
    
    func googlePlus(sender: UIButton!){
        var url = socialNetworkUrls.googlePlus
        if (UIApplication.sharedApplication().canOpenURL(url!) == true){
            UIApplication.sharedApplication().openURL(url!)
        }
        else{
            alert.AppNotInstalledMessage()
        }
    }
    
    func instagram(sender: UIButton!){
        var url = socialNetworkUrls.instagram
        if (UIApplication.sharedApplication().canOpenURL(url!) == true){
            UIApplication.sharedApplication().openURL(url!)
        }
        else{
            alert.AppNotInstalledMessage()
        }
    }
    
    func facebook(sender: UIButton!){
        var url = socialNetworkUrls.facebook
        if (UIApplication.sharedApplication().canOpenURL(url!) == true){
            UIApplication.sharedApplication().openURL(url!)
        }
        else{
            alert.AppNotInstalledMessage()
        }
    }
    
    func twitter(sender: UIButton!){
        var url = socialNetworkUrls.twitter
        if (UIApplication.sharedApplication().canOpenURL(url!) == true){
            UIApplication.sharedApplication().openURL(url!)
        }
        else{
            alert.AppNotInstalledMessage()
        }
    }
    
    func linkedin(sender: UIButton!){
        var url = socialNetworkUrls.linkedin
        if (UIApplication.sharedApplication().canOpenURL(url!) == true){
            UIApplication.sharedApplication().openURL(url!)
        }
        else{
            alert.AppNotInstalledMessage()
        }
    }
}
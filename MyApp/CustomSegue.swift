//
//  CustomSegue.swift
//  MyApp
//
//  Created by Trey Hope on 3/26/15.
//  Copyright (c) 2015 Trey Hope. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    
    override func perform(){
        var sourceViewController: UIViewController = self.sourceViewController as UIViewController
        var destinationViewController: UIViewController = self.destinationViewController as UIViewController
        
        sourceViewController.view.addSubview(destinationViewController.view)
        destinationViewController.view.transform = CGAffineTransformMakeScale(0.05, 0.05)

        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations:{()->Void in
                destinationViewController.view.transform = CGAffineTransformMakeScale(1.0, 1.0)
            })
            {(finished) -> Void in
                destinationViewController.view.removeFromSuperview()
                sourceViewController.presentViewController(destinationViewController, animated: false, completion: nil)
            }
    }

}

//
//  TransitionManager.swift
//  MyApp
//
//  Created by Trey Hope on 3/27/15.
//  Copyright (c) 2015 Trey Hope. All rights reserved.
//

import UIKit

class TransitionManager: NSObject, UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate  {
    
    var presenting = true
    let pie : CGFloat = 3.14159265359
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let container = transitionContext.containerView()
        
        let fromView = transitionContext.viewForKey(UITransitionContextFromViewKey)!
        let toView = transitionContext.viewForKey(UITransitionContextToViewKey)!

        let offScreenRotateIn = CGAffineTransformMakeRotation(-pie/2)
        let offScreenRotateOut = CGAffineTransformMakeRotation(pie/2)

        toView.transform = self.presenting ? offScreenRotateIn : offScreenRotateOut
        
        // add the both views to our view controller
        container.addSubview(toView)
        container.addSubview(fromView)
        
        let duration = self.transitionDuration(transitionContext)
        
        toView.layer.anchorPoint = CGPoint(x:0, y:0)
        fromView.layer.anchorPoint = CGPoint(x:0, y:0)
        
        toView.layer.position = CGPoint(x:0, y:0)
        fromView.layer.position = CGPoint(x:0, y:0)
        
        UIView.animateWithDuration(duration, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: nil, animations: {
            fromView.transform = self.presenting ? offScreenRotateIn : offScreenRotateOut
            toView.transform = CGAffineTransformIdentity
            
            }, completion: { finished in
                        transitionContext.completeTransition(true)
                
        })
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        return 1.0
    }

    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return self
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return self
    }
}
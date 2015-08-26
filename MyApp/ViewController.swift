//
//  ViewController.swift
//  MyApp
//
//  Created by Trey Hope on 3/18/15.
//  Copyright (c) 2015 Trey Hope. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var subName: UILabel!
    var name: UILabel!
    var AboutMeButton: UIButton!
    var GraphicWorkButton: UIButton!
    var RequestsButton: UIButton!
    var ContactButton: UIButton!
    
    let transitionManager = TransitionManager()
    
    //Timer
    var timer : NSTimer?
    
    var color = Color()
    
    func startTimer(){
        self.timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
    }
    

    func update(){
        
        //Red increases/decreases.
        if(color.redTop > 255){
            color.redTopIncrease = false
        }
        if(color.redBottom > 255){
            color.redBottomIncrease = false
        }
        if(color.redTop < 100){
            color.redTopIncrease = true
        }
        if(color.redBottom < 100){
            color.redBottomIncrease = true
        }
        //Green increases/decreases.
        if(color.greenTop > 255){
            color.greenTopIncrease = false
        }
        if(color.greenBottom > 255){
            color.greenBottomIncrease = false
        }
        if(color.greenTop < 100){
            color.greenTopIncrease = true
        }
        if(color.greenBottom < 100){
            color.greenBottomIncrease = true
        }
        //Blue increases/decreases.
        if(color.blueTop > 255){
            color.blueTopIncrease = false
        }
        if(color.blueBottom > 255){
            color.blueBottomIncrease = false
        }
        if(color.blueTop < 100){
            color.blueTopIncrease = true
        }
        if(color.blueBottom < 100){
            color.blueBottomIncrease = true
        }

        var colorTop = UIColor(red: color.redTop/255.0, green: color.greenTop/255.0, blue: color.blueTop/255.0, alpha: 1.0).CGColor
        var colorBottom = UIColor(red: color.redBottom/255.0, green: color.greenBottom/255.0, blue: color.blueBottom/255.0, alpha: 1.0).CGColor
        var gl: CAGradientLayer

        gl = CAGradientLayer()
        gl.colors = [ colorTop, colorBottom]
        gl.locations = [ 0.0, 1.0]
        
        view.backgroundColor = UIColor.clearColor()
        var backgroundLayer = gl
        backgroundLayer.frame = self.view.bounds
        self.view.layer.addSublayer(backgroundLayer)
        self.view.addSubview(name)
        self.view.addSubview(subName)
        self.view.addSubview(AboutMeButton)
        self.view.addSubview(GraphicWorkButton)
        self.view.addSubview(RequestsButton)
        self.view.addSubview(ContactButton)
        self.view.clearsContextBeforeDrawing = true
        
        //Incremete/decrement RGB values for gradient transition.
        color.redTopIncrease ? color.redTop++ : color.redTop--
        color.redBottomIncrease ? color.redBottom++ : color.redBottom--
        color.greenTopIncrease ? color.greenTop++ : color.greenTop--
        color.greenBottomIncrease ? color.greenBottom++ : color.greenBottom--
        color.blueTopIncrease ? color.blueTop++ : color.blueTop--
        color.blueBottomIncrease ? color.blueBottom++ : color.blueBottom--
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //About Me Button
        AboutMeButton.layer.borderColor = UIColor.darkGrayColor().CGColor
        AboutMeButton.backgroundColor = UIColor.whiteColor()
        AboutMeButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 20)
        AboutMeButton.layer.cornerRadius = 5
        
        //Graphic Work Button
        GraphicWorkButton.layer.borderColor = UIColor.darkGrayColor().CGColor
        GraphicWorkButton.backgroundColor = UIColor.whiteColor()
        GraphicWorkButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 20)
        GraphicWorkButton.layer.cornerRadius = 5
        
        //Requests Button
        RequestsButton.layer.borderColor = UIColor.darkGrayColor().CGColor
        RequestsButton.backgroundColor = UIColor.whiteColor()
        RequestsButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 20)
        RequestsButton.layer.cornerRadius = 5
        
        //Contact Button
        ContactButton.layer.borderColor = UIColor.darkGrayColor().CGColor
        ContactButton.backgroundColor = UIColor.whiteColor()
        ContactButton.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 20)
        ContactButton.layer.cornerRadius = 5
        //refresh()
        startTimer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let toViewController = segue.destinationViewController as! UIViewController
        toViewController.transitioningDelegate = self.transitionManager
    }
}

class Color{
    //Default top RGB
    var redTop = CGFloat(153.0)
    var greenTop = CGFloat(255.0)
    var blueTop = CGFloat(255.0)
    var redTopIncrease = true
    var blueTopIncrease = true
    var greenTopIncrease = true
    
    //Default bottom RGB
    var redBottom = CGFloat(204.0)
    var greenBottom = CGFloat(255.0)
    var blueBottom = CGFloat(153.0)
    var redBottomIncrease = true
    var blueBottomIncrease = true
    var greenBottomIncrease = true
}

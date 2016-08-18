//
//  ViewController.swift
//  test-CAMediaTimingFunction
//
//  Created by Apple on 16/8/18.
//  Copyright © 2016年 huangqingsong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let layer = CALayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        layer.frame =  CGRectMake(100, 200, 100, 100)
        layer.backgroundColor = UIColor.orangeColor().CGColor
        self.view.layer.addSublayer(layer)
        
        layer.position = CGPointMake(100, 0)
        
        
        let anim = CABasicAnimation(keyPath: "position")
        let timingFunction = CAMediaTimingFunction(controlPoints: 0.25, 0.0, 0.10, 1.0)
        anim.timingFunction = timingFunction
        anim.fromValue = NSValue(CGPoint: CGPointMake(100, 50))
        anim.toValue = NSValue(CGPoint: CGPointMake(100, self.view.frame.size.height - 50))
        
        anim.duration = 2
        anim.repeatCount = 100
        
        layer.addAnimation(anim, forKey: "drop")
    }
    
    
}


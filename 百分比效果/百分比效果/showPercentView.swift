//
//  showPercentView.swift
//  百分比效果
//
//  Created by ebiz on 16/3/7.
//  Copyright (c) 2016年 ebiz. All rights reserved.
//

import UIKit

class showPercentView: UIView {
    
    var percent=0.0
    var flag=0
    
    override func drawRect(rect: CGRect) {
    if (flag==0){
        NSTimer .scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("addPercent"), userInfo: nil, repeats: true)
        flag=1
        }
     let bezierPath=UIBezierPath()
     bezierPath.addArcWithCenter(CGPoint(x: self.bounds.width/2.0, y: self.bounds.height/2.0), radius: 100, startAngle: CGFloat(M_PI_2*3) , endAngle: CGFloat(M_PI_2*3+M_PI*2*percent) , clockwise: true)
    
       UIColor.blueColor().setStroke()
       bezierPath.lineWidth=5
       bezierPath.stroke()
       var percent1=Int(percent*100)
       var str="\(percent1)%"
//       var dic = NSDictionary()
       
       str.drawAtPoint(CGPointMake(self.bounds.width/2.0, self.bounds.height/2.0), withAttributes: nil);
        
    }
    func addPercent() {
        if percent<=1 {
            percent+=0.01
        }else{
            percent=0.0
        }
        self .setNeedsDisplay()
       
        
    }

}

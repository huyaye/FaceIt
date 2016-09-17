//
//  FaceView.swift
//  FaceIt
//
//  Created by 유정욱 on 2016. 9. 17..
//  Copyright © 2016년 jungwook.ryu. All rights reserved.
//

import UIKit

class FaceView: UIView {

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        let skullRadius = min(bounds.size.width, bounds.size.height) / 2
//        var skullCenter = convertPoint(center, fromView: superview)
        let skullCenter = CGPoint(x: bounds.midX, y: bounds.midY)
        
        let skull = UIBezierPath(arcCenter: skullCenter, radius: skullRadius, startAngle: 0.0, endAngle: CGFloat(2 * M_PI), clockwise: false)
        skull.lineWidth = 5.0
        UIColor.blueColor().set()   // doing both setFill() and setStroke()
        skull.stroke()
    }

}

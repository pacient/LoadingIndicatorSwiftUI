//
//  Ring.swift
//  TestingVideos
//
//  Created by Vasil Blanco-Nunev on 2019-07-11.
//  Copyright © 2019 Vasil Blanco-Nunev. All rights reserved.
//

import SwiftUI

struct Ring : Shape {
    var delayPoint = 0.5
    var fillPoint: Double
    
    func path(in rect: CGRect) -> Path {
        let end = fillPoint * 360
        var start: Double
        
        if fillPoint > (1 - delayPoint) {
            start = 360 * (2 * fillPoint - 1.0)
        } else {
            start = 0
        }
        
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.size.width/2, y: rect.size.width/2),
                    radius: rect.size.width/2,
                    startAngle: .degrees(start),
                    endAngle: .degrees(end),
                    clockwise: false)
        
        return path
    }
    
    var animatableData: Double {
        get { return fillPoint }
        set { fillPoint = newValue }
    }
}

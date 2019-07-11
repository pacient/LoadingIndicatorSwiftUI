//
//    Copyright (c) 2019 Vasil Blanco-Nunev
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.
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

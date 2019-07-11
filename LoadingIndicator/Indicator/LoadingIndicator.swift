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

struct LoadingIndicator<C: ShapeStyle> : View {
    @State private var fillPoint: Double = 0.0
    @State private var currentIndex = 0
    
    var shapeFills: [C]
    var lineWidth: Length
    var duration: Double = 0.8
    
    private var animation: Animation {
        Animation.basic(duration: duration).repeatForever(autoreverses: false)
    }
    
    private var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: duration, repeats: true) {_ in
            if self.currentIndex + 1 >= self.shapeFills.count {
                self.currentIndex = 0
            } else {
                self.currentIndex += 1
            }
        }
    }
    
    var body: some View {
        Ring(fillPoint: fillPoint).stroke(shapeFills[currentIndex], lineWidth: lineWidth)
            .aspectRatio(1, contentMode: .fit)
            .onAppear() {
                withAnimation(self.animation) {
                    self.fillPoint = 1.0
                    if self.shapeFills.count > 1 {
                        _ = self.timer
                    }
                }
        }
    }
}

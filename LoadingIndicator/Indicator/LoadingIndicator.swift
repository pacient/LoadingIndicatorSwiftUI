//
//  LoadingIndicator.swift
//  TestingVideos
//
//  Created by Vasil Blanco-Nunev on 2019-07-11.
//  Copyright © 2019 Vasil Blanco-Nunev. All rights reserved.
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

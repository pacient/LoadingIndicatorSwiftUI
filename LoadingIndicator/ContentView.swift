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

struct ContentView : View {
    var colors: [Color] = [.gray, .red]
    var gradients: [LinearGradient] = [
        LinearGradient(gradient: Gradient(colors: [.red, .pink]), startPoint: .leading, endPoint: .trailing),
        LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing),
        LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .leading, endPoint: .trailing),
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            LoadingIndicator(shapeFills: colors, lineWidth: 5, duration: 0.6)
                .frame(width: 50, height: 50)
            LoadingIndicator(shapeFills: gradients, lineWidth: 5)
                .frame(width: 50, height: 50)
            LoadingIndicator(shapeFills: [Color.red, Color.blue, Color.yellow, Color.green], lineWidth: 5)
                .frame(width: 50, height: 50)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

# LoadingIndicatorSwiftUI

A simple animated View that acts as a loading indicator written in SwiftUI.

Example Usage:
```swift
struct ContentView : View {
    var colors: [Color] = [.blue, .red, .yellow, .green]
    
    var body: some View {
        LoadingIndicator(shapeFills: colors, lineWidth: 10)
            .frame(width: 50, height: 50)
            .padding(20)
    }
}
```
<a href="https://imgflip.com/gif/35f5p8"><img src="https://i.imgflip.com/35f5p8.gif" title="made at imgflip.com"/></a>

You can also set Gradients as your `shapeFill` like this 
```swift
struct ContentView : View {
    var gradients: [LinearGradient] = [
        LinearGradient(gradient: Gradient(colors: [.red, .pink]), startPoint: .leading, endPoint: .trailing),
        LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing)
        ]
    
    var body: some View {
        LoadingIndicator(shapeFills: gradients, lineWidth: 10)
            .frame(width: 50, height: 50)
            .padding(20)
    }
}
```

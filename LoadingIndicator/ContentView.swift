//
//  Copyright © 2019 Vasil Blanco-Nunev. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var colors: [Color] = [.blue, .red, .yellow, .green]
    
    var body: some View {
        LoadingIndicator(shapeFills: colors, lineWidth: 10)
            .frame(width: 50, height: 50)
            .padding(20)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

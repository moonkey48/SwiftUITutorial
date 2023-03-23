import SwiftUI

struct ContentView: View {
    var person = Person(name: "austin", age: 26)
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            
        }
    }
}

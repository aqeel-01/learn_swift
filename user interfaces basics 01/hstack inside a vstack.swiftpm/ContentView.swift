import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .background(Color.red)
                .frame(width: 200,height:50)
                .background(Color.blue)
                .padding()
            HStack{
                Button("one"){}
                Button("Two"){}
                Button("three"){}
                
            }
        }
    }
}


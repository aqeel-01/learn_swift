import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Little Lemon Restaurant")
            .font(.title)
            .foregroundColor(.gray)
            .padding()
            .background(Color.black)
            .padding(30)
            .padding([.leading,.trailing],20)
            .padding([.top,.bottom], 20)
    }
}

//
//  ContentView.swift
//  tap_me app based on gestures
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var flag = false
    
    var body: some View {
        
       Text("Tap Me")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(15)
            .background(flag ? Color.green: Color.yellow)
            .onTapGesture{
                flag.toggle()
            }
        
        .padding()
    }
}

#Preview {
    ContentView()
}

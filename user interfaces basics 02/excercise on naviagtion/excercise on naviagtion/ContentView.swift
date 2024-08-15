//
//  ContentView.swift
//  excercise on naviagtion
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView{
            VStack{
                Text("Excercise 1")
                NavigationLink(destination:C_TabView())
                {
                    Text("Do soemthing")
                }
            }
            .navigationTitle("Little lemon")
        }
    }
}

#Preview {
    ContentView()
}

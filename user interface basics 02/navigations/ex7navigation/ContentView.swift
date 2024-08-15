//
//  ContentView.swift
//  ex7navigation
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //flat navigation
        TabView{
            Text("make reservation")
                .tabItem({
                Label("reservation", systemImage:"note.text")
            })
            
            Text("Contact us")
                .tabItem({
                Label("contact",systemImage:"phone")
            })
        }
    }
}

#Preview {
    ContentView()
}

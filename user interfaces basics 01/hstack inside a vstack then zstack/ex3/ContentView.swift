//
//  ContentView.swift
//  ex3
//
//  Created by aqeel on 04/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(Color.gray)
            Circle()
                .scale(x:0.75 , y:0.75)
                .foregroundColor(Color.red)
            VStack{
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("hello , world!")
                HStack(spacing: 70){
                    Button("One"){}
                    Button("Two"){}
                }
            }
            
            .frame(maxHeight: .infinity , alignment: .top)
        }
    }
}

#Preview {
    ContentView()
}

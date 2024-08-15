//
//  ContentView.swift
//  littlelemonexcercise4
//
//  Created by aqeel on 04/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView
        {
            VStack{
                ZStack
                {
                    HStack(spacing: 8)
                    {
                        Text("Demo").scaledToFit().frame(
                            width:100, height:100,alignment:.center)
                        VStack(spacing: 10)
                        {
                            Text("little lemon").font(.title)
                            Text("Tomato Tortellini,Bottarga and Carbonara").font(.title3)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                    }
                    .padding()
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}

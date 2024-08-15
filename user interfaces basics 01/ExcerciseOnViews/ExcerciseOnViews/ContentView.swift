//
//  ContentView.swift
//  ExcerciseOnViews
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        
        HStack{
            Rectangle()
                .fill(Color.yellow)
                .frame(width:60, height:60)
            
            Text("Rectanglen One")
                .foregroundColor(.white)
                .padding(20)
                .background(Color.yellow)
            
            
            Rectangle()
                .fill(Color.blue)
                .frame(width:100, height:60)
        }
    }
}

#Preview {
    ParentView()
}

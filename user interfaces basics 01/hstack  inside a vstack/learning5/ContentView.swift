//
//  ContentView.swift
//  learning5
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name : String = ""
    var body: some View {
        VStack{
            TextField("Name", text:$name,
                      prompt:Text("Please enter your name"))
            //.padding()
            .padding()
            HStack (spacing: 40){
                Button("Ok",action:{})
                Button("Cancel", role: .cancel , action : {})
            }
            
        }
       
            .padding()
    }
}

#Preview {
    ContentView()
}

//
//  longPressGestures.swift
//  tutorials on gestures
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct longPressGestures: View {
    var body: some View {
        
        
        Text("Long press to change reservation")
            .onLongPressGesture{
                print("User want to change thier little lemon reservation")
            }
        
            .padding()
        Text("long press to change reservation ")
            .onLongPressGesture(minimumDuration:3)
        {
            print("3 seconds long press detected... user want to change their little lemon reservation!")
        }
        
        
    }
}

#Preview {
    longPressGestures()
}

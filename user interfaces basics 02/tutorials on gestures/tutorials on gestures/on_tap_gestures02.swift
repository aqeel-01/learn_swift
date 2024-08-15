//
//  on_tap_gestures02.swift
//  tutorials on gestures
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct on_tap_gestures02: View {
    var body: some View {
        
        
        Text("Little Lemon Resturant 01 ").onTapGesture
        {
            print("Text Tapped!")
        }
        
        Text("Little Lemon Restaurant 02 ").onTapGesture(count:2)
        {
            print("Text Tapped!")
        }
        
        Text("little lemon Restuarant 03").onLongPressGesture
        {
            print("long press detected")
        }
        
        //on long press gestures variations
        Text("little lemon restuarant 04")
            .onLongPressGesture(minimumDuration:4 , maximumDistance: 15, perform:
                                    {
                print("long press detected!")
            },
            onPressingChanged: {
                state in print( state)
            }
            )
    }
}

#Preview {
    on_tap_gestures02()
}

//
//  ContentView.swift
//  Reservations
//
//  Created by aqeel on 28/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 1
    
    var body: some View {
        VStack {
            MyView()
            Text("little Lemon")
            
            Stepper {
                Text("Reservation for : \(personCount)")
            }
            
        onIncrement: {
            personCount += 1
        }
        onDecrement: {
            personCount = (personCount == 1) ?  1 : personCount - 1
        }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

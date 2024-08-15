//
//  in_detail_scrollview_list.swift
//  tutorial on scroll list and list
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct in_detail_scrollview_list: View {
    
    let elements = ["Reservation","Contacts","Resturant Locations"]
    var body: some View {
        
        List{
            Section(header: Text("Important Information"))
            {
                Text("This List shows information about our restaurant pages")
                    .font(.headline)
            }
            
            ForEach(elements, id:\.self)
            {
                element in Text(element)
            }
            
            Section(footer:Text("More Information"))
            {
                Text("Contact us as (212) 555 32231")
            }
        }
        .padding()
    }
}

#Preview {
    in_detail_scrollview_list()
}

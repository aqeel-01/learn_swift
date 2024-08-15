//
//  excercise_on_displaying_list.swift
//  tutorial on scroll list and list
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct excercise_on_displaying_list: View {
    
   var  menu_items = ["lasagna","fettuccini alferdo","spaghetti","avocato toast","tortellini","Pizza"]
    var body: some View {
        
        VStack{
            List{
                ForEach(menu_items ,id:\.self )
                {
                   menu_items in Text(menu_items)
                }
                
            }
        }
        
        
    }
}

#Preview {
    excercise_on_displaying_list()
}

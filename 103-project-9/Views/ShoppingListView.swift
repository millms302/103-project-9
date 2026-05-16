//
//  ShoppingListView.swift
//  103-project-9
//
//  Created by Mike Miller on 5/16/26.
//

import SwiftUI

struct ShoppingListView: View {
    
    @State private var shoppingList: [String] = ["Eggs", "Bananas"]
    
    var body: some View {
        
        NavigationStack{
            
            // MARK: - MAINSTACK
            VStack{
                
                List(shoppingList, id: \.self) {
                    listItem in Text(listItem)
                } // END OF LIST
                
            }// END MAIN STACK
            .navigationTitle("Add Item")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar{
                Menu {
                    // OPTIONS
                    Button("Sort from A -> Z"){
                        
                    } // END OF BUTTON 1
                    Button("Sort in Reverse Order"){
                        
                    } // END OF BUTTON 2
                } label : {
                    Image(systemName: "arrow.up.arrow.down.circle")
                } // END OF LABEL
            } // END TOOLBAR
        }// END OF NAV STACK
    } // END BODY
} // END SHOPPINGLISTVIEW

#Preview {
    ShoppingListView()
}

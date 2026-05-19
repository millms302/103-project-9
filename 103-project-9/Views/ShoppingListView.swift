//
//  ShoppingListView.swift
//  103-project-9
//
//  Created by Mike Miller on 5/16/26.
//

import SwiftUI

struct ShoppingListView: View {
    
    @State private var shoppingList: [String] = ["Eggs", "Bananas"]
    @State private var item: String = ""
    
    var body: some View {
        
        NavigationStack{
            
            // MARK: - MAINSTACK
            VStack{
                
                List(shoppingList, id: \.self) {
                    listItem in Text(listItem)
                }
                HStack{
                    TextField("Add A New Shopping Item...", text: $item)
                        .padding()
                    Button{
                        addItem()
                    } label: {
                        Image(systemName: "arrowshape.up.circle.fill")
                            .padding()
                            .font(.largeTitle)
                    }
                }
                
                // END OF LIST
                
            }// END MAIN STACK
            .navigationTitle("Add Item")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar{
                Menu {
                    // OPTIONS
                    Button("Sort from A -> Z"){
                        shoppingList.sort()
                        
                    } // END OF BUTTON 1
                    Button("Sort in Reverse Order"){
                        shoppingList.reverse()
                        
                    } // END OF BUTTON 2
                } label : {
                    Image(systemName: "arrow.up.arrow.down.circle")
                } // END OF LABEL
            } // END TOOLBAR
        }// END OF NAV STACK
    } // END BODY
    
    func addItem(){
        
        let trimmedItem = item.trimmingCharacters(in: .whitespaces)
        
        // 1: Must not be empty
        guard !trimmedItem.isEmpty else { return }
        // 2: Must be unique
        guard !shoppingList.contains(where: {$0.lowercased() == trimmedItem.lowercased()}) else { return }
        // 3: Add it to the List
        shoppingList.append(trimmedItem)
        // 4: Clear the text field
        item = ""
    }
    
} // END SHOPPINGLISTVIEW

#Preview {
    ShoppingListView()
}

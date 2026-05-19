//
//  FavoriteMoviesView.swift
//  103-project-9
//
//  Created by Mike Miller on 5/18/26.
//

import SwiftUI

struct FavoriteMoviesView: View {
    @State private var favMovieSet: Set<String> = ["Saving Private Ryan", "Star Wars 3: Revenge of the Sith", "The Lord of the Rings: Return of the King", "Captain America: The Winter Soldier", "Wall-E",]
    @State private var item: String = ""
    
    var body: some View {
        
        NavigationStack{
            // MARK --MAIN STACK--
            List {
                ForEach(Array(favMovieSet).sorted(), id: \.self) {
                    movie in Text(movie)
            }
            }// List(favMovieSet) END
            HStack{
                TextField("Add an Additional Movie", text:
                $item)
                .padding()
                Button{
                    favMovieSet.insert(item)
                    item = ""
                } label: {
                    Image(systemName: "arrowshape.up.circle.fill")
                        .padding()
                        .font(.largeTitle)
                }
            } //HStack END
            
            .navigationTitle("Mike's Favorite Movies")
            .navigationBarTitleDisplayMode(.inline)
        } // NavigationStack END
    } // Var Body END
  
} // Struct FavoriteMoviesview END

#Preview {
    FavoriteMoviesView()
}

//
//  ContentView.swift
//  paintings
//
//  Created by Swamita on 21/10/20.
//

import SwiftUI

struct ContentView: View {
    
    let paintings = Painting.all()
    var body: some View {
        NavigationView {
            List(self.paintings, id: \.name) {
                painting in
                NavigationLink(
                    destination: DetailView(painting: painting))
                {
                    PaintingCell(painting: painting)
                }
            }
            .navigationBarTitle("Paintings")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

struct PaintingCell: View {
    let painting: Painting
    
    var body: some View {
        HStack {
            Image(painting.imageURL)
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .cornerRadius(16)
            VStack (alignment: .leading){
                Text(painting.name)
                Text(painting.painter)
                    .foregroundColor(.gray)
            }
        }
    }
}

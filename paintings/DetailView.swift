//
//  DetailView.swift
//  paintings
//
//  Created by Swamita on 21/10/20.
//

import SwiftUI

struct DetailView: View {
    
    let painting: Painting
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(painting.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            Text(painting.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("by \(painting.painter)")
        } .navigationBarTitle(Text(painting.name), displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(painting: Painting(name: "Monalisa", painter: "Leonardo Da Vinci", imageURL: "mona"))
    }
}

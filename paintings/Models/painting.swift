//
//  painting.swift
//  paintings
//
//  Created by Swamita on 21/10/20.
//

import Foundation

struct Painting {
    let name: String
    let painter: String
    let imageURL: String
}

extension Painting {
    static func all() -> [Painting] {
        return [
        Painting(name: "Monalisa", painter: "Leonardo Da Vinci", imageURL: "mona"),
            Painting(name: "The Starry Night", painter: "Vincent Van Gogh", imageURL: "starry"),
            Painting(name: "Guernica", painter: "Pablo Picasso", imageURL: "guernica"),
            Painting(name: "The Night's Watch", painter: "Rembrandt", imageURL: "watch"),
            Painting(name: "The Last supper", painter: "Leonardo Da Vinci", imageURL: "supper")
        ]
    }
    
}

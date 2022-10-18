//
//  GenreViewModel.swift
//  MyMovies
//
//  Created by Eduardo Bastos on 17/10/22.
//

import UIKit

struct GenreViewViewModel {
    
    private var genre: Genre
    
    init(genre: Genre) {
        self.genre = genre
    }
    
    var title: String {
        return genre.name
    }
    
}

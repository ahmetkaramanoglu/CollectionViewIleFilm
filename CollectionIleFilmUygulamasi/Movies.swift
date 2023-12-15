//
//  Movies.swift
//  CollectionIleFilmUygulamasi
//
//  Created by Ahmet Karamanoğlu on 15.12.2023.
//

import Foundation

class Movies {
    
    var moviesName: String?
    var moviesPriece: Double?
    var moviesImageName: String?
    
    init() {
        
    }
    init(moviesName: String, moviesPriece: Double, moviesImageName: String) {
        self.moviesName = moviesName
        self.moviesPriece = moviesPriece
        self.moviesImageName = moviesImageName
    }
    
}

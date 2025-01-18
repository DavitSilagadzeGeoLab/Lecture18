//
//  Movie.swift
//  Lecture18
//
//  Created by LiziChichua on 18.01.25.
//

struct MovieResponse: Decodable {
    let movies: [Movie]
    
    enum CodingKeys: String, CodingKey {
        case movies = "results"
    }
}

struct Movie: Decodable {
    let name: String?
    let overview: String?
    let posterImage: String?
    let votes: Double?

    enum CodingKeys: String, CodingKey {
        case name = "original_title"
        case overview
        case posterImage = "poster_path"
        case votes = "vote_average"
    }
}

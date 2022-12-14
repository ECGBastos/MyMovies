//
//  Movie.swift
//  MyMovies
//
//  Created by Eduardo Bastos on 16/10/22.
//

import Foundation

public struct GenresResponse: Codable {
    public let genres: [Genre]
}

public struct Genre: Codable {
    public let id: Int
    public let name: String
}

public struct MoviesResponse: Codable {
    public let page: Int
    public let totalResults: Int
    public let totalPages: Int
    public let results: [Movie]
}

public struct Movie: Codable {
    
    public let id: Int
    public let title: String
    public let backdropPath: String?
    public let posterPath: String?
    public let overview: String
    public let releaseDate: Date
    public let voteAverage: Double
    public let genres: [MovieGenre]?
    public let videos: MovieVideoResponse?
    public let credits: CastResponse?
    public let recommendations: MoviesResponse?
    public var posterURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/w300\(posterPath ?? "")")!
    }
    
    public var backdropURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/w500\(backdropPath ?? "")")!
    }
}

public struct MovieGenre: Codable {
    let name: String
}

public struct MovieVideoResponse: Codable {
    public let results: [MovieVideo]
}

public struct MovieVideo: Codable {
    public let id: String
    public let key: String
    public let name: String
    public let site: String
    public let size: Int
    public let type: String
    
    public var backdropURL: URL {
        return URL(string: "https://img.youtube.com/vi/\(key)/hqdefault.jpg")!
    }
}

public struct CastResponse: Codable {
    public let cast: [MovieCast]
}

public struct MovieCast: Codable {
    public let name: String
    public let character: String
    public let profilePath: String?
    public var profileURL: URL {
        return URL(string: "https://image.tmdb.org/t/p/w300\(profilePath ?? "")")!
    }
}


//
//  MoviesListViewController.swift
//  Lecture18
//
//  Created by LiziChichua on 18.01.25.
//

import UIKit

class MoviesListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var movieApiManager: MovieAPIManagerProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieApiManager = MovieAPIManager()
        movieApiManager?.fetchMovies(with: .topRated, completion: { result in
            switch result {
            case .success(let movieResponse):
                print(movieResponse.movies)
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }


}


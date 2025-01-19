//
//  TopRatedCollectionViewCell.swift
//  Lecture18
//
//  Created by LiziChichua on 19.01.25.
//

import UIKit
import Kingfisher

class TopRatedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var coverImageView: UIImageView!
    
    func configure(with movie: Movie) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w300\(movie.posterImage ?? "")") else { return }
        coverImageView.kf.indicatorType = .activity
        coverImageView.kf.setImage(with: url)
    }
}

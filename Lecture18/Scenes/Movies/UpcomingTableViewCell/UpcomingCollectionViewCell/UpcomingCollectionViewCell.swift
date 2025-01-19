//
//  UpcomingCollectionViewCell.swift
//  Lecture18
//
//  Created by LiziChichua on 18.01.25.
//

import UIKit
import Kingfisher

class UpcomingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var votesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.backgroundColor = UIColor.black.cgColor
    }

    func configure(with movie: Movie) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w300\(movie.posterImage ?? "")") else { return }
        
        coverImageView.kf.indicatorType = .activity
        coverImageView.kf.setImage(with: url)
        votesLabel.text = "\(movie.votes ?? 0)⭐️"
    }
}

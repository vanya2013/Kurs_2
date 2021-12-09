//
//  GalleryCollectionViewCell.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 06.12.2021.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {

   
    @IBOutlet weak var galleryImageView: UIImageView?
    
    override func prepareForReuse() {
        super.prepareForReuse()
        galleryImageView = nil
    }
    
    func configure(image: UIImage?)
    {
        galleryImageView?.image = image
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

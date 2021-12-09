//
//  GalleryViewController.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 06.12.2021.
//

import UIKit

class GalleryViewController: UIViewController {

    
    let galleryCellectionViewCell = "GalleryCollectionViewCell"
    let galleryReuseIdentifire = "GalleryReuseIdentifire"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var galleryImagesArray = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionView()
    }
  
}


extension GalleryViewController: UICollectionViewDataSource {
  
    
    func configureCollectionView () {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: galleryCellectionViewCell, bundle: nil), forCellWithReuseIdentifier: galleryReuseIdentifire)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryImagesArray.count
    }
    
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: galleryReuseIdentifire, for: indexPath) as? GalleryCollectionViewCell
        else { return UICollectionViewCell() }
        cell.configure(image: UIImage(named: galleryImagesArray[indexPath.item]))
        return cell
    }
}

extension GalleryViewController: UICollectionViewDelegate {

}

extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.frame.width / 2
        return CGSize(width: cellWidth, height: cellWidth )
    }
}

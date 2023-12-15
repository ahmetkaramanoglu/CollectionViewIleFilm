//
//  FilmCollectionViewCell.swift
//  CollectionIleFilmUygulamasi
//
//  Created by Ahmet Karamanoğlu on 15.12.2023.
//

import UIKit

protocol FilmCollectionViewCellProtocol {
    func sepeteEkle(secilenFilm:Movies,indexPath: IndexPath)
}

class FilmCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var filmImageView: UIImageView!
    
    @IBOutlet weak var filmAdLabel: UILabel!
    
    @IBOutlet weak var filmFiyatLabel: UILabel!
    
    var hucreProtocol: FilmCollectionViewCellProtocol?
    var indexPath: IndexPath?
    var secilenFilm: Movies?
    
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        
        hucreProtocol?.sepeteEkle(secilenFilm: secilenFilm!, indexPath: indexPath!)
    }
    
}

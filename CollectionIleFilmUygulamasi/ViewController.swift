//
//  ViewController.swift
//  CollectionIleFilmUygulamasi
//
//  Created by Ahmet Karamanoğlu on 15.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var filmCollectionView: UICollectionView!
    
    var movies = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let f1 = Movies(moviesName: "Django", moviesPriece: 25.99, moviesImageName: "django")
        let f2 = Movies(moviesName: "Inception", moviesPriece: 32.90, moviesImageName: "inception")
        let f3 = Movies(moviesName: "Bir Zamanlar Anadoluda", moviesPriece: 15.00, moviesImageName: "birzamanlaranadoluda")
        let f4 = Movies(moviesName: "Interstellar", moviesPriece: 10.00, moviesImageName: "interstellar")
        let f5 = Movies(moviesName: "The Hate Ful Eight", moviesPriece: 53.53, moviesImageName: "thehatefuleight")
        let f6 = Movies(moviesName: "The Pianist", moviesPriece: 25.99, moviesImageName: "thepianist")
        
        movies.append(f1)
        movies.append(f2)
        movies.append(f3)
        movies.append(f4)
        movies.append(f5)
        movies.append(f6)
        
        let tasarim = UICollectionViewFlowLayout()
        let genislik = self.filmCollectionView.frame.size.width
        
        tasarim.minimumLineSpacing = 20
        tasarim.minimumInteritemSpacing = 10
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let hucreGenislik = (genislik - 40) / 2
        
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik * 1.8)
        filmCollectionView.collectionViewLayout = tasarim
        
        filmCollectionView.delegate = self
        filmCollectionView.dataSource = self
        
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource,FilmCollectionViewCellProtocol {
    
    func sepeteEkle(secilenFilm: Movies, indexPath: IndexPath) {
//        UserDefaults.setValue(secilenFilm.moviesName!, forKey: "name")
//        UserDefaults.setValue(secilenFilm.moviesPriece!, forKey: "priece")
//        UserDefaults.setValue(secilenFilm.moviesImageName!, forKey: "image")
        UserDefaults.setValue(secilenFilm, forKey: "filmNesne")
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let gelenFilm = movies[indexPath.item]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmCollectionViewCell
        
        cell.filmAdLabel.text = gelenFilm.moviesName!
        cell.filmFiyatLabel.text = "\(gelenFilm.moviesPriece!) TL"
        cell.filmImageView.image = UIImage(named: gelenFilm.moviesImageName!)
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.6
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        cell.secilenFilm = gelenFilm
        
        return cell
    }
}

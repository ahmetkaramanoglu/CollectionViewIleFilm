//
//  BasketViewController.swift
//  CollectionIleFilmUygulamasi
//
//  Created by Ahmet Karamanoğlu on 15.12.2023.
//

import UIKit

class BasketViewController: UIViewController {

    @IBOutlet weak var basketTableView: UITableView!
    
    var moviesName: String?
    var moviesPriece: Double?
    var moviesImageName: String?
    
    var adlar = [String]()
    var fiyatlar = [Double]()
    var resimler = [String]()
    
    var filmler = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        basketTableView.dataSource = self
        basketTableView.delegate = self
        
        var filmNesne = UserDefaults.standard.object(forKey: "filmNesne")
        
//        moviesName = UserDefaults.standard.string(forKey: "name")
//        moviesPriece = UserDefaults.standard.double(forKey: "priece")
//        moviesImageName = UserDefaults.standard.string(forKey: "image")
        
        //Eger hicbir sey eklenmezse direkt olarak uygulama patlar.
//        adlar.append(moviesName!)
//        fiyatlar.append(moviesPriece!)
//        resimler.append(moviesImageName!)
        
        let f1 = Movies(moviesName: "Django", moviesPriece: 25.99, moviesImageName: "django")
        filmler.append(f1)
    }
    

}

extension BasketViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmler.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sepetHucre", for: indexPath) as! BasketTableViewCell
        
        cell.imageView?.image = UIImage(named: filmler[indexPath.row].moviesImageName!)
        cell.sepetAdLabel.text = filmler[indexPath.row].moviesName!
        cell.sepetFiyatLabel.text = "\(filmler[indexPath.row].moviesPriece!)"
        
        return cell
    }
    
}

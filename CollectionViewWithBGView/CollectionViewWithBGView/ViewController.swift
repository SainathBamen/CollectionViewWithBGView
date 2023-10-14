//
//  ViewController.swift
//  CollectionViewWithBGView
//
//  Created by Sainath Bamen on 01/09/23.
//

import UIKit

class ViewController: UIViewController {
    var myImages = ["male","female","male","female","male","female","male","female"]

    @IBOutlet weak var myBgImg: UIImageView!
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.myImg.image = UIImage(named: myImages[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        myBgImg.image = UIImage(named: myImages[indexPath.row])
        
    }
    
    
}


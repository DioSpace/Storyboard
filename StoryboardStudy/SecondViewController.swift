//
//  SecondViewController.swift
//  StoryboardStudy
//
//  Created by hello on 2019/3/14.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    let indentifier = "collectionViewCellid"
    let reuseIdentifierHeader = "sectionHeader"
    let reuseIdentifierFooter = "sectionFooter"
    
    var dataArray = [["A1","B1","C1","D1","E1","F1","G1","H1","I1","J1","K1","L1","M1","N1"],["A2","B2","C2","D2","E2","F2","G2","H2","I2","J2","K2","L2","M2","N2"],["A3","B3","C3","D3","E3","F3","G3","H3","I3","J3","K3","L3","M3","N3"],["A4","B4","C4","D4","E4","F4","G4","H4","I4","J4","K4","L4","M4","N4"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        //Layout大小 长与宽
        layout.itemSize = CGSize(width:100,height:100)
        //列间距,行间距,偏移
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        myCollectionView.collectionViewLayout = layout
        myCollectionView?.delegate = self
        myCollectionView?.dataSource = self
    }

}

extension SecondViewController:UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: indentifier, for: indexPath) as! CollectionViewCell
        cell.value = dataArray[indexPath.section][indexPath.row]
        return cell
    }
    
}

extension SecondViewController:UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dataArray.count
    }
}

extension SecondViewController:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize.init(width: self.view.bounds.width, height: 150)
    }
    //Collectionview的footer
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize.init(width: self.view.bounds.width, height: 150)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        var reusableview = UICollectionReusableView()
        
        if kind == UICollectionView.elementKindSectionHeader {
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: reuseIdentifierHeader, for: indexPath)
            reusableview = headerView
        }
        else if kind == UICollectionView.elementKindSectionFooter {
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: reuseIdentifierFooter, for: indexPath)
            reusableview = footerView
        }
        return reusableview
    }
}

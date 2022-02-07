//
//  CollectionView.swift
//  cgps_nav
//
//  Created by Lucas Libshutz on 1/21/22.
//

import UIKit

class MyCollectionView: UICollectionView, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! CollectionViewCell
        
        cell.className.layer.borderWidth = 2
        cell.teacher.layer.borderWidth = 2
        cell.room.layer.borderWidth = 2
        
        cell.className.text = String(data[indexPath.item].className)
        cell.teacher.text = String(data[indexPath.item].teacher)
        cell.room.text = String(data[indexPath.item].room)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 500, height: 500)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfSections section: Int) -> Int
    {
        return 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.dataSource = self
        self.delegate = self
        
        data.append(classInfo(className: "Mobile App Design", teacher: "Mr. Schott", room: ""))
        
    }
    var data: [classInfo] = []
}



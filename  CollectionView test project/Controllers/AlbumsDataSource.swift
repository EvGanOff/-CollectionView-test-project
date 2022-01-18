//
//  AlbumsDataSource.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 1/13/22.
//

import Foundation
import UIKit

extension AlbumsViewConroller: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var numberOfCells: Int = 0
        switch section {
        case 0:
            numberOfCells = AlbumsModel.firstSection.count
        case 1:
            numberOfCells = AlbumsModel.secondSection.count
        case 2:
            numberOfCells = AlbumsModel.thirdSection.count
        default:
            break
        }
        return numberOfCells
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbumsCell.identifier, for: indexPath) as! MyAlbumsCell
            firstCell.data = AlbumsModel.firstSection[indexPath.row]
            return firstCell
        case 1:
            let secondCell = collectionView.dequeueReusableCell(withReuseIdentifier: PeopleAndPlacesCell.identifier, for: indexPath) as! PeopleAndPlacesCell
            secondCell.data = AlbumsModel.secondSection[indexPath.row]
            return secondCell
        case 2:
            let thirdCell = collectionView.dequeueReusableCell(withReuseIdentifier: TypesOfMediaCell.identifier, for: indexPath) as! TypesOfMediaCell
            thirdCell.data = AlbumsModel.secondSection[indexPath.row]
        default:
            return UICollectionViewCell()
        }

    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch indexPath.section {
        case 0:
            let firstHeader = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: HeaderMyAlbumsCell.identifier,
                for: indexPath) as! HeaderMyAlbumsCell
            return firstHeader
        case 1:
            let secondHeader = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: HeaderPeopleAndPlacesCell.identifier,
                for: indexPath) as! HeaderPeopleAndPlacesCell
            return secondHeader
        default:
            return UICollectionReusableView()
        }
    }
}

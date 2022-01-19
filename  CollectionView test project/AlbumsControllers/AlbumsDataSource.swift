//
//  AlbumsDataSource.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 1/13/22.
//

import Foundation
import UIKit

extension AlbumsViewConroller: UICollectionViewDataSource {

    //MARK: - NumberOfSections

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }

    //MARK: - numberOfItemsInSection


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var numberOfCells: Int = 0
        switch section {
        case 0:
            numberOfCells = AlbumsModel.sectionOfMainAlbum.count
        case 1:
            numberOfCells = AlbumsModel.sectionOfPeopleAndPlace.count
        case 2:
            numberOfCells = AlbumsModel.sectionOfTypesOfMedia.count
        case 3:
            numberOfCells = AlbumsModel.sectionOfOther.count
        default:
            break
        }
        return numberOfCells
    }

    //MARK: - cellForItemAt


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbumsCell.identifier, for: indexPath) as! MyAlbumsCell
            firstCell.data = AlbumsModel.sectionOfMainAlbum[indexPath.row]
            return firstCell
        case 1:
            let secondCell = collectionView.dequeueReusableCell(withReuseIdentifier: PeopleAndPlacesCell.identifier, for: indexPath) as! PeopleAndPlacesCell
            secondCell.data = AlbumsModel.sectionOfPeopleAndPlace[indexPath.row]
            return secondCell
        case 2:
            let thirdCell = collectionView.dequeueReusableCell(withReuseIdentifier: TypesOfMediaCell.identifier, for: indexPath) as! TypesOfMediaCell
            thirdCell.data = AlbumsModel.sectionOfTypesOfMedia[indexPath.row]
            return thirdCell
        case 3:
            let fourCell = collectionView.dequeueReusableCell(withReuseIdentifier: OtherCell.identifier, for: indexPath) as! OtherCell
            fourCell.data = AlbumsModel.sectionOfOther[indexPath.row]
            return fourCell
        default:
            return UICollectionViewCell()
        }
    }

    //MARK: - viewForSupplementaryElementOfKind

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
        case 2:
            let thirdHeader = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: HeaderTypesOfMediaCell.identifier,
                for: indexPath) as! HeaderTypesOfMediaCell
            return thirdHeader
        case 3:
            let fourHeader = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: HeaderOtherCell.identifier,
                for: indexPath) as! HeaderOtherCell
            return fourHeader
        default:
            return UICollectionReusableView()
        }
    }
}

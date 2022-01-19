//
//  Model.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 12/19/21.
//

import Foundation
import UIKit


struct AlbumsModel {
    var image: UIImage?
    var title: String
    var number: Int
}

extension AlbumsModel {
    static let sectionOfMainAlbum = [
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Здания", number: 1),
        AlbumsModel(image: UIImage(named: "pic_2"), title: "Здания", number: 2),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Здания", number: 3),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Здания", number: 2),
        AlbumsModel(image: UIImage(named: "pic_4"), title: "Здания", number: 4),
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Здания", number: 1),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Здания", number: 2),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Здания", number: 4)
    ]

    static let sectionOfPeopleAndPlace = [
        AlbumsModel(image: UIImage(named: "pic_4"), title: "Здания", number: 21),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Здания", number: 8),
        AlbumsModel(image: UIImage(named: "pic_2"), title: "Здания", number: 12),
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Здания", number: 4),
        AlbumsModel(image: UIImage(named: "pic_4"), title: "Здания", number: 21)
    ]

    static let sectionOfTypesOfMedia = [
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Facebook", number: 8),
        AlbumsModel(image: UIImage(named: "pic_2"), title: "Instagram", number: 12),
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Snapchat", number: 4)
    ]

    static let sectionOfOther = [
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Facebook", number: 8),
        AlbumsModel(image: UIImage(named: "pic_2"), title: "Instagram", number: 12),
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Snapchat", number: 4)
    ]
}

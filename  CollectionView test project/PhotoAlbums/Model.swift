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
    static let firstSection = [
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Weird Buildings", number: 1),
        AlbumsModel(image: UIImage(named: "pic_2"), title: "Old Monuments", number: 2),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Factories", number: 3),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "TV Towers", number: 2),
        AlbumsModel(image: UIImage(named: "pic_4"), title: "Street Artists", number: 4),
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Shadow and Light", number: 1),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Bridges", number: 2),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Trains", number: 4)
    ]

    static let secondSection = [
        AlbumsModel(image: UIImage(named: "pic_4"), title: "TV Towers", number: 21),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Weird Buildings", number: 8),
        AlbumsModel(image: UIImage(named: "pic_2"), title: "Old Monuments", number: 12),
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Factories", number: 4),
        AlbumsModel(image: UIImage(named: "pic_4"), title: "TV Towers", number: 21)
    ]

    static let thirdSection = [
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Facebook", number: 8),
        AlbumsModel(image: UIImage(named: "pic_2"), title: "Instagram", number: 12),
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Snapchat", number: 4)
    ]

    static let fourSection = [
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Facebook", number: 8),
        AlbumsModel(image: UIImage(named: "pic_2"), title: "Instagram", number: 12),
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Snapchat", number: 4)
    ]
}

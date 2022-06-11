//
//  Model.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 12/19/21.
//

import UIKit

struct AlbumsModel {
    var image: UIImage?
    var title: String
    var number: Int
}

extension AlbumsModel {
    static let sectionOfMainAlbum = [
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Недавние", number: 1),
        AlbumsModel(image: UIImage(named: "pic_2"), title: "Избранное", number: 2),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Instagram", number: 3),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "InShot", number: 2),
        AlbumsModel(image: UIImage(named: "pic_4"), title: "Lightroom", number: 4),
        AlbumsModel(image: UIImage(named: "pic_3"), title: "WhatsApp", number: 1),
        AlbumsModel(image: UIImage(named: "mem"), title: "Мемасы", number: 2),
        AlbumsModel(image: UIImage(named: "pic_1"), title: "Пейзаж", number: 4)
    ]

    static let sectionOfPeopleAndPlace = [
        AlbumsModel(image: UIImage(named: "pic_4"), title: "Люди", number: 21),
        AlbumsModel(image: UIImage(named: "380274"), title: "Здания", number: 8),
        AlbumsModel(image: UIImage(named: "pic_2"), title: "Фото", number: 12),
        AlbumsModel(image: UIImage(named: "pic_3"), title: "Прочее", number: 4),
        AlbumsModel(image: UIImage(named: "pic_4"), title: "Здания", number: 21)
    ]

    static let sectionOfTypesOfMedia = [
        AlbumsModel(image: UIImage(named: "facebook"), title: "Facebook", number: 8),
        AlbumsModel(image: UIImage(named: "insta"), title: "Instagram", number: 12),
        AlbumsModel(image: UIImage(named: "snapchat"), title: "Snapchat", number: 4)
    ]

    static let sectionOfOther = [
        AlbumsModel(image: UIImage(systemName: "video"), title: "Видео", number: 38),
        AlbumsModel(image: UIImage(systemName: "person.crop.rectangle"), title: "Селфи", number: 8),
        AlbumsModel(image: UIImage(systemName: "livephoto"), title: "Фото Live Photos", number: 35),
        AlbumsModel(image: UIImage(systemName: "infinity"), title: "Замедленно", number: 1),
        AlbumsModel(image: UIImage(systemName: "record.circle"), title: "Снимки экрана", number: 10),
        AlbumsModel(image: UIImage(systemName: "bag.badge.plus"), title: "Импортированные", number: 2)
    ]
}

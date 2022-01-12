//
//  Model.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 12/19/21.
//

import Foundation
import UIKit

struct PhotoAlbum {
    var type: ModelCellType
    var image: UIImageView
    var title: String
    var number: String
}
enum ModelCellType {
    case cellMyAlbums
//    case cellPeopleAndPlaces
//    case cellTypesOfMedia
}


extension AlbumsViewConroller {
    static var sectionData = [ "Section0": [PhotoAlbum(
                                type: .cellMyAlbums,
                                image: UIImageView.init(image: UIImage(named: "pic_1")!),
                                title: "Недавние",
                                number: "9 259"),
                              PhotoAlbum(
                                type: .cellMyAlbums,
                                image: UIImageView.init(image: UIImage(named: "pic_1")!),
                                title: "Избранное",
                                number: "123"),
                              PhotoAlbum(
                                type: .cellMyAlbums,
                                image: UIImageView.init(image: UIImage(named: "pic_1")!),
                                title: "Instagram",
                                number: "654"),
                              PhotoAlbum(
                                type: .cellMyAlbums,
                                image: UIImageView.init(image: UIImage(named: "pic_1")!),
                                title: "WhatsApp",
                                number: "14"),
                              PhotoAlbum(
                                type: .cellMyAlbums,
                                image: UIImageView.init(image: UIImage(named: "pic_1")!),
                                title: "FaceApp",
                                number: "321"),
                              PhotoAlbum(
                                type: .cellMyAlbums,
                                image: UIImageView.init(image: UIImage(named: "pic_1")!),
                                title: "Gradient",
                                number: "456"),
                              PhotoAlbum(
                                type: .cellMyAlbums,
                                image: UIImageView.init(image: UIImage(named: "pic_1")!),
                                title: "Movavi Clips",
                                number: "321"),
                              PhotoAlbum(
                                type: .cellMyAlbums,
                                image: UIImageView.init(image: UIImage(named: "pic_1")!),
                                title: "Недавние",
                                number: "456")]
]}

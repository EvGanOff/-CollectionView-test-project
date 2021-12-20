//
//  Model.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 12/19/21.
//

import Foundation
import UIKit

struct PhotoAlbum {
    var title: String
    var image: UIImage?
    var number: Int
}

extension PhotoAlbum {
    static let firstSection = [
        PhotoAlbum(title: <#T##String#>, image: <#T##UIImage?#>, number: <#T##Int#>),
        PhotoAlbum(title: <#T##String#>, image: <#T##UIImage?#>, number: <#T##Int#>),
        PhotoAlbum(title: <#T##String#>, image: <#T##UIImage?#>, number: <#T##Int#>),
        PhotoAlbum(title: <#T##String#>, image: <#T##UIImage?#>, number: <#T##Int#>)]
}

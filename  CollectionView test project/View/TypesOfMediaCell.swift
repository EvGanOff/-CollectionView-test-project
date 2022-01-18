//
//  TypesOfMediaCell.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 1/6/22.
//

import Foundation
import UIKit

class TypesOfMediaCell: UICollectionViewCell {
    static let identifier = "TypesOfMediaCell"

    // MARK: - Properties

    var data: AlbumsModel? {
        didSet {
            guard let data = data else { return }
            titleImage.image = data.image
            titleLabel.text = data.title
            numberLabel.text = String(data.number)
        }
    }

    
}

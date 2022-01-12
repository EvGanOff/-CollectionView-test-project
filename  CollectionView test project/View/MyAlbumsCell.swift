//
//  MyAlbumsCell.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 1/6/22.
//

import Foundation
import UIKit

class MyAlbumsCell: UICollectionViewCell {
    
    static let identifier = "MyAlbumsCell"

    // MARK: - Properties

    lazy var titleLable: UILabel = {
        let lable = UILabel()
        lable.font = MetricMyAlbums.labelFont
        return lable
    }()

    lazy var numberLable: UILabel = {
        let lable = UILabel()
        lable.textColor = .systemGray3
        lable.font = MetricMyAlbums.labelFont
        return lable
    }()

    lazy var titleImage: UIImageView = {
        let image = UIImageView()
        return image
    }()

    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: -

    override func layoutSubviews() {
        setupHierarchy()
        setupLayout()
    }

// MARK: - SetupHierarchy

    func setupHierarchy() {
        contentView.addSubview(titleLable)
        contentView.addSubview(numberLable)
        contentView.addSubview(titleImage)
    }

    // MARK: - SetupHierarchy

    func setupLayout() {
        titleImage.layer.cornerRadius = 5
        titleImage.clipsToBounds = true
        titleImage.contentMode = UIView.ContentMode.scaleAspectFill

        NSLayoutConstraint.activate([
            titleImage.topAnchor.constraint(equalTo: contentView.topAnchor,
                constant: MetricMyAlbums.titleImageTopAnchorConstant),
            titleImage.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            titleImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor,
                constant: MetricMyAlbums.titleImageLeadingAnchorConstant),
            titleImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                constant: MetricMyAlbums.titleImageTrailingAnchorConstant),
            titleLable.topAnchor.constraint(equalTo: contentView.topAnchor,
                constant: MetricMyAlbums.titleLabelTopAnchorConstant),
            titleLable.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                constant: MetricMyAlbums.titleLabelLeadingAnchorConstant),
            titleLable.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                constant: MetricMyAlbums.titleLabelTrailingAnchorConstant),
            numberLable.topAnchor.constraint(equalTo: contentView.topAnchor,
                constant: MetricMyAlbums.titleNumberTopAnchorConstant),
            numberLable.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                constant: MetricMyAlbums.titleNumberLeadingAnchorConstant),
            numberLable.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                constant: MetricMyAlbums.titleNumberTrailingAnchorConstant)
        ])
    }
}


// MARK: - Metric

struct MetricMyAlbums {

    static let labelFont = UIFont(name: "system", size: 18)

    static let titleImageTopAnchorConstant: CGFloat = 5
    static let titleImageLeadingAnchorConstant: CGFloat = 5
    static let titleImageTrailingAnchorConstant: CGFloat = -5

    static let titleLabelTopAnchorConstant: CGFloat = 5
    static let titleLabelLeadingAnchorConstant: CGFloat = 5
    static let titleLabelTrailingAnchorConstant: CGFloat = 5

    static let titleNumberTopAnchorConstant: CGFloat = 5
    static let titleNumberLeadingAnchorConstant: CGFloat = 5
    static let titleNumberTrailingAnchorConstant: CGFloat = 5
}

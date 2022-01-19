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

    var data: AlbumsModel? {
        didSet {
            guard let data = data else { return }
            titleImage.image = data.image
            titleLabel.text = data.title
            numberLabel.text = String(data.number)
        }
    }

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = MetricMyAlbumsCell.labelFont
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()

    lazy var numberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray3
        label.font = MetricMyAlbumsCell.labelFont
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        return label
    }()

    lazy var titleImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 15
        return image
    }()

    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - LayoutSubviews

    override func layoutSubviews() {
        setupHierarchy()
        setupLayout()
    }

    // MARK: - SetupHierarchy

   private func setupHierarchy() {
       [titleImage, titleLabel, numberLabel].forEach { contentView.addSubview($0) }
    }

    // MARK: - SetupLayout

    private func setupLayout() {
        titleImage.layer.cornerRadius = 5
        titleImage.clipsToBounds = true
        titleImage.contentMode = UIView.ContentMode.scaleAspectFill

        NSLayoutConstraint.activate([
            titleImage.topAnchor.constraint(equalTo: contentView.topAnchor,
                constant: MetricMyAlbumsCell.titleImageTopAnchorConstant),
            titleImage.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            titleImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor,
                constant: MetricMyAlbumsCell.titleImageLeadingAnchorConstant),
            titleImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                constant: MetricMyAlbumsCell.titleImageTrailingAnchorConstant),
            titleLabel.topAnchor.constraint(equalTo: titleImage.bottomAnchor, constant: MetricMyAlbumsCell.titleLabelTopAnchorConstant),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: MetricMyAlbumsCell.titleLabelLeadingAnchorConstant),
            titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor),

            numberLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor)
        ])
    }
}


    // MARK: - Metrics

struct MetricMyAlbumsCell {

    static let labelFont = UIFont(name: "system", size: 18)

    static let titleImageTopAnchorConstant: CGFloat = 5
    static let titleImageLeadingAnchorConstant: CGFloat = 5
    static let titleImageTrailingAnchorConstant: CGFloat = -5

    static let titleLabelTopAnchorConstant: CGFloat = 7
    static let titleLabelLeadingAnchorConstant: CGFloat = 5
    static let titleLabelTrailingAnchorConstant: CGFloat = 5

    static let titleNumberTopAnchorConstant: CGFloat = 5
    static let titleNumberLeadingAnchorConstant: CGFloat = 5
    static let titleNumberTrailingAnchorConstant: CGFloat = 5
}

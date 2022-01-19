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

    lazy var titleImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 15
        image.clipsToBounds = true
        image.layer.masksToBounds = true
        return image
    }()

    lazy var titleLabel: UILabel = {
        let lable = UILabel()
        lable.font = MetricsTypesOfMediaСell.labelFont
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.textAlignment = .left
        lable.textColor = .black
        return lable
    }()

    lazy var numberLabel: UILabel = {
        let lable = UILabel()
        lable.textColor = .systemGray3
        lable.font = MetricsTypesOfMediaСell.labelFont
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.textAlignment = .left
        lable.textColor = .systemGray2
        return lable
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
        contentView.addSubview(titleImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(numberLabel)
    }

    // MARK: - SetupLayout

    private func setupLayout() {
        NSLayoutConstraint.activate([
                titleImage.topAnchor.constraint(
                    equalTo: contentView.topAnchor,
                    constant: MetricsTypesOfMediaСell.titleImageTopAnchorConstant),
                titleImage.leadingAnchor.constraint(
                    equalTo: contentView.leadingAnchor),
                titleImage.widthAnchor.constraint(
                    equalToConstant: MetricsTypesOfMediaСell.titleImageWidthAnchorConstant),
                titleImage.heightAnchor.constraint(
                    equalToConstant: MetricsTypesOfMediaСell.titleImageHeightAnchorConstant),

                titleLabel.topAnchor.constraint(
                    equalTo: titleImage.topAnchor,
                    constant: MetricsTypesOfMediaСell.titleLabelTopAnchorConstant),
                titleLabel.leadingAnchor.constraint(
                    equalTo: titleImage.leadingAnchor,
                    constant: MetricsTypesOfMediaСell.titleLabelLeadingAnchorConstant),

                numberLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
                numberLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
                numberLabel.trailingAnchor.constraint(
                    equalTo: contentView.trailingAnchor,
                    constant: MetricsTypesOfMediaСell.titleNumberTrailingAnchorConstant)
        ])
    }

    //MARK: - Metrics

    struct MetricsTypesOfMediaСell {

        static let labelFont = UIFont(name: "system", size: 18)

        static let titleImageTopAnchorConstant: CGFloat = 5
        static let titleImageWidthAnchorConstant: CGFloat = 30
        static let titleImageHeightAnchorConstant: CGFloat = 30

        static let titleLabelTopAnchorConstant: CGFloat = 5
        static let titleLabelLeadingAnchorConstant: CGFloat = 50

        static let titleNumberTrailingAnchorConstant: CGFloat = -40
    }
}

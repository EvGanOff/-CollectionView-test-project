//
//  HeaderTypesOfMediaCell.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 1/18/22.
//

import Foundation
import UIKit

class HeaderTypesOfMediaCell: UICollectionReusableView {
    
    static let identifier = "HeaderTypesOfMediaCell"

    //MARK: - Properties

    private lazy var container: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.clipsToBounds = true
        return container
    }()

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Медиафайлы"
        label.font = MetricsHeaderCellTypesOfMedia.labelFont
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()

    private lazy var showAllLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Все"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .left
        label.textColor = .link
        return label
    }()

    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
    }

    // MARK: - SetupHierarchy

    private func setupHierarchy() {
        addSubview(container)
        container.addSubview(titleLabel)
        container.addSubview(showAllLabel)
    }

    // MARK: - SetupLayout

    private func setupLayout() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor),
            container.leadingAnchor.constraint(equalTo: leadingAnchor),
            container.trailingAnchor.constraint(equalTo: trailingAnchor),
            container.widthAnchor.constraint(equalTo: widthAnchor),
            container.heightAnchor.constraint(equalTo: heightAnchor),

            titleLabel.leadingAnchor.constraint(
                equalTo: container.leadingAnchor,
                constant: MetricsHeaderCellTypesOfMedia.labelLeadingAnchorConstant),
            titleLabel.centerYAnchor.constraint(
                equalTo: container.centerYAnchor),

            showAllLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: MetricsHeaderCellTypesOfMedia.buttonTrailingAnchorConstant),
            showAllLabel.centerYAnchor.constraint(equalTo: container.centerYAnchor)
        ])
    }
}

// MARK: - Metrics

struct MetricsHeaderCellTypesOfMedia {

    static let labelFont: UIFont = .boldSystemFont(ofSize: 25)
    static let labelLeadingAnchorConstant: CGFloat = 5
    static let buttonTrailingAnchorConstant: CGFloat = -15
}


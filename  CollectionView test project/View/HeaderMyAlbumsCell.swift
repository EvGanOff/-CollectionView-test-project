//
//  HeaderMyAlbumsCell.swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 1/11/22.
//

import Foundation
import UIKit

class HeaderMyAlbumsCell: UICollectionReusableView {

    static let identifier = "HeaderMyAlbumsCell"
    
    // MARK: - Properties
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Мои альбомы"
        label.textColor  = .white
        label.font = MetricHeaderMyAlbums.labelFont
        label.textAlignment = .left
        return label
    }()

    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("См. все", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    } ()

    // MARK: - Actions

    @objc private func buttonAction() {
        print("Нажата кнопка: См. все")
    }

    // MARK: - Setup Layout

    public func configure() {
        addSubview(label)
        addSubview(button)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.topAnchor,
                constant: MetricHeaderMyAlbums.labeleTopAnchorConstant),
            label.leadingAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.leadingAnchor,
                constant: MetricHeaderMyAlbums.labelLeadingAnchorConstant),
            button.topAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.topAnchor),
            button.trailingAnchor.constraint(
                equalTo: self.safeAreaLayoutGuide.trailingAnchor,
                constant: MetricHeaderMyAlbums.buttonTrailingAnchorConstant)
        ])
    }
}

// MARK: - Metric

struct MetricHeaderMyAlbums {

    static let labelFont: UIFont = .boldSystemFont(ofSize: 18)

    static let labeleTopAnchorConstant: CGFloat = 10
    static let labelLeadingAnchorConstant: CGFloat = 5

    static let buttonTrailingAnchorConstant: CGFloat = -10
}

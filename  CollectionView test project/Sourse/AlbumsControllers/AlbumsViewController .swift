//
//  AlbumsViewController .swift
//   CollectionView test project
//
//  Created by Евгений Ганусенко on 12/26/21.
//

import Foundation
import UIKit

class AlbumsViewConroller: UIViewController {

    // MARK: - Properties

    lazy var collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createCompositionalLayout())
        collectionView.register(MyAlbumsCell.self, forCellWithReuseIdentifier: MyAlbumsCell.identifier)
        collectionView.register(HeaderMyAlbumsCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderMyAlbumsCell.identifier)
        collectionView.register(PeopleAndPlacesCell.self, forCellWithReuseIdentifier: PeopleAndPlacesCell.identifier)
        collectionView.register(HeaderPeopleAndPlacesCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderPeopleAndPlacesCell.identifier)
        collectionView.register(TypesOfMediaCell.self, forCellWithReuseIdentifier: TypesOfMediaCell.identifier)
        collectionView.register(HeaderTypesOfMediaCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderTypesOfMediaCell.identifier)
        collectionView.register(OtherCell.self, forCellWithReuseIdentifier: OtherCell.identifier)
        collectionView.register(HeaderOtherCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderOtherCell.identifier)

        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white

        return collectionView
    }()
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Альбомы"
        view.backgroundColor = .white
        setupLayout()
    }

    //MARK: - Setup Layout

    private func setupLayout() {

        view.addSubview(collectionView)

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(
                equalTo: view.topAnchor,
                constant: MetricsAlbumsViewConroller.collectionViewTopAnchorConstant),
            collectionView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: MetricsAlbumsViewConroller.collectionViewLeadingAnchorConstant),
            collectionView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: MetricsAlbumsViewConroller.collectionViewTrailingAnchorConstant),
            collectionView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
    }
}

extension AlbumsViewConroller {

    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in

            switch sectionNumber {
            case 0: return self.layoutSectionCellAlbumsViewCellCell()
            case 1: return self.layoutSectionPeopleAndPlacesCell()
            case 2: return self.layoutSectionTypesOfMediaCell()
            case 3: return self.layoutSectionOtherCell()
            default:
                return self.layoutSectionPeopleAndPlacesCell()
            }
        }
    }

    //MARK: - layoutSectionCellAlbumsViewCellCell

    func layoutSectionCellAlbumsViewCellCell() -> NSCollectionLayoutSection {

        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricsAlbumsViewConroller.collectionLayoutSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutSizeAbsolute))

        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)

        let itemSize = NSCollectionLayoutSize(
            widthDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutItemSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutItemSizeFractionalAbsolute))

        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 0)

        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutItemSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutGroupSizeFractionalAbsolute)
        )

        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])

        let section = NSCollectionLayoutSection(group: group)
        section.boundarySupplementaryItems = [sectionHeader]
        section.contentInsets = .init(top: 10, leading: 0, bottom: 5, trailing: 0)
        section.orthogonalScrollingBehavior = .continuous

        return section
    }

    //MARK: - layoutSectionPeopleAndPlacesCell

    func layoutSectionPeopleAndPlacesCell() -> NSCollectionLayoutSection {

        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricsAlbumsViewConroller.collectionLayoutSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutSizeAbsolute))

        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)

        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricsAlbumsViewConroller.collectionLayoutSizeFractionalWidth),
            heightDimension: .fractionalHeight(MetricsAlbumsViewConroller.collectionLayoutSizeFractionalHeight))

        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 0)


        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutItemSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutItemSizeFractionalAbsolute)
        )

        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = .init(top: 10, leading: 0, bottom: 5, trailing: 0)
        section.boundarySupplementaryItems = [sectionHeader]
        return section
    }

    //MARK: - layoutSectionTypesOfMediaCell

    private func layoutSectionTypesOfMediaCell() -> NSCollectionLayoutSection {

        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricsAlbumsViewConroller.collectionLayoutSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutSizeAbsolute))

        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)

        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricsAlbumsViewConroller.collectionLayoutSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutSizeAbsolute))

        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricsAlbumsViewConroller.collectionLayoutSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutItemSizeFractionalAbsolute))

        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])

        let section = NSCollectionLayoutSection(group: group)
        section.boundarySupplementaryItems = [sectionHeader]
        section.contentInsets = .init(top: 10, leading: 0, bottom: 5, trailing: 0)
        section.orthogonalScrollingBehavior = .continuous

        return section
    }

    //MARK: - layoutSectionOtherCell

    private func layoutSectionOtherCell() -> NSCollectionLayoutSection {

        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricsAlbumsViewConroller.collectionLayoutSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutSizeAbsolute))

        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)

        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricsAlbumsViewConroller.collectionLayoutSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutSizeAbsolute))

        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricsAlbumsViewConroller.collectionLayoutSizeFractionalWidth),
            heightDimension: .absolute(MetricsAlbumsViewConroller.collectionLayoutGroupSizeFractionalAbsolute))

        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])

        let section = NSCollectionLayoutSection(group: group)
        section.boundarySupplementaryItems = [sectionHeader]
        section.contentInsets = .init(top: 10, leading: 0, bottom: 5, trailing: 0)
        section.orthogonalScrollingBehavior = .continuous

        return section
    }
    //MARK: - Metrics

    private struct MetricsAlbumsViewConroller {
        static let collectionViewTopAnchorConstant: CGFloat = 8
        static let collectionViewLeadingAnchorConstant: CGFloat = 8
        static let collectionViewTrailingAnchorConstant: CGFloat = -8

        static let collectionLayoutSizeFractionalWidth: CGFloat = 1
        static let collectionLayoutSizeFractionalHeight: CGFloat = 1
        static let collectionLayoutSizeAbsolute: CGFloat = 50
        static let collectionLayoutItemSizeFractionalWidth: CGFloat = 180
        static let collectionLayoutItemSizeFractionalAbsolute: CGFloat = 240
        static let collectionLayoutGroupSizeFractionalAbsolute: CGFloat = 480
    }
}


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

        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false

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
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 5),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
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
            default:
                return self.layoutSectionPeopleAndPlacesCell()
            }
        }
    }

    func layoutSectionCellAlbumsViewCellCell() -> NSCollectionLayoutSection {

        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(50))

        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)

        sectionHeader.pinToVisibleBounds = true
        sectionHeader.zIndex = Int.max

        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1))

        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(180),
            heightDimension: .absolute(260)
        )

        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                      leading: 0,
                                                      bottom: 60,
                                                      trailing: 0)
        group.interItemSpacing = .fixed(60)

        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.boundarySupplementaryItems = [sectionHeader]
        return section
    }

    func layoutSectionPeopleAndPlacesCell() -> NSCollectionLayoutSection {
        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(50))

        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)

        sectionHeader.pinToVisibleBounds = true
        sectionHeader.zIndex = Int.max

        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1))

        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(180),
            heightDimension: .absolute(260)
        )

        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                      leading: 0,
                                                      bottom: 60,
                                                      trailing: 0)
        group.interItemSpacing = .fixed(60)

        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.boundarySupplementaryItems = [sectionHeader]
        return section
    }

}





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

    private lazy var collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        collectionView.register(MyAlbumsCell.self, forCellWithReuseIdentifier: "MyAlbumsCell")
        collectionView.register(HeaderMyAlbumsCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderMyAlbumsCell.identifier)

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        return collectionView
    }()
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Альбомыыыыыыыыы" 
        view.backgroundColor = .white
        setupLayout()
    }

    //MARK: - Setup Layout

    private func setupLayout() {

        view.addSubview(collectionView)

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }

}

extension AlbumsViewConroller: UICollectionViewDelegate {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }

}



extension AlbumsViewConroller: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AlbumsViewConroller.sectionData["Section\(section)"]?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard  let data = AlbumsViewConroller.sectionData["Section\(indexPath.section)"]?[indexPath.row] else { return UICollectionViewCell() }
//        guard let data = collectionView.dequeueReusableCell(withReuseIdentifier: "MyAlbumsCell", for: indexPath) as? MyAlbumsCell  else { return UICollectionViewCell() }
        switch data.type {
        case .cellMyAlbums:
            return setupMyAlbums(for: indexPath, with: data)
        }
    }

        func setupMyAlbums(for indexPath: IndexPath, with data: PhotoAlbum) -> UICollectionViewCell {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyAlbumsCell", for: indexPath) as? MyAlbumsCell else { return UICollectionViewCell() }

            cell.titleLable.text = data.title
            cell.numberLable.text = data.number
            cell.titleImage = data.image
            return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerCellMyAlbums =  collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderMyAlbumsCell.identifier, for: indexPath) as! HeaderMyAlbumsCell
        guard  let data = AlbumsViewConroller.sectionData["Section\(indexPath.section)"]?[indexPath.row] else { return UICollectionViewCell() }

        switch data.type {
        case .cellMyAlbums:
            headerCellMyAlbums.configure()
            return headerCellMyAlbums
        }
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Press cell: \(String(describing: AlbumsViewConroller.sectionData["Section\(indexPath.section)"]?[indexPath.row].title))")
    }
}

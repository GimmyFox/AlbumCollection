//
//  AlbumsViewController.swift
//  AlbumCollection
//
//  Created by Maksim Guzeev on 30.12.2021.
//

import UIKit

class AlbumsViewController: UIViewController {
    
    private lazy var collectionView: UICollectionView = {
        
        let viewLayout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        collectionView.collectionViewLayout = createCollectionViewLayout()
        
        
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Альбомы"
        
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    func setupHierarchy() {
        view.addSubview(collectionView)
    }
    
    func setupLayout() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
    
    func createCollectionViewLayout() -> UICollectionViewCompositionalLayout {
        
        return UICollectionViewCompositionalLayout { (sectionNumber, _) -> NSCollectionLayoutSection? in
            
            switch sectionNumber {
            case 0: return self.myAlbumSection()
            case 1: return self.sharedSection()
            case 2: return self.mediafilesSection()
            default: return self.otherSection()
            }
        }
    }
    
    func myAlbumSection() -> NSCollectionLayoutSection {
            
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 5)
            
            let groupSize = NSCollectionLayoutSize(
                widthDimension: .absolute(200),
                heightDimension:.absolute(460)
            )
            
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
            
            group.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0)

            
            let section = NSCollectionLayoutSection(group: group)
            
            let header = createHeader()
            section.boundarySupplementaryItems = [header]
            section.orthogonalScrollingBehavior = .groupPaging

            
            return section
        }
    
    func sharedSection() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        

        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(200),
            heightDimension: .absolute(250))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0)

        
        let section = NSCollectionLayoutSection(group: group)
        
        let header = createHeader()
        section.boundarySupplementaryItems = [header]
        section.orthogonalScrollingBehavior = .groupPaging
        
        
        return section
    }
    
    func mediafilesSection() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))

        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)

        layoutItem.contentInsets = NSDirectionalEdgeInsets.init(top: 0,
                                                                leading: 8,
                                                                bottom: 0,
                                                                trailing: 8)

        let layoutGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                     heightDimension: .estimated(44))

        let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: layoutGroupSize,
                                                           subitems: [layoutItem])

        let section = NSCollectionLayoutSection(group: layoutGroup)

        section.contentInsets = NSDirectionalEdgeInsets.init(top: 0,
                                                             leading: 0,
                                                             bottom: 0,
                                                             trailing: 0)
        let header = createHeader()
        section.boundarySupplementaryItems = [header]
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0)
        return section
    }
    
    func otherSection() -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))

        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)

        layoutItem.contentInsets = NSDirectionalEdgeInsets.init(top: 0,
                                                                leading: 8,
                                                                bottom: 0,
                                                                trailing: 8)

        let layoutGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                     heightDimension: .estimated(44))

        let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: layoutGroupSize,
                                                           subitems: [layoutItem])

        let section = NSCollectionLayoutSection(group: layoutGroup)

        section.contentInsets = NSDirectionalEdgeInsets.init(top: 0,
                                                             leading: 0,
                                                             bottom: 0,
                                                             trailing: 12)
        let header = createHeader()
        section.boundarySupplementaryItems = [header]
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
        return section
    }
    
    func createHeader() -> NSCollectionLayoutBoundarySupplementaryItem {
        let sectioHeaderSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .absolute(30)
        )
        
        let header = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: sectioHeaderSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeader.indentifier, for: indexPath) as! SectionHeader
        let number = indexPath.section
        switch number {
        case 0:
            header.configureBothHeaders(leftheader: "Мои альбомы", rightHeader: "См. все")
            return header
        case 1:
            header.configureBothHeaders(leftheader: "Общие альбомы", rightHeader: "См. все")
            return header
        case 2:
            header.configureLeftHeader("Типы медиафайлов")
            return header
        case 3:
            header.configureLeftHeader("Другое")
            return header
        default:
            break
        }
        return UICollectionReusableView()
    }

}

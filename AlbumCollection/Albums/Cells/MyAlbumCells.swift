//
//  MyAlbumCells.swift
//  AlbumCollection
//
//  Created by Maksim Guzeev on 30.12.2021.
//


import UIKit


class MyAlbumCells: UICollectionViewCell {
    
    static let myAlbumCellId = "MyAlbumCells"
    
    var data: AlbumModel? {
        didSet {
            guard let data = data else {
                return
            }
            imageCell.image = data.image
            imageLabel.text = data.label
            imageCountLabel.text = String(data.countLabel ?? 0)
        }
    }
    
    var imageCell: UIImageView = {
        let image = UIImageView()
        
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 4
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var imageLabel: UILabel = {
        let label = UILabel()
        
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var imageCountLabel: UILabel = {
        let label = UILabel()
        
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 14)
        label.backgroundColor = .clear
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupHierarchy()
        setupLayout()
    }
    
    func setupHierarchy() {
        contentView.clipsToBounds = true
        
        contentView.addSubview(imageCell)
        contentView.addSubview(imageLabel)
        contentView.addSubview(imageCountLabel)
        
    }
    
    func setupLayout() {
        
        imageCell.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        imageCell.heightAnchor.constraint(equalToConstant: 175).isActive = true
        imageCell.widthAnchor.constraint(equalToConstant: 175).isActive = true
        
        imageLabel.topAnchor.constraint(equalTo: imageCell.bottomAnchor, constant: 5).isActive = true
        imageLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        imageLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        
        imageCountLabel.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 2).isActive = true
        imageCountLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        imageCountLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        
        
    }
        
    
}

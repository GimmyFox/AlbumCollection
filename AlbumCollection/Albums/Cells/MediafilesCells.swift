//
//  MediafilesCells.swift
//  AlbumCollection
//
//  Created by Maksim Guzeev on 30.12.2021.
//

import UIKit


class MediafilesCells: UICollectionViewCell {
    
    static let mediafilesCellId = "MediafilesCells"
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupHierarchy()
        setupLayout()
    }
    
    var data: AlbumModel? {
        didSet {
            guard let data = data else {
                return
            }
            imageCell.image = data.image
            label.text = data.label
            countLabel.text = String(data.countLabel ?? 0)
        }
    }

    public lazy var label: UILabel = {
        let title = UILabel()
        title.textColor = .systemBlue
        title.font = .systemFont(ofSize: 20)
        return title
    }()
    
    public lazy var imageCell: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleAspectFit
        icon.clipsToBounds = true
        icon.tintColor = .systemBlue
        return icon
    }()

    public lazy var arrowIcon: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleAspectFit
        icon.clipsToBounds = true
        icon.image = UIImage(systemName: "chevron.right")
        icon.tintColor = .lightGray
        icon.transform3D = CATransform3DMakeScale(0.5, 0.5, 0.5)
        return icon
    }()
    
    public lazy var countLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        
        return label
    }()
    
    public lazy var containerView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 8
        
        return view
    }()
    
    private func setupHierarchy() {
        addSubview(label)
        addSubview(containerView)
        containerView.addSubview(imageCell)
        addSubview(countLabel)
        addSubview(arrowIcon)
    }
    
    private func setupLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 45).isActive = true

        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        imageCell.translatesAutoresizingMaskIntoConstraints = false
        imageCell.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        imageCell.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 3).isActive = true
        imageCell.widthAnchor.constraint(equalToConstant: 26).isActive = true
        imageCell.heightAnchor.constraint(equalToConstant: 26).isActive = true

        countLabel.translatesAutoresizingMaskIntoConstraints = false
        countLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        countLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
        
        arrowIcon.translatesAutoresizingMaskIntoConstraints = false
        arrowIcon.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        arrowIcon.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        arrowIcon.widthAnchor.constraint(equalToConstant: 30).isActive = true
        arrowIcon.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}

//
//  SectionHeader.swift
//  AlbumCollection
//
//  Created by Maksim Guzeev on 30.12.2021.
//

import UIKit

class SectionHeader: UICollectionReusableView {
        
    static let indentifier = "SectionHeader"
    
    private var leftLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        
        return label
    }()
    
    private  var rightLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        label.textAlignment = .right
        
        return label
    }()
    
    
    public func configureBothHeaders(leftheader: String, rightHeader: String) {
        backgroundColor = .white
        leftLabel.text = leftheader
        rightLabel.text = rightHeader
    }
    
    public func configureLeftHeader(_ leftheader: String) {
        backgroundColor = .white
        leftLabel.text = leftheader
        rightLabel.text = ""
    }
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupLayout() {
        leftLabel.translatesAutoresizingMaskIntoConstraints = false
        rightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            leftLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            rightLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15),

        ])
    }
    private func setupHierarchy() {
        addSubview(leftLabel)
        addSubview(rightLabel)
    }
}



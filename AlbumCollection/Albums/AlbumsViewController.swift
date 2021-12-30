//
//  AlbumsViewController.swift
//  AlbumCollection
//
//  Created by Maksim Guzeev on 30.12.2021.
//

import UIKit

class AlbumsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Альбомы"
        
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
    }
}

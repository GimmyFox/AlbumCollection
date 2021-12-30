//
//  ForYouViewController.swift
//  AlbumCollection
//
//  Created by Maksim Guzeev on 30.12.2021.
//

import UIKit

class ForYouViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Для Вас"
        
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = .white
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}


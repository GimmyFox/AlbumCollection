//
//  Model.swift
//  AlbumCollection
//
//  Created by Maksim Guzeev on 30.12.2021.
//

import UIKit

struct AlbumModel {
    var image: UIImage?
    var label: String
    var countLabel: Int?
}

extension AlbumModel {

    static let firstSectionData = [
    AlbumModel(image: UIImage(named: "image1"),
               label: "Недавние",
               countLabel: 4730),
    AlbumModel(image: UIImage(named: "image2"),
               label: "Instagram",
               countLabel: 369),
    AlbumModel(image: UIImage(named: "image3"),
               label: "WhatsUp",
               countLabel: 53),
    AlbumModel(image: UIImage(named: "image4"),
               label: "Делимобиль",
               countLabel: 72),
    AlbumModel(image: UIImage(named: "image5"),
               label: "WHOOSH",
               countLabel: 4),
    AlbumModel(image: UIImage(named: "image6"),
               label: "Избранное",
               countLabel: 3),
    AlbumModel(image: UIImage(named: "image7"),
               label: "Memes",
               countLabel: 69420),
    AlbumModel(image: UIImage(named: "image8"),
               label: "Work",
               countLabel: 1)
    ]

    static let secondSectionData = [
        AlbumModel(image: UIImage(named: "image1"),
                   label: "Instagram",
                   countLabel: 4730),
        AlbumModel(image: UIImage(named: "image1"),
                   label: "WhatsUp",
                   countLabel: 4730),
        AlbumModel(image: UIImage(named: "image1"),
                   label: "Memes",
                   countLabel: 4730),
        AlbumModel(image: UIImage(named: "image1"),
                   label: "Недавние",
                   countLabel: 4730)]

    static let thirdSectionData = [
        AlbumModel(image: UIImage(systemName: "video"),
                   label: "Видео",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "person.crop.square"),
                   label: "Селфи",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "livephoto"),
                   label: "Фото Live Photos",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "person.crop.square"),
                   label: "Портреты",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "pano"),
                   label: "Панорамы",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "slowmo"),
                   label: "Замедленно",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "square.stack.3d.down.right"),
                   label: "Серии",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "camera.viewfinder"),
                   label: "Снимки экрана",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "record.circle"),
                   label: "Записи экрана",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "square.stack.3d.forward.dottedline"),
                   label: "Анимированные",
                   countLabel: 4730),]

    static let fourthSectionData = [
        AlbumModel(image: UIImage(systemName: "square.and.arrow.down"),
                   label: "Импортированые",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "eye.slash"),
                   label: "Скрытые",
                   countLabel: 4730),
        AlbumModel(image: UIImage(systemName: "trash"),
                   label: "Недавно удаленные",
                   countLabel: 4730),
    ]

}


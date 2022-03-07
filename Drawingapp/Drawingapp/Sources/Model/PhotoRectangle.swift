//
//  PhotoRectangle.swift
//  Drawingapp
//
//  Created by seongha shin on 2022/03/04.
//

import Foundation

class PhotoRectangle: Rectangle {
    public private(set) var imageUrl: URL?
    public private(set) var itemProvider: NSItemProvider?
    
    init(id: String, point: Point, size: Size, color: Color?, alpha: Alpha, url: URL) {
        self.imageUrl = url
        super.init(id: id, point: point, size: size, color: color, alpha: alpha)        
    }
    
    init(id: String, point: Point, size: Size, color: Color?, alpha: Alpha, itemProvider: NSItemProvider) {
        self.itemProvider = itemProvider
        super.init(id: id, point: point, size: size, color: color, alpha: alpha)
    }
    
    func update(url: URL) {
        self.imageUrl = url
    }
    
    override func update(color: Color) {
        return
    }
}

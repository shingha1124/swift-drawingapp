//
//  DrawingModel.swift
//  Drawingapp
//
//  Created by seongha shin on 2022/03/08.
//

import Foundation

class DrawingModel: Drawingable, CustomStringConvertible, Equatable, Hashable {
    let id: String
    let index: Int
    public private(set) var size: Size
    public private(set) var origin: Point
    public private(set) var alpha: Alpha
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var description: String {
        "id: ( \(id) ), \(origin), \(size), alpha: \(alpha)"
    }
    
    static func == (lhs: DrawingModel, rhs: DrawingModel) -> Bool {
        lhs.id == rhs.id
    }
        
    init(id: String, index: Int, origin: Point, size: Size, alpha: Alpha) {
        self.id = id
        self.index = index
        self.origin = origin
        self.size = size
        self.alpha = alpha
    }
    
    func isSelected(by touchPoint: Point) -> Bool {
        if touchPoint.x >= origin.x, touchPoint.y >= origin.y,
           touchPoint.x <= origin.x + size.width, touchPoint.y <= origin.y + size.height {
            return true
        }
        return false
    }
}

extension DrawingModel: OriginUpdatable {
    func update(origin: Point) {
        self.origin = origin
    }
}

extension DrawingModel: Transformable {
    func transform(translationX: Double, y: Double) {
        let originX = origin.x + translationX < 1 ? 1 : origin.x + translationX
        let originY = origin.y + y < 1 ? 1 : origin.y + y
        update(origin: Point(x: originX, y: originY))
    }
    
    func transform(width: Double, height: Double) {
        let sizeIncrease = Size(width: size.width + width, height: size.height + height)
        self.size = sizeIncrease
    }
}

extension DrawingModel: AlphaUpdatable {
    func update(alpha: Alpha) {
        self.alpha = alpha
    }
}
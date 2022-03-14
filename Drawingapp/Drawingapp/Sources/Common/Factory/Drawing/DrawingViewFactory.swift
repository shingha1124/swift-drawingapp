//
//  DrawingFactory.swift
//  Drawingapp
//
//  Created by seongha shin on 2022/03/02.
//

import Foundation

class DrawingViewFactory {
    
    static let modelToIdentifier: Dictionary<ObjectIdentifier, DrawingView.Type> = [
        ObjectIdentifier(DrawingModel.self): DrawingView.self,
        ObjectIdentifier(RectangleModel.self): RectangleView.self,
        ObjectIdentifier(PhotoModel.self): PhotoView.self,
        ObjectIdentifier(LabelModel.self): LabelView.self
    ]
    
    static func make(model: DrawingModel) -> DrawingView {
        if let viewType = Self.modelToIdentifier[ObjectIdentifier(type(of: model.self))] {
            return viewType.init(model: model)
        }
        
        return DrawingView.init(model: model)
    }
}

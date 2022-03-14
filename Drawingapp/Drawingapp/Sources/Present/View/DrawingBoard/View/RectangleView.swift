//
//  RectangleView.swift
//  Drawingapp
//
//  Created by seongha shin on 2022/03/08.
//

import Foundation
import UIKit

class RectangleView: DrawingView, Colorable {
    required init(model: DrawingModel) {
        super.init(model: model)
        if let rectangleModel = model as? RectangleModel {
            self.update(color: rectangleModel.color)
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func update(color: Color) {
        canvasView.backgroundColor = UIColor(red: CGFloat(color.r) / 255, green: CGFloat(color.g) / 255, blue: CGFloat(color.b / 255), alpha: 1)
    }
}

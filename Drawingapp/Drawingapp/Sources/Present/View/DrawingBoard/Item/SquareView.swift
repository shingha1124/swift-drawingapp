//
//  SquareView.swift
//  Drawingapp
//
//  Created by seongha shin on 2022/03/01.
//

import Foundation
import UIKit

class SquareView: UIView {
    
    func setSquare(in square: Square) {
        backgroundColor = square.uiColor
        frame = square.rect
    }
    
    func selected(is select: Bool) {
        self.layer.borderWidth = select ? 3 : 0
        self.layer.borderColor = select ? UIColor.systemBlue.cgColor : UIColor.clear.cgColor
    }
}
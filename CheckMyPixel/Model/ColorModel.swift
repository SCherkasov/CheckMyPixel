//
//  CheckPixelViewController.swift
//  CheckMyPixel
//
//  Created by Stanislav Cherkasov on 22.01.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

let backgroundColors = [UIColor.black, UIColor.red, UIColor.green, UIColor.blue, UIColor.white, UIColor.darkGray]

var index = 0

func nextColor() -> UIColor {
    index = (index + 1) % backgroundColors.count
    return backgroundColors[index]
}

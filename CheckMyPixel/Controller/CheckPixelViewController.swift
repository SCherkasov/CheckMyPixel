//
//  CheckPixelViewController.swift
//  CheckMyPixel
//
//  Created by Stanislav Cherkasov on 22.01.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class CheckPixelViewController: UIViewController {

    let myColors = colorsArray()
    
    func nextColorIndex() -> Int{
        
        
        var index = 0
        
        self.view.backgroundColor = myColors.backgroundColors[index]
     
        
        index = (index + 1) % myColors.self.backgroundColors.count
        
        print(index)
       return index
    }

}

//
//  ChangeColorViewController.swift
//  CheckMyPixel
//
//  Created by Stanislav Cherkasov on 17.01.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class ChangeColorViewController: UIViewController {
    
    let backgroundColors = [UIColor.black, UIColor.red, UIColor.green, UIColor.blue, UIColor.white]
    
    var index = 0

    @IBAction func changeColorButton(_ sender: Any) {
       self.view.backgroundColor = backgroundColors[index]
        
        index = (index + 1) % self.backgroundColors.count
        
//        if index == backgroundColors.count - 1 {
//            index = 0
//        } else {
//            index += 1
//        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

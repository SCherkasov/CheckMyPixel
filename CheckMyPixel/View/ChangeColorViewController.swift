//
//  ChangeColorViewController.swift
//  CheckMyPixel
//
//  Created by Stanislav Cherkasov on 17.01.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class ChangeColorViewController: UIViewController {
    


    
    @IBAction func changeColorButton(_ sender: UIButton) {
        let check = CheckPixelViewController()
        check.nextColorIndex()
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

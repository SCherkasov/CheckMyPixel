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
        self.view.backgroundColor = nextColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

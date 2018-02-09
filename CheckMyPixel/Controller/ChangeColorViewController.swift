//
//  ChangeColorViewController.swift
//  CheckMyPixel
//
//  Created by Stanislav Cherkasov on 17.01.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit
import AudioToolbox

class ChangeColorViewController: UIViewController {
    
    @IBAction func changeColorButton(_ sender: UIButton) {
        self.view.backgroundColor = nextColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            performSegue(withIdentifier: "backSegue", sender: self)
            
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

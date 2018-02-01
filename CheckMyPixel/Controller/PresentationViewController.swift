//
//  PresentationViewController.swift
//  CheckMyPixel
//
//  Created by Stanislav Cherkasov on 27.01.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class PresentationViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var mainScroll: UIScrollView!
    
    var presentationImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeScrollAtImageView()
    }
    
    func makeScrollAtImageView() {
        
        /*
        mainScroll.frame = view.frame
        presentationImages = [#imageLiteral(resourceName: "final_1_screen"), #imageLiteral(resourceName: "final_2_screen")]
        
        
        for i in 0..<presentationImages.count {
            let imageView = UIImageView()
            imageView.image = presentationImages[i]
            imageView.contentMode = .scaleToFill
            mainScroll.isPagingEnabled = true
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScroll.frame.width, height: self.mainScroll.frame.height)
            
            mainScroll.contentSize.width = mainScroll.frame.width * CGFloat(i + 1)
            mainScroll.addSubview(imageView)
        }
 */
    }
}

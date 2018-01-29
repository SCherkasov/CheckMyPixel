//
//  InstructionPageViewController.swift
//  CheckMyPixel
//
//  Created by Stanislav Cherkasov on 29.01.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class InstructionPageViewController: UIPageViewController, UIPageViewControllerDataSource {
   
    var pages = [UIViewController]()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        for v in view.subviews {
            if v is UIScrollView {
                v.frame = view.bounds
                break
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let page1 = storyboard?.instantiateViewController(withIdentifier: "page1")
        let page2 = storyboard?.instantiateViewController(withIdentifier: "page2")
        let page3 = storyboard?.instantiateViewController(withIdentifier: "page3")
        
        pages.append(page1!)
        pages.append(page2!)
        pages.append(page3!)
        
        setViewControllers([pages[0]], direction: .forward, animated: true, completion: nil)
        
        dataSource = self
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let index = pages.index(of: viewController), index > 0 {
            return pages[index - 1]
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let index = pages.index(of: viewController), index < pages.count - 1 {
            return pages[index + 1]
        }
        return nil
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pages.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }

}

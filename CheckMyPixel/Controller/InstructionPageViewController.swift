//
//  InstructionPageViewController.swift
//  CheckMyPixel
//
//  Created by Stanislav Cherkasov on 29.01.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class InstructionPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    @IBAction func skipButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "skipSegue", sender: self)
        pages[0].view.isHidden = true
        pages[1].view.isHidden = true
        pages[2].view.isHidden = true
        pages[3].view.isHidden = true
    }
    
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
        
        usingUserDef()
        setupUserGuidePages()
    }
    
    func setupUserGuidePages() {
        let addPageWithName = { (name: String) -> Void in
            if let board = self.storyboard {
                self.pages.append(board.instantiateViewController(withIdentifier: name))
            }
        }
        
        addPageWithName("page1")
        addPageWithName("page2")
        addPageWithName("page3")
        addPageWithName("page4")
        
        setViewControllers([pages[0]], direction: .forward, animated: true, completion: nil)
        
        dataSource = self
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let index = pages.index(of: viewController), index > 0 {
            return pages[index - 1]
        }
        
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
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
    
    func usingUserDef() {
        if let IsTermsVisible = UserDefaults.standard.object(forKey: "ViewControllerView") as? Bool {
            if IsTermsVisible == true {
                pages[0].view.isHidden = true
                pages[1].view.isHidden = true
                pages[2].view.isHidden = true
                pages[3].view.isHidden = true
            } else {
                pages[0].view.isHidden = false
                pages[1].view.isHidden = false
                pages[2].view.isHidden = false
                pages[3].view.isHidden = false
            }
        } else {
            pages[0].view.isHidden = false
            pages[1].view.isHidden = false
            pages[2].view.isHidden = false
            pages[3].view.isHidden = false
        }
    }
    
    
}

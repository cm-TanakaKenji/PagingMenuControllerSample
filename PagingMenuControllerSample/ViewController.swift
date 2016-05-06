//
//  ViewController.swift
//  PagingMenuControllerSample
//
//  Created by tanaka.kenji on 2016/05/06.
//  Copyright © 2016年 tanaka.kenji. All rights reserved.
//

import UIKit
import PagingMenuController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let viewController1 = UIViewController()
        let viewController2 = UIViewController()
        let viewController3 = UIViewController()
        
        viewController1.view.backgroundColor = UIColor.redColor()
        viewController2.view.backgroundColor = UIColor.greenColor()
        viewController3.view.backgroundColor = UIColor.blueColor()
        
        viewController1.title = "VC1"
        viewController2.title = "VC2"
        viewController3.title = "VC3"
        let viewControllers = [viewController1, viewController2, viewController3]
        
        let options = PagingMenuOptions()
        options.menuHeight = 60
        options.menuDisplayMode = .Infinite(widthMode: .Flexible, scrollingMode: .ScrollEnabled)
        
        let pagingMenuController = PagingMenuController(viewControllers: viewControllers, options: options)
        
        addChildViewController(pagingMenuController)
        view.addSubview(pagingMenuController.view)
        pagingMenuController.didMoveToParentViewController(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


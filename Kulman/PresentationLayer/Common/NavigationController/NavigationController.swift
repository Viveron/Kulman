//
//  NavigationController.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class NavigationController: UINavigationController {
    
    private(set) var theme: Theme = .white
    
    convenience init(item: UITabBarItem) {
        self.init()
        
        tabBarItem = item
    }
    
    convenience init(_ theme: Theme, root: UIViewController? = nil) {
        self.init()
        
        self.theme = theme
        
        if let controller = root {
            viewControllers = [controller]
        }
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTransparent()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    // MARK: - Private methods
    
    private func setupTransparent() {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.tintColor = theme.tintColor
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        navigationBar.barStyle = theme.barStyle
        navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.bold(.large) as Any]
    }
}

// MARK: - UIGestureRecognizerDelegate
extension NavigationController: UIGestureRecognizerDelegate {
    
}

//
//  RootViewController.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

final class RootViewController: TabBarController<RootViewOutput>, RootModule, UITabBarControllerDelegate {
    
    private let factory = RootTabBarFactory()
    
    // MARK: - RootModule
    
    var onSelectHomeItem: ValueBlock<UINavigationController>?
    
    var onSelectSettingsItem: ValueBlock<UINavigationController>?
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(with: factory.items)
        
        viewModel.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Need to start selected controller flow
        if let controller = viewControllers?[selectedIndex] {
            tabBarController(self, didSelect: controller)
        }
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        // way to avoid iOS 12.* UITabBar' lags
        tabBar.isTranslucent = false
    }
    
    // MARK: - UITabBarControllerDelegate
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        guard let navigation = viewControllers?[selectedIndex] as? UINavigationController else {
            return
        }
        
        switch factory.items[selectedIndex] {
        case .home:
            onSelectHomeItem?(navigation)
            
        case .settings:
            onSelectSettingsItem?(navigation)
        }
    }
    
    // MARK: - Private methods
    
    private func configure(with items: [RootTabBarItem]) {
        delegate = self
        viewControllers = items.map {
            factory.makeViewController(at: $0)
        }
    }
}

// MARK: - RootViewInput
extension RootViewController: RootViewInput {
    
}


//
//  RootTabBarFactory.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class RootTabBarFactory {
    
    let items: [RootTabBarItem] = [.home, .settings]
    
    func makeViewController(at item: RootTabBarItem) -> UIViewController {
        let item = makeTabBarItem(at: item)
        
        return NavigationController(item: item)
    }
    
    // MARK: - Private methods
    
    private func makeTabBarItem(at item: RootTabBarItem) -> UITabBarItem {
        let tabBarItem = UITabBarItem(title: item.title,
                                      image: nil,
                                      selectedImage: nil)
        return tabBarItem
    }
}

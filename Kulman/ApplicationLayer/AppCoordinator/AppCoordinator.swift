//
//  AppCoordinator.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

protocol AppCoordinator {
    
    func launch(with options: [UIApplication.LaunchOptionsKey: Any]?)
}

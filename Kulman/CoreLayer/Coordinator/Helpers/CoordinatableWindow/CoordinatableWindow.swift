//
//  CoordinatableWindow.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class CoordinatableWindow: UIWindow {
    
    let coordinator: Coordinatable
    
    init(level: UIWindow.Level,
         coordinator: Coordinatable) {
        
        self.coordinator = coordinator
        
        super.init(frame: UIScreen.main.bounds)
        windowLevel = level
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

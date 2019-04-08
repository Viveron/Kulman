//
//  TabBarController.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

class TabBarController<OutputType>: UITabBarController {
    
    // MARK: - Module components
    
    let viewModel: OutputType
    
    init(viewModel: OutputType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
    }
    
    func configureAppearance() {
        // override in subclasses
    }
}

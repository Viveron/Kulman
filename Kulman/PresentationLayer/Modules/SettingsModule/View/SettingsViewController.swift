//
//  SettingsViewController.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

final class SettingsViewController: ViewController<SettingsViewOutput, SettingsView>, SettingsModule {

	// MARK: - SettingsModule

	var onClose: VoidBlock?

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.viewDidLoad()
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
    
    override func localize() {
        super.localize()
        
        navigationItem.title = "Настройки"
    }
    
    // MARK: - Private methods
    
}

// MARK: - SettingsViewInput
extension SettingsViewController: SettingsViewInput {
    
}

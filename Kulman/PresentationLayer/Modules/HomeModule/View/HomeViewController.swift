//
//  HomeViewController.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

final class HomeViewController: ViewController<HomeViewOutput, HomeView>, HomeModule {

	// MARK: - HomeModule

	var onContacts: VoidBlock?

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.viewDidLoad()
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
    
    override func configureBarButtons() {
        super.configureBarButtons()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(didTapContactsButton))
    }
    
    override func localize() {
        super.localize()
        
        navigationItem.title = "Главная"
    }
    
    // MARK: - Private methods
    
    // MARK: - UI Actions
    
    @objc private func didTapContactsButton() {
        onContacts?()
    }
}

// MARK: - HomeViewInput
extension HomeViewController: HomeViewInput {
    
}


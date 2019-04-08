//
//  ContactsViewController.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

final class ContactsViewController: ViewController<ContactsViewOutput, ContactsView>, ContactsModule {

	// MARK: - ContactsModule

	var onClose: VoidBlock?

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
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад",
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(didTapBackButton))
    }
    
    override func localize() {
        super.localize()
        
        navigationItem.title = "Контакты"
    }
    
    // MARK: - Private methods
    
    // MARK: - UI Actions
    
    @objc private func didTapBackButton() {
        onClose?()
    }
}

// MARK: - ContactsViewInput
extension ContactsViewController: ContactsViewInput {
    
}

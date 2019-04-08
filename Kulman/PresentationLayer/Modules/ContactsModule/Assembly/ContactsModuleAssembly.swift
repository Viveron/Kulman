//
//  ContactsModuleAssembly.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class ContactsModuleAssembly {
    
    static func createModule() -> ContactsModule {
        let viewModel = ContactsViewModel()
        let view = ContactsViewController(viewModel: viewModel)
        
        viewModel.view = view
        
        return view
    }
}

//
//  AppMediator.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation

protocol AppMediator {
    
    func isInstalled(application: ExternalApplication) -> Bool
    
    func canOpen(url: URL) -> Bool
    
    func open(url: URL, completion: @escaping (_ success: Bool) -> Void)
}

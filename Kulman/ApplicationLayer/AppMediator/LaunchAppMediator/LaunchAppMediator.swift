//
//  LaunchAppMediator.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class LaunchAppMediator: AppMediator {
    
    func isInstalled(application: ExternalApplication) -> Bool {
        if let url = URL(string: application.applink) {
            return canOpen(url: url)
        }
        
        return false
    }
    
    func canOpen(url: URL) -> Bool {
        return UIApplication.shared.canOpenURL(url)
    }
    
    func open(url: URL, completion: @escaping (_ success: Bool) -> Void) {
        let application = UIApplication.shared
        
        if application.canOpenURL(url) {
            application.open(url, completionHandler: completion)
        }
        else {
            completion(false)
        }
    }
}

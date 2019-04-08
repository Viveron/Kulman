//
//  ViewController.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

class ViewController<OutputType, ViewType>: BaseCustomViewController<OutputType, ViewType> where ViewType: UIView {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialLoadView()
        configureBarButtons()
    }
}

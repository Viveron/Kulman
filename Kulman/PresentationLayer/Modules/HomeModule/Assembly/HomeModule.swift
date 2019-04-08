//
//  HomeModule.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation
import LeadKit

protocol HomeModule: Presentable {
    
    var onContacts: VoidBlock? { get set }
}


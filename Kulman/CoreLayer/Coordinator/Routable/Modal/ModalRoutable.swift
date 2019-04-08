//
//  ModalRoutable.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit
import LeadKit

protocol ModalRoutable: Presentable {

    func present(_ module: Presentable?)
    func present(_ module: Presentable?, animated: Bool)

    func dismissModule()
    func dismissModule(animated: Bool, completion: VoidBlock?)

    func prsentChild(_ module: Presentable?) -> StackRoutable?
    func prsentChild(_ module: Presentable?, animated: Bool) -> StackRoutable?
}

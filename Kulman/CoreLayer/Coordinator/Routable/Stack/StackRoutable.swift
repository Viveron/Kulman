//
//  StackRoutable.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation
import LeadKit

protocol StackRoutable: ModalRoutable {

    func push(_ module: Presentable?)
    func push(_ module: Presentable?, animated: Bool)
    func push(_ module: Presentable?, animated: Bool, completion: VoidBlock?)

    func popModule()
    func popModule(animated: Bool)
    func popModule(animated: Bool, completion: VoidBlock?)

    func popToHead()
    func popToHead(animated: Bool)

    func pop(to module: Presentable?)
    func pop(to module: Presentable?, animated: Bool)
}

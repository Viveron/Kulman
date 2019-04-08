//
//  Coordinatable.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import Foundation

protocol Coordinatable: class {

    var onFinish: ValueBlock<Coordinatable>? { get set }

    func start()
}


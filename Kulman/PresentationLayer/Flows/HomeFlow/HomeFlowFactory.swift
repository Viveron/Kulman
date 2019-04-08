//
//  HomeFlowFactory.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class HomeFlowFactory {

	func makeHomeModule() -> HomeModule {
		return HomeModuleAssembly.createModule()
	}
}

//
//  SettingsFlowFactory.swift
//  Kulman
//
//  Created by Victor Shabanov on 08/04/2019.
//  Copyright © 2019 Victor Shabanov. All rights reserved.
//

import UIKit

final class SettingsFlowFactory {

	func makeSettingsModule() -> SettingsModule {
        return SettingsModuleAssembly.createModule()
	}
}

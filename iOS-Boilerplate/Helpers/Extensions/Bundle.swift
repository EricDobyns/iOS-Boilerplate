//
//  Bundle.swift
//  Gotym
//
//  Created by Eric Dobyns on 10/18/17.
//  Copyright © 2017 HOTB Software Solutions. All rights reserved.
//

import Foundation

extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}

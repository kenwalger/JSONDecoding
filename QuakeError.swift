//
//  QuakeError.swift
//  Earthquakes-iOS
//
//  Created by kealger on 12/12/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation


enum QuakeError: Error {
    case missingData
    case networkError
}

extension QuakeError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .missingData:
            return NSLocalizedString(
                "Found and will discard a quake missing a valid code, magnitude, place, or time.",
            comment: ""
            )
        case .networkError:
            return NSLocalizedString("Network Error", comment: "")
        }
    }
}

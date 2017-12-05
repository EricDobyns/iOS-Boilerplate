//
//  NetworkError.swift
//  iOS-Boilerplate
//
//  Created by Macbook Pro on 12/4/17.
//

import Foundation


// MARK: - Network Error Types
public enum NetworkError: Error {
    case genericError
    case invalidResource
    case serverError(message: String)
}

extension NetworkError: LocalizedError {
    
    var localizedDescription: String {
        switch self {
        case .genericError:
            return "An error has occurred. Please try again."
        case .invalidResource:
            return "Invalid parameters sent to the server."
        case .serverError(let message):
            return message
        }
    }
}

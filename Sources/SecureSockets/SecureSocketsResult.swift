// =====================================================================================================================
//
//  File:       SecureSocketsResult.swift
//  Project:    SecureSockets
//
//  Version:    1.1.6
//
//  Author:     Marinus van der Lugt
//  Company:    http://balancingrock.nl
//  Website:    http://swiftfire.nl/projects/securesockets/securesockets.html
//  Git:        https://github.com/Balancingrock/SecureSockets
//
//  Copyright:  (c) 2020 Marinus van der Lugt, All rights reserved.
//
//  License:    MIT, see LICENSE file
//
//  And because I need to make a living:
//
//   - You can send payment (you choose the amount) via paypal to: sales@balancingrock.nl
//   - Or wire bitcoins to: 1GacSREBxPy1yskLMc9de2nofNv2SNdwqH
//
//  If you like to pay in another way, please contact me at rien@balancingrock.nl
//
//  Prices/Quotes for support, modifications or enhancements can be obtained from: rien@balancingrock.nl
//
// =====================================================================================================================
// PLEASE let me know about bugs, improvements and feature requests. (rien@balancingrock.nl)
// =====================================================================================================================
//
// History
//
// 1.1.6 - Updated LICENSE
// 1.1.0 - Initial version
// =====================================================================================================================

import Foundation


/// Used for the failure option of Swift.Result

public struct SecureSocketsError: Error {
    let message : String
    var errorDescription: String? { return message }
    init(file: String = #file, function: String = #function, line: Int = #line, _ str: String) {
        message = "\(file).\(function).\(line): \(str)"
    }
}


/// Typealias for a result with a secure socket failure case.

public typealias SecureSocketsResult<T> = Result<T, SecureSocketsError>




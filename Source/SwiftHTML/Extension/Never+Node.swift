//
//  Never+Node.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 10.03.2025.
//

extension Never: Node {}

extension Never: @retroactive CustomStringConvertible {
    @_spi(Private) public var body: Never {
        fatalError("Never does not support the `body` property.")
    }
    
    @_spi(Private) public var description: String {
        fatalError("Never does not support the `description` property.")
    }
}

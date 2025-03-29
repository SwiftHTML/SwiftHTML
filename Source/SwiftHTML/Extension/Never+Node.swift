//
//  Never+Node.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 10.03.2025.
//

extension Never: Node {}

extension Never: @retroactive CustomStringConvertible {
    /// Prevents access to the `body` property for elements that do not support it.
    /// Triggers a runtime error if accessed.
    @_spi(Private)
    public var body: Never {
        fatalError("Never does not support the `body` property.")
    }
    
    /// Prevents access to the `description` property for elements that do not support it.
    /// Triggers a runtime error if accessed.
    @_spi(Private)
    public var description: String {
        fatalError("Never does not support the `description` property.")
    }
}

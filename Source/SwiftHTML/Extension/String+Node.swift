//
//  String+Node.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 11.03.2025.
//

extension String: Node {
    /// The type of node representing the body of this node.
    public typealias Body = Never
    
    /// A textual representation of this node
    public var description: String { self }
}

extension String {
    /// Prevents access to the `body` property for elements that do not support it.
    /// Triggers a runtime error if accessed.
    @_spi(Private)
    public var body: Never {
        fatalError("String does not support the `body` property.")
    }
}

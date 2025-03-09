//
//  EmptyNode.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 10.03.2025.
//

/// A node that doesn't contain any content.
///
/// SwiftHTML uses `EmptyNode` in situations where a SwiftHTML node type defines one
/// or more child nodes with generic parameters, and allows the child nodes to
/// be absent. When absent, the child node's type in the generic type parameter
/// is `EmptyNode`.
///
public struct EmptyNode: Node {
    /// Creates an empty node.
    public init() {}
    
    /// The type of node representing the body of this node.
    ///
    /// When you create a custom node, Swift infers this type from your
    /// implementation of the required `var body: some Node` property.
    public typealias Body = Never
}

extension EmptyNode {
    @_spi(Private) public var body: Never {
        fatalError("EmptyNode does not support the `body` property.")
    }
    
    @_spi(Private) public var description: String {
        fatalError("EmptyNode does not support the `description` property.")
    }
}

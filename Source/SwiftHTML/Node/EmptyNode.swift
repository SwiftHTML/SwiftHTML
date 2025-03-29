//
//  EmptyNode.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 10.03.2025.
//

///
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
    public typealias Body = Never
}

public extension EmptyNode {
    /// A textual representation of this node
    var description: String { "" }
}

extension EmptyNode {
    /// Prevents access to the `body` property for elements that do not support it.
    /// Triggers a runtime error if accessed.
    @_spi(Private)
    public var body: Never {
        fatalError("EmptyNode does not support the `body` property.")
    }
}

//
//  TupleNode.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 10.03.2025.
//

///
/// A Node created from a swift tuple of Node values.
///
public struct TupleNode<T>: Node {
    /// The underlying value stored in the node, typically a tuple containing multiple nodes.
    let value: T

    /// Initializes a `TupleNode` with the given value.
    /// - Parameter value: The tuple containing multiple `Node` instances.
    public init(_ value: T) {
        self.value = value
    }
    
    /// The type of node representing the body of this node.
    public typealias Body = Never
}

public extension TupleNode {
    /// A textual representation of this node.
    var description: String {
        nodes.map(\.description).joined()
    }
}

private extension TupleNode {
    /// Extracts child nodes from the reflected tuple value.
    /// - Returns: An array of `Node` instances extracted from the tuple's children.
    var nodes: [any Node] {
        Mirror(reflecting: value).children.compactMap { $0.value as? any Node }
    }
}

extension TupleNode {
    /// Prevents access to the `body` property for elements that do not support it.
    /// Triggers a runtime error if accessed.
    @_spi(Private)
    public var body: Never {
        fatalError("TupleNode does not support the `body` property.")
    }
}

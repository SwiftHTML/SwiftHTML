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
    ///
    /// When you create a custom node, Swift infers this type from your
    /// implementation of the required `var body: some Node` property.
    public typealias Body = Never
    
    /// A textual representation of this instance.
    public var description: String {
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
    @_spi(Private) public var body: Never {
        fatalError("TupleNode does not support the `body` property.")
    }
}

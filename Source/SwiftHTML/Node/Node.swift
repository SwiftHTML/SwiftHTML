//
//  Node.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 09.03.2025.
//

///
/// A type that represents an HTML node, which is the base entity of the HyperText Markup Language.
///
/// Node can contain children that are represented by the `associatedtype Body`. `Body` inherits
/// from the Node protocol, which provides full support for nested children.
/// 
public protocol Node: CustomStringConvertible {
    /// The type of node representing the body of this node.
    ///
    /// When you create a custom node, Swift infers this type from your
    /// implementation of the required `var body: some Node` property.
    associatedtype Body: Node
    
    /// The content and behavior of the node.
    ///
    /// When you implement a custom node, you must implement a computed
    /// `body` property to provide the content for your node.
    @NodeBuilder var body: Self.Body { get }
}

extension Node {
    public var description: String { body.description }
}

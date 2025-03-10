//
//  NodeBuilder.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 10.03.2025.
//

///
/// A result builder that constructs `Node` instances in a declarative manner.
///
/// `NodeBuilder` enables the use of Swift's result builder syntax to construct node hierarchies.
/// It supports multiple overloads to handle empty nodes, single nodes, and tuple nodes.
///
@resultBuilder public struct NodeBuilder {
    /// Builds an empty node when no content is provided.
    /// - Returns: An instance of `EmptyNode`.
    public static func buildBlock() -> EmptyNode {
        .init()
    }
    
    /// Builds a single node when one `Node` instance is provided.
    /// - Parameter content: A single `Node` instance.
    /// - Returns: The provided `Node` instance unchanged.
    public static func buildBlock<Content>(_ content: Content) -> Content where Content: Node {
        content
    }
    
    /// Processes an individual expression and returns it as a `Node`.
    /// - Parameter content: A single `Node` instance.
    /// - Returns: The provided `Node` instance unchanged.
    public static func buildExpression<Content>(_ content: Content) -> Content where Content: Node {
        content
    }
    
    /// Builds a tuple of nodes when multiple `Node` instances are provided.
    /// - Parameter content: A variadic list of `Node` instances.
    /// - Returns: A `TupleNode` containing all the provided `Node` instances.
    public static func buildBlock<each Content>(_ content: repeat each Content) -> TupleNode<(repeat each Content)> where repeat each Content: Node {
        .init((repeat each content))
    }
}

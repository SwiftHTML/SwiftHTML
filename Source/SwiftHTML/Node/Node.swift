//
//  Node.swift
//  swift-html
//
//  Created by Piotrek Jeremicz on 09.03.2025.
//

/// A type that represents an HTML node, which is the base entity of the HyperText Markup Language.
///
/// Node can contain children that are represented by the `associatedtype Body`. `Body` inherits
/// from the Node protocol, which provides full support for nested children.
public protocol Node: CustomStringConvertible {
    associatedtype Body: Node
    
    var body: Self.Body { get }
}

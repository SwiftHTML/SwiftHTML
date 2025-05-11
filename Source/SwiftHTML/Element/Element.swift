//
//  Element.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 28.03.2025.
//

/// A protocol representing an HTML-like element with a tag name.
/// Conforms to `Node` and provides default implementations for rendering.
public protocol Element: Node {
    /// The HTML tag name of the element.
    var tag: String { get }
}

public extension Element {
    var tag: String {
        "\(type(of: self))".split(separator: "<").first?.lowercased() ?? "\(type(of: self))".lowercased()
    }
    
    var description: String {
        "<\(tag)>\(body.description)</\(tag)>"
    }
}

public extension Element where Body == Never {
    var description: String {
        "<\(tag)/>"
    }
    
    /// Prevents access to the `body` property for elements that do not support it.
    /// Triggers a runtime error if accessed.
    @_spi(Private)
    var body: Never {
        fatalError("\(type(of: self)) does not support the `body` property.")
    }
}

//
//  Ol.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<ol>` (ordered list) element in SwiftHTML.
///
/// The `<ol>` element is used to define an ordered (numbered) list.
/// List items are marked with `<li>` elements, and the list is typically rendered with numbers or other sequential markers.
///
/// ### Examples:
/// ```swift
/// Ol {
///     Li("First item")
///     Li("Second item")
/// }
/// ```
///
/// - Note: The default numbering starts at 1, but you can modify the start value using the `start` attribute.
public struct Ol<Content>: Element where Content: Node {
    /// The inner content of the `<ol>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<ol>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// The body of the element, used for rendering its content.
    public var body: some Node {
        content
    }
}

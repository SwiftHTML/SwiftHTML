//
//  Li.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<li>` (list item) element in SwiftHTML.
///
/// The `<li>` element is used to define individual items in a list.
/// It can be used within both ordered and unordered lists (`<ol>` and `<ul>`),
/// and each list item is usually associated with a specific position within the list.
///
/// ### Examples:
/// ```swift
/// Ul {
///     Li("Item 1")
///     Li("Item 2")
/// }
/// ```
///
/// ```swift
/// Ol {
///     Li("First step")
///     Li("Second step")
/// }
/// ```
public struct Li<Content>: Element where Content: Node {
    /// The inner content of the `<li>` tag, conforming to `Node`.
    let content: Content

    /// Initializes an `<li>` element with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes an `<li>` element with plain text.
    ///
    /// - Parameter text: A string to be wrapped inside the emphasis element.
    public init(_ text: String) where Content == String {
        self.content = text
    }

    /// The body of the element, used for rendering its content.
    public var body: some Node {
        content
    }
}

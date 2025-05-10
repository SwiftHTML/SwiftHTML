//
//  P.swift
//  SwiftHTML
//
//  Created by Piotrek Jeremicz on 29.03.2025.
//

/// Represents an HTML `<p>` (paragraph) element in SwiftHTML.
///
/// The `P` element is used to define a paragraph of text in HTML.
/// You can initialize it either with a `String` or a custom SwiftHTML `NodeBuilder` content.
///
/// ### Examples:
/// Using a simple string:
/// ```swift
/// P("This is a paragraph.")
/// ```
///
/// Using a node builder:
/// ```swift
/// P {
///     "This is a paragraph with "
///     Strong("bold")
///     " content."
/// }
/// ```
///
/// - Note: When initialized with a string, the generic `Content` is constrained to `String`.
public struct P<Content>: Element where Content: Node {
    /// The inner content of the paragraph, conforming to `Node`.
    let content: Content

    /// Initializes a `<p>` with SwiftHTML nodes using a result builder.
    ///
    /// - Parameter content: A closure returning one or more SwiftHTML nodes.
    public init(@NodeBuilder content: () -> Content) {
        self.content = content()
    }

    /// Initializes a `<p>` with plain text.
    ///
    /// - Parameter text: A string to be wrapped inside the paragraph.
    public init(_ text: String) where Content == String {
        self.content = text
    }

    /// The body of the paragraph, used for rendering its content.
    public var body: some Node {
        content
    }
}
